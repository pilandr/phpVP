<?php

namespace App\Http\Controllers;

use App\Mail\OrderShipped;
use App\Models\Category;
use App\Models\Setting;
use App\Models\User;
use Illuminate\Http\Request;
use App\Models\Orders;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Mail;

class OrdersController extends Controller
{

    public function order(Request $request)
    {
        $name = $request->name;
        $email = $request->email;
        $products_id = $request->products_id;

        if (!$email) {
            return $this->response(['error' => 'нет email']);
        } else {
            if (!filter_var($email, FILTER_VALIDATE_EMAIL)) {
                return $this->response(['error' => 'некорректный email']);
            }
        }

        if (!$name) {
            return $this->response(['error' => 'нет Имени']);
        }

        if (!$products_id) {
            return $this->response(['error' => 'нет Товара']);
        }

        if (Auth::check()) {
            $email = Auth::user()->email;
            $name= Auth::user()->name;
        } else {
            $emailUser = User::getByEmail($email);
            if ($emailUser) {
                return $this->response(['error' => 'Этот email занят. Авторизируйтесь']);
            }
            setcookie("email", $email, time()+3600*10);
        }

        $order = (new Orders([
            'name' => $name,
            'email' => $email,
            'products_id' => $products_id
        ]));
        $order->save();
        try {
            $setting = Setting::getByNameField('email');
            if ($setting) {
                Mail::to($setting->value)->send(new OrderShipped($order));
            }
        } catch (\Exception $e) {
            //
        }

        return $this->response(['result' => true]);
    }

    public function orderlist(Request $request)
    {
        $user = Auth::user();

        if (Auth::check()) {
            $orders = Orders::query()->where('email','=', $user->email)->orderBy('updated_at', 'DESC')->get();
        } elseif (!empty($_COOKIE['email'])) {
            $emailFromSession = $_COOKIE['email'];
            $orders = Orders::query()->where('email','=', $emailFromSession)->orderBy('updated_at', 'DESC')->get();
        } else {
            $orders = array();
        }

        if (!empty($orders)) {
            $sum = 0;
            foreach ($orders as $order) {
                $product = $order->product;
                $sum = $sum + $product->price;
            }
        } else $sum = 0;

        $category = Category::query()->orderBy('name', 'DESC')->get();


        return view('orders', [
            'categories' => $category,
            'orders' => $orders,
            'sum' => $sum,
            'countOrders' => OrdersController::countOrder()
        ]);
    }

    public function response(array $data)
    {
        header('Content-type: application/json');
        return json_encode($data);
    }

    static public function countOrder()
    {
        if (Auth::check()) {
            return Orders::query()->where('email','=', Auth::user()->email)->count();
        } elseif (!empty($_COOKIE['email'])) {
            return Orders::query()->where('email','=', $_COOKIE['email'])->count();
        } else return 0;
    }
}
