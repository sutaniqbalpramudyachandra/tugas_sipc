<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\AuthController;
use App\Http\Controllers\ProdukController;
use App\Http\Controllers\ClientProdukController;
use App\Http\Controllers\UserController;
use App\Http\Controllers\KategoriController;
use App\Http\Controllers\SettingController;

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
// Route::get('/',function(){
//     return view('welcome');
// }
Route::prefix('admin')->group(function(){
            Route::get('beranda', [HomeController::class, 'showBeranda']);
            Route::get('beranda/{status}', [HomeController::class, 'showBeranda']);
            Route::post('produk/filter', [ProdukController::class, 'filter']);
            Route::resource('produk', ProdukController::class);
            Route::resource('user', UserController::class);
            Route::resource('kategori', KategoriController::class);


});
 


    //login Admin
Route::get('login', [AuthController::class, 'showLoginAdmin'])->name('login');
Route::post('login', [AuthController::class, 'loginProcess']);
Route::get('logout', [AuthController::class, 'logout']);

//customer
Route::get('/', [ClientProdukController::class, 'index']);
Route::get('home', [ClientProdukController::class, 'index']);
Route::get('produk', [ClientProdukController::class, 'showProduk']);
Route::get('produk_single/{produk}', [ClientProdukController::class, 'show']);
Route::get('filter', [ClientProdukController::class, 'filter']);


Route::get('kontak', function () {
    return view('customer.kontak');
});

Route::get('login', function () {
    return view('admin.login');
});

Route::get('admin/beranda', function () {
    return view('admin.beranda');
});


Route::get('logout', function () {
    return view('admin.login');
});

Route::get('test-Collection', [HomeController:: class, 'testCollection']);

// wilayah - ajax
Route::get('test-ajax', [HomeController:: class, 'testAjax']);

// Setting
Route::get('setting', [SettingController::class, 'index']);
Route::post('setting', [SettingController::class, 'store']);

