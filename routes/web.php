<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\LocalizationController;
use App\Http\Controllers\LoginController;

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
    return view('auth.login');
});

Route::post("signin", [LoginController::class, "signin"])->name("signin");

Route::get('lang/{locale}', [App\Http\Controllers\LocalizationController::class, 'index']);

Route::middleware(['auth:sanctum', 'verified'])->get('dashboard', [App\Http\Controllers\HomeController::class, 'index'])->name('dashboard');

Route::middleware(['auth:sanctum', 'verified'])->resource('roles', RoleController::class);

Route::middleware(['auth:sanctum', 'verified'])->resource('users', UserController::class);

Route::middleware(['auth:sanctum', 'verified'])->get('/signout', [LoginController::class, 'signout'])->name("signout");

Route::middleware(['auth:sanctum', 'verified'])->get('general', [App\Http\Controllers\UserController::class, 'general'])->name('general');

Route::middleware(['auth:sanctum', 'verified'])->get('death', [App\Http\Controllers\UserController::class, 'death'])->name('death');

Route::middleware(['auth:sanctum', 'verified'])->get('medical', [App\Http\Controllers\UserController::class, 'medical'])->name('medical');

Route::middleware(['auth:sanctum', 'verified'])->get('blood_donation', [App\Http\Controllers\UserController::class, 'blood_donation'])->name('blood_donation');






