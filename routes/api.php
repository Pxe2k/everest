<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

use App\Http\Controllers\{
    MainController,
    ComplexController,
    AppartmentController,
    ApplicationController,
    CommercialEstateController
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
    Route::get('/footer', [MainController::class, 'footer']);
    Route::get('/mortgage', [MainController::class, 'mortgage']);
    Route::get('/office', [MainController::class, 'office']);
    Route::get('/live', [MainController::class, 'live']);
    Route::get('/about-us', [MainController::class, 'aboutUs']);
    Route::get('/commercial-estate', [MainController::class, 'commercialEstate']);
    Route::get('/news', [MainController::class, 'news']);
    Route::get('/news/{news}', [MainController::class, 'getNews']);
});

Route::group(['prefix' => 'catalog'], function() {
    Route::get('/complex/{complex}', [ComplexController::class, 'getComplex']);
    Route::get('/complexes', [ComplexController::class, 'allComplexes']);

    Route::get('/appartment/{appartment}', [AppartmentController::class, 'getAppartment']);
    Route::get('/appartments', [AppartmentController::class, 'allAppartments']);

    Route::get('/commercial-estate/{commercial_estate}', [CommercialEstateController::class, 'getCommercialEstate']);
    Route::get('/commercial-estates', [CommercialEstateController::class, 'allCommercialEstates']);

    Route::get('/integration', [ComplexController::class, 'integration']);
    Route::get('/integration/property', [ComplexController::class, 'integrationProperty']);
    Route::get('/integration/search', [ComplexController::class, 'integrationSearch']);
    Route::get('/integration/get-properties', [AppartmentController::class, 'searchProperties']);
    Route::get('/integration/get-render', [ComplexController::class, 'integrationRender']);
    Route::get('/integration/get-house', [ComplexController::class, 'getProfitBaseHouse']);


});

Route::post('/application', [ApplicationController::class, 'createApplication']);
