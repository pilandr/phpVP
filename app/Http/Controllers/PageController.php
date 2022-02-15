<?php

namespace App\Http\Controllers;

use App\Models\Category;
use App\Models\Product;
use Illuminate\Http\Request;

class PageController extends Controller
{
    /**
     * Display the main view.
     *
     * @return \Illuminate\View\View
     */
    public function start()
    {
        $category = Category::query()->orderBy('name', 'DESC')->get();
        $products6 = Product::query()->orderBy('id', 'DESC')->paginate(6);
        return view('welcome', ['categories' => $category, 'products' => $products6]);
    }

    public function category(Request $request)
    {
        $category = Category::query()->orderBy('name', 'DESC')->get();
        $curCategory = Category::query()->find($request->id);
        $products6 = Product::query()->where('categories_id','=', $request->id)->orderBy('id', 'DESC')->paginate(6);
        return view('welcome', ['categories' => $category, 'products' => $products6, 'curCategory' => $curCategory]);
    }
}
