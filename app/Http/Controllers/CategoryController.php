<?php

namespace App\Http\Controllers;

use App\Models\Category;
use App\Models\Product;
use Illuminate\Http\Request;

class CategoryController extends Controller
{
    const COUNT_ON_PAGE = 6;
    /**
     * Display the main view.
     *
     * @return \Illuminate\View\View
     */

    public function category(Request $request)
    {
        $page = $request->page;
        $category = Category::query()->orderBy('name', 'DESC')->get();
        $curCategory = Category::query()->find($request->id);

        $productsCount = Product::query()->where('categories_id','=', $request->id)->count();
        $paginateCount = ceil($productsCount / CategoryController::COUNT_ON_PAGE);

        if (empty($page)) {
            $products6 = Product::query()->where('categories_id','=', $request->id)->orderBy('id', 'DESC')->paginate(6);
            $page = 1;
            $prev = 1;
            $next = ($page == $paginateCount) ? $paginateCount : $page + 1;;
        } else {
            $products6 = Product::query()
                ->where('categories_id','=', $request->id)
                ->offset(($page - 1) * CategoryController::COUNT_ON_PAGE)
                ->limit(6)->orderBy('id', 'DESC')
                ->get();
            $prev = ($page == 1) ? 1 : $page - 1;
            $next = ($page == $paginateCount) ? $paginateCount : $page + 1;
        }

        $paginator = [
            'count' => $paginateCount,
            'active' => $page,
            'prev' => $prev,
            'next' => $next
        ];

        return view('products', [
            'categories' => $category,
            'products' => $products6,
            'curCategory' => $curCategory,
            'paginator' => $paginator,
            'countOrders' => OrdersController::countOrder()
        ]);
    }

    public function last(Request $request)
    {
        $page = $request->page;
        $category = Category::query()->orderBy('name', 'DESC')->get();
        $productsCount = Product::query()->count();
        $paginateCount = ceil($productsCount / CategoryController::COUNT_ON_PAGE);

        if (empty($page)) {
            $products6 = Product::query()->orderBy('id', 'DESC')->paginate(6);
            $page = 1;
            $prev = 1;
            $next = ($page == $paginateCount) ? $paginateCount : $page + 1;
        } else {
            $products6 = Product::query()->offset(($page - 1) * CategoryController::COUNT_ON_PAGE)->limit(6)->orderBy('id', 'DESC')->get();
            $prev = ($page == 1) ? 1 : $page - 1;
            $next = ($page == $paginateCount) ? $paginateCount : $page + 1;
        }

        $paginator = [
            'count' => $paginateCount,
            'active' => $page,
            'prev' => $prev,
            'next' => $next
        ];

        return view('products', [
            'categories' => $category,
            'products' => $products6,
            'paginator' => $paginator,
            'countOrders' => OrdersController::countOrder()
        ]);
    }
}
