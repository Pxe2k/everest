<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Models\{
    Complex,
    ComplexAdvantage,
    ComplexPeculiarity,

    Office,
    Footer,
};
use TCG\Voyager\Traits\Spatial;

class ComplexController extends Controller
{
    public function getComplex(Complex $complex, Request $request) {
        $language = $request->header('Accept-Language');
        
        $rooms = $request->input('rooms');
        $settlementYear = $request->input('settlement_year');

        $complex = Complex::where('id', $complex->id)
        ->first();

        $complex->complex_advantage = ComplexAdvantage::where('complex_id', $complex->id)
        ->get();

        $complex->complex_peculiarity = ComplexPeculiarity::where('complex_id', $complex->id)
        ->get();

        $complex->coordinates = $complex->getCoordinates();
        
        $offices = Office::where('city_id', $complex->city_id)->get();
        foreach ($offices as $office) {
           $office->coordinates = $office->getCoordinates();
        }

        $complex = $complex->translate($language);
        $complex->complex_advantage = $complex->complex_advantage->translate($language);
        $complex->complex_peculiarity = $complex->complex_peculiarity->translate($language);
        $offices = $offices->translate($language);
        $footer = Footer::first()
        ->translate($language);

        return response()->json([
            'complex' => $complex,
            'offices' => $offices,
            'footer' => $footer
        ]);
    }

    public function allComplexes(Request $request) {
        $language = $request->header('Accept-Language');
    
        $complexes = Complex::query();
    
        $rooms = $request->input('rooms');
        $apartmentsType = $request->input('apartments_type');
    
        if ($rooms !== null || $apartmentsType !== null) {
            $complexes->whereHas('apartments', function ($query) use ($rooms, $apartmentsType) {
                if ($rooms !== null) {
                    $query->where('rooms', $rooms);
                }
                if ($apartmentsType !== null) {
                    $query->where('type', $apartmentsType);
                }
            });
        }
    
        $cityId = $request->input('city_id');
        if ($cityId !== null) {
            $complexes->where('city_id', $cityId);
        }
    
        $type = $request->input('type');
        if ($type !== null) {
            $complexes->where('type', $type);
        }
    
        $complexes = $complexes->with(['apartments' => function ($query) use ($rooms, $apartmentsType) {
            if ($rooms !== null) {
                $query->where('rooms', $rooms);
            }
            if ($apartmentsType !== null) {
                $query->where('type', $apartmentsType);
            }
        }])->get();
    
        foreach ($complexes as $complex) {
            $complex->coordinates = $complex->getCoordinates();
        }
    
        $count = $complexes->count();
        $footer = Footer::first();
    
        return response()->json([
            'complexes' => $complexes,
            'counts' => $count,
            'footer' => $footer
        ]);
    }
    
    public function integration(Request $request) {
        //      получить токен
        $url = 'https://pb14886.profitbase.ru/api/v4/json';
        $response = Http::post($url.'/authentication',
            [
                "type" => "api-app",
                "credentials" =>  [
                    "pb_api_key" => "app-66445500837ba"
            ]]);
        $posts = $response->json();
//      Токен
        $token = $posts['access_token'];

        $apartmentData = null;

        $projectID = $request->input('city_id');

        $responseHouses = Http::get($url. '/house?access_token='.$token.'&projectId='.$projectID);
        $houses = $responseHouses->json();
        foreach ($houses['data'] as $house) {
            $apartmentData['houses'][$house['id']] = $house;
            $responseProperty = Http::get($url. '/property?access_token='.$token.'&full=false&houseId='.$house['id']);
            $apartmentData['houses'][$house['id']]['property'] = $responseProperty['data'];
            $responseProperty = Http::get($url. '/board?access_token='.$token.'&houseId='.$house['id']);
            $apartmentData['houses'][$house['id']]['board'] = $responseProperty->json();
        }
        return ($apartmentData);
    }
}
