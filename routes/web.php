<?php

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

use Illuminate\Support\Facades\Route;

Route::get('/', function () {
    return view('home');
})->name('home');

Route::get('/demo', function () {
    return view('demo');
})->name('demo');

Route::get('/news', function () {
    return view('news');
})->name('news');

Route::get('/admin', function () {
    return view('admin');
})->name('admin');
