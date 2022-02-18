<?php

use App\Http\Controllers\AdminController;
use App\Http\Controllers\CategoryController;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\OrdersController;
use App\Http\Controllers\ProductController;
/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/
Route::get('/', [CategoryController::class, 'last'])
    ->name('/');

Route::get('/category/{id}', [CategoryController::class, 'category']);

Route::get('/category/{id}/{page}', [CategoryController::class, 'category']);

Route::get('/last/{page}', [CategoryController::class, 'last'])
    ->name('last');

Route::get('/product/{id}', [ProductController::class, 'product'])
    ->name('product');

Route::post('/order', [OrdersController::class, 'order'])
    ->name('order');

Route::get('/orderlist', [OrdersController::class, 'orderlist'])
    ->name('orderlist');



Route::group(['middleware' => \App\Http\Middleware\AdminMiddleware::class], function () {
    Route::get('/admin', [AdminController::class, 'admin'])->name('admin');
    Route::get('/admin/categories', [AdminController::class, 'categories'])->name('admin.categories');
    Route::get('/admin/products', [AdminController::class, 'products'])->name('admin.products');
    Route::get('/admin/orders', [AdminController::class, 'orders'])->name('admin.orders');
    Route::post('/admin/saveCategory', [AdminController::class, 'saveCategory'])->name('admin.saveCategory');
    Route::post('/admin/addCategory', [AdminController::class, 'addCategory'])->name('admin.addCategory');
    Route::post('/admin/deleteCategory', [AdminController::class, 'deleteCategory'])->name('admin.deleteCategory');
    Route::post('/admin/saveProduct', [AdminController::class, 'saveProduct'])->name('admin.saveProduct');
    Route::post('/admin/addProduct', [AdminController::class, 'addProduct'])->name('admin.addProduct');
    Route::post('/admin/deleteProduct', [AdminController::class, 'deleteProduct'])->name('admin.deleteProduct');
    Route::post('/admin/saveEmail', [AdminController::class, 'saveEmail'])->name('admin.saveEmail');
});

require __DIR__.'/auth.php';
