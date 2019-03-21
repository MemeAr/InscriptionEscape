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

Route::get('/', function () {
    return view('auth/register');
});

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');

Route::get('/message', function(){
    return view('/message');
});

Route::get('/users', 'UsersController@getAllUsers');

Route::get('/triusers', 'UsersController@triUsers');

Route::get('/test', 'TeamsController@create');

Route::get('/', 'SessionsController@index');
