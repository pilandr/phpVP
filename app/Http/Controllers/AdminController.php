<?php

namespace App\Http\Controllers;

use App\Models\Category;
use App\Models\Product;

use App\Models\Orders;
use App\Models\Setting;
use Illuminate\Http\Request;


class AdminController extends Controller
{

    public function admin()
    {
        $setting = Setting::getByNameField('email');
        if (!$setting) {
            $email = '';
        } else {
            $email = $setting->value;
        }
        return view('admin.admin', [
            'email' => $email
        ]);
    }

    public function categories()
    {
        $category = Category::query()->orderBy('name', 'ASC')->get();
        return view('admin.categories',[
            'categories' => $category
        ]);
    }

    public function products()
    {
        $category = Category::query()->orderBy('name', 'ASC')->get();
        $products = Product::query()->orderBy('name', 'ASC')->get();
        return view('admin.products',[
            'categories' => $category,
            'products' => $products
        ]);
    }

    public function orders()
    {
        $orders = Orders::query()->orderBy('name', 'ASC')->get();
        return view('admin.orders',[
            'orders' => $orders
        ]);
    }

    public function saveEmail(Request $request)
    {
        $email = $request->email;

        if (!$email) {
            return $this->response(['error' => 'нет email']);
        } else {
            if (!filter_var($email, FILTER_VALIDATE_EMAIL)) {
                return $this->response(['error' => 'некорректный email']);
            }
        }

        $setting = Setting::getByNameField('email');
        if (!$setting) {
            $userData = [
                'name' => 'email',
                'value' => $email
            ];
            $setting = new Setting($userData);
            $setting->save();
            return $this->response(['result' => 'ok']);
        }

        $setting->value = $email;
        $setting->save();
        return $this->response(['result' => 'ok']);

    }

    public function addProduct()
    {
        $name = (string) $_POST['name'];
        $description = (string) $_POST['description'];
        $category = (int) $_POST['categories_id'];
        $price = (int) $_POST['price'];


        if (!$name) {
            return $this->response(['error' => 'Не задано имя']);
        }

        if (!$category) {
            return $this->response(['error' => 'Не задана категория']);
        }

        if (!$price) {
            return $this->response(['error' => 'Не задана цена']);
        }

        $image = 'default.jpg';

        if (isset($_FILES['image']['tmp_name'])) {
            $image = $this->loadFile($_FILES['image']['tmp_name']);
        }

        $userData = [
            'name' => $name,
            'description' => $description,
            'price' => $price,
            'categories_id' => $category,
            'photo' => $image
        ];



        $product = new Product($userData);
        $product->save();

        return $this->response(['result' => 'ok']);
    }

    public function loadFile(string $file)
    {
        if (file_exists($file)) {
            $image = $this->genFileName();
            move_uploaded_file($file,getcwd() . '/img/cover/' . $image);
            return $image;
        }
    }

    static private function genFileName()
    {
        return sha1(microtime(1) . mt_rand(1, 100000000)) . '.jpg';
    }

    public function deleteProduct()
    {
        $id = (int) $_POST['id'];

        $product = Product::query()->find($id);

        if (!$product) {
            return $this->response(['error' => 'нет такой категории']);
        }

        $product->delete();

        return $this->response(['result' => 'ok']);
    }

    public function saveProduct()
    {
        $id = (int) $_POST['id'];
        $name = (string) $_POST['name'];
        $description = (string) $_POST['description'];
        $category = (int) $_POST['categories_id'];
        $price = (int) $_POST['price'];

        $product = Product::query()->find($id);
        if (!$product) {
            return $this->response(['error' => 'Нет такого товара']);
        }

        if (!$name) {
            return $this->response(['error' => 'Не задано имя']);
        }

        if (!$category) {
            return $this->response(['error' => 'Не задана категория']);
        }

        if (!$price) {
            return $this->response(['error' => 'Не задана цена']);
        }

        if (isset($_FILES['image']['tmp_name'])) {
            $product->photo = $this->loadFile($_FILES['image']['tmp_name']);
        }

        $product->name = $name;
        $product->description = $description;
        $product->categories_id = $category;
        $product->price = $price;

        $product->save();

        return $this->response(['result' => 'ok']);
    }

        public function addCategory()
    {
        $name = (string) $_POST['name'];
        $description = (string) $_POST['description'];

        if (!$name) {
            return $this->response(['error' => 'Не задано имя']);
        }

        /** @var Category $nameUser */
        $nameCategory = Category::getByName($name);
        if ($nameCategory) {
            return $this->response(['error' => 'Эта категория уже есть']);
        }

        $userData = [
            'name' => $name,
            'description' => $description,
        ];
        $category = new Category($userData);
        $category->save();

        return $this->response(['result' => 'ok']);

    }


    public function saveCategory()
    {
        $id = (int) $_POST['id'];
        $name = (string) $_POST['name'];
        $description = (string) $_POST['description'];

        $category = Category::query()->find($id);
        if (!$category) {
            return $this->response(['error' => 'no category']);
        }

        if (!$name) {
            return $this->response(['error' => 'no name']);
        }

        $category->name = $name;
        $category->description = $description;

        /** @var Category $nameUser */
        $nameUser = Category::getByName($name);
        if ($nameUser && $nameUser->id != $id) {
            return $this->response(['error' => 'Эта категория уже есть']);
        }

        $category->save();

        return $this->response(['result' => 'ok']);

    }

    public function deleteCategory()
    {
        $id = (int) $_POST['id'];

        $category = Category::query()->find($id);

        if (!$category) {
            return $this->response(['error' => 'нет категории']);
        }

        $category->delete();

        return $this->response(['result' => 'ok']);
    }

    public function response(array $data)
    {
        header('Content-type: application/json');
        return json_encode($data);
    }
}
