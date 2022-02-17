<?php

namespace App\Http\Controllers;

use App\Models\Category;
use App\Models\Product;
use Illuminate\Http\Request;

class ProductController extends Controller
{
    public function product(Request $request)
    {
        $id = $request->id;
        $category = Category::query()->orderBy('name', 'DESC')->get();
        $product = Product::query()->find($id);

        return view('product', [
            'categories' => $category,
            'product' => $product
        ]);
    }
}
