<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

use App\Http\Controllers\{
    MainController,
    ComplexController,
    AppartmentController,
};

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "api" middleware group. Make something great!
|
*/

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});

Route::group(['prefix' => 'page'], function() {
    Route::get('/main', [MainController::class, 'index']);
    Route::get('/mortgage', [MainController::class, 'mortgage']);
    Route::get('/office', [MainController::class, 'office']);
});

Route::group(['prefix' => 'catalog'], function() {
    Route::get('/complex/{complex}', [ComplexController::class, 'getComplex']);
    Route::get('/complexes', [ComplexController::class, 'allComplexes']);

    Route::get('/appartment/{appartment}', [AppartmentController::class, 'getAppartment']);
    Route::get('/appartments', [AppartmentController::class, 'allAppartments']);
});
