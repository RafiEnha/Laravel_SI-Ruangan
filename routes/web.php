<?php

use App\Http\Controllers\Auth\LoginController;
use App\Http\Controllers\RuangController;
use App\Http\Controllers\Laporan1Controller;
use App\Http\Controllers\Laporan2Controller;
use App\Http\Controllers\Laporan3Controller;
use Illuminate\Support\Facades\Route;

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


//CRUD
Route::get('/ruang',[RuangController::class, 'index'])->name('ruang');
Route::get('/tambahruang',[RuangController::class, 'tambahruang'])->name('tambahruang');
Route::post('/insertdata',[RuangController::class, 'insertdata'])->name('insertdata');
Route::get('/tampilkandata/{id}',[RuangController::class, 'tampilkandata'])->name('tampilkandata');
Route::post('/updatedata/{id}',[RuangController::class, 'updatedata'])->name('updatedata');
Route::get('/delete/{id}',[RuangController::class, 'delete'])->name('delete');

Route::get('/laporan1/1',[Laporan1Controller::class, 'index'])->name('laporan1');
Route::get('/tambahlaporan1/1',[Laporan1Controller::class, 'tambahruang'])->name('tambahruang');
Route::post('/insertdata1/1',[Laporan1Controller::class, 'insertdata'])->name('insertdata');
Route::get('/tampilkandata1/1/{id}',[Laporan1Controller::class, 'tampilkandata'])->name('tampilkandata');
Route::post('/updatedata1/1/{id}',[Laporan1Controller::class, 'updatedata'])->name('updatedata');
Route::get('/delete1/1/{id}',[Laporan1Controller::class, 'delete'])->name('delete');
Route::get('/grafik1/1',[Laporan1Controller::class, 'grafik'])->name('grafik');

Route::get('/laporan1/2',[Laporan2Controller::class, 'index'])->name('laporan2');
Route::get('/tambahlaporan1/2',[Laporan2Controller::class, 'tambahruang'])->name('tambahruang');
Route::post('/insertdata1/2',[Laporan2Controller::class, 'insertdata'])->name('insertdata');
Route::get('/tampilkandata1/2/{id}',[Laporan2Controller::class, 'tampilkandata'])->name('tampilkandata');
Route::post('/updatedata1/2/{id}',[Laporan2Controller::class, 'updatedata'])->name('updatedata');
Route::get('/delete1/2/{id}',[Laporan2Controller::class, 'delete'])->name('delete');
Route::get('/grafik1/2',[Laporan2Controller::class, 'grafik'])->name('grafik');

Route::get('/laporan1/3',[Laporan3Controller::class, 'index'])->name('laporan3');
Route::get('/tambahlaporan1/3',[Laporan3Controller::class, 'tambahruang'])->name('tambahruang');
Route::post('/insertdata1/3',[Laporan3Controller::class, 'insertdata'])->name('insertdata');
Route::get('/tampilkandata1/3/{id}',[Laporan3Controller::class, 'tampilkandata'])->name('tampilkandata');
Route::post('/updatedata1/3/{id}',[Laporan3Controller::class, 'updatedata'])->name('updatedata');
Route::get('/delete1/3/{id}',[Laporan3Controller::class, 'delete'])->name('delete');
Route::get('/grafik1/3',[Laporan3Controller::class, 'grafik'])->name('grafik');

Route::get('/login',[LoginController::class, 'login'])->name('login');
Route::get('/register',[LoginController::class, 'register'])->name('register');
Route::post('/registeruser',[LoginController::class, 'registeruser'])->name('registeruser');
Route::post('/loginproses',[LoginController::class, 'loginproses'])->name('loginproses');
Route::get('/logout',[LoginController::class, 'logout'])->name('logout');