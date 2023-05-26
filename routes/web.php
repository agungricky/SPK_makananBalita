<?php

use App\Http\Controllers\wpController;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

Route::view('home', 'home')->name('home');
Route::get('formku', [wpController::class, 'index']);
Route::get('Form', [wpController::class, 'weightProduct'])->name('Form');
// Route::get('/menu/{paket_menu}', [wpController::class, 'show'])->name('menu');
Route::get('/menu/{paket_menu}', [wpController::class, 'show'])->name('menu');
