<?php

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

Route::get('/','ServisController@home');

Route::get('/login', 'AuthController@login')->name('login');
Route::post('/postlogin', 'AuthController@postlogin');
Route::get('/logout', 'AuthController@logout');
    
    //ROLE ADMIN, PELANGGAN
    Route::group(['middleware' => ['auth', 'checkRole:admin,pelanggan']], function()
    {
        Route::get('/abc','ServisController@abc');//INDEX ADMIN DAN PELANGGAN
        Route::get('/servis/index','ServisController@index');//INDEX ADMIN DAN PELANGGAN
    });
    
    //ROLE : ADMIN
    Route::group(['middleware' => ['auth', 'checkRole:admin']], function()
    {
        Route::get('/servis/export', 'ServisController@export');
        Route::post('/servis/import_excel', 'ServisController@import_excel');
        Route::get('/servis/admin/dtl_servis/{id}','ServisController@dtl_servis_admin');
        Route::post('/servis/admin/dtl_servis/{id}', 'ServisController@insertKomentarAdmin')->name('insertKomentar');
    });

    //ROLE : PELANGGAN
    Route::group(['middleware' => ['auth', 'checkRole:pelanggan']], function()
    {
        Route::get('/servis/user/history', 'ServisController@history');
        Route::get('/servis/user/{id}/dtl_servis', 'ServisController@dtl_servis_pelanggan');
        Route::post('/servis/user/{id}/dtl_servis', 'ServisController@insertKomentarPelanggan')->name('insertKomentar');
    });
    