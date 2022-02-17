<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\PageController;
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

//Route::get('/', function () {
//    return view('welcome');
//});

Route::get('/', [PageController::class, 'last'])
    ->name('/');

Route::get('/page/category/{id}', [PageController::class, 'category'])
    ->name('page.category');

Route::get('/page/category/{id}/{page}', [PageController::class, 'category'])
    ->name('page.category');

Route::get('/page/last/{page}', [PageController::class, 'last'])
    ->name('page.last');

Route::get('/product/{id}', [ProductController::class, 'product'])
    ->name('product');

Route::post('/order', [OrdersController::class, 'order'])
    ->name('order');

Route::get('/orderlist', [OrdersController::class, 'orderlist'])
    ->name('orderlist');

//Route::get('/dashboard', function () {
//    return view('dashboard');
//})->middleware(['auth'])->name('dashboard');

require __DIR__.'/auth.php';
