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
use Illuminate\Support\Facades\Http;

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

        $projectID = $request->input('project_id');

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

  public function getProfitBaseHouse(Request $request) {
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

        $houseID = $request->input('house_id');
        $responseHouse = Http::get($url . '/house?access_token='.$token . '&id=' . $houseID);
        $responseProperty = Http::get($url. '/property?access_token='.$token.'&full=false&houseId='.$houseID);
        $responseBoard = Http::get($url. '/board?access_token='.$token.'&houseId='.$houseID);
	$data = $responseHouse->json()['data'][0];
        $data['board'] = $responseBoard->json();
        $data['property'] = $responseProperty->json()['data'];
        return $data;
    }

    public function integrationRender(Request $request) {
        $url = 'https://pb14886.profitbase.ru/api/v4/json';
        $response = Http::post($url.'/authentication',
            [
                "type" => "api-app",
                "credentials" =>  [
                    "pb_api_key" => "app-66445500837ba"
            ]]);
        $posts = $response->json();
        $projectID = $request->input('project_id');
        $token = $posts['access_token'];
        $renderResponse = Http::get($url. '/render?access_token='.$token.'&projectId='.$projectID);
        return $renderResponse->json();
    }

    public function integrationSearch(Request $request) {
    // Get the parameters from the request
    $params = $request->input('params');

    // Set the URL for the API endpoint
    $url = 'https://pb14886.profitbase.ru/api/v4/json';

    // Perform authentication to get the access token
    $responseAuth = Http::post($url.'/authentication', [
        "type" => "api-app",
        "credentials" => [
            "pb_api_key" => "app-66445500837ba"
        ]
    ]);
    $posts = $responseAuth->json();
    // Get the access token
    $token = $posts['access_token'];

    $apartmentData = null;

    // Make the request to get the houses data with the provided parameters
    $responseHouses = Http::get($url . '/property', [
        'access_token' => $token,
        'params' => $params // Assuming params is an array or string containing parameters
    ]);
    $houses = $responseHouses->json();

    // Iterate through each house and fetch additional data
    foreach ($houses['data'] as $house) {
        $apartmentData['houses'][$house['id']] = $house;
        
        // Get property data for the current house
        $responseProperty = Http::get($url . '/property', [
            'access_token' => $token,
            'full' => 'false',
            'houseId' => $house['id']
        ]);
        $apartmentData['houses'][$house['id']]['property'] = $responseProperty->json()['data'];
        
        // Get board data for the current house
        $responseBoard = Http::get($url . '/board', [
            'access_token' => $token,
            'houseId' => $house['id']
        ]);
        $apartmentData['houses'][$house['id']]['board'] = $responseBoard->json();
    }

    // Return the fetched data
    return $apartmentData;
}

    public function integrationProperty(Request $request) {
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

        $propertyID = $request->input('property_id');

        $responseAppartment = Http::get($url. '/property?access_token='.$token.'&id='.$propertyID.'&full=true');
        $appartment = $responseAppartment->json()['data'][0];
        $responseAppartments = Http::get($url . '/property?full=true&status[]=AVAILABLE&status[]=BOOKED&rooms[0]='.$appartment['rooms_amount'].'&access_token='.$token.'&limit=3&houseId='.$appartment['house_id']);
        $house = Http::get($url . '/house?access_token='.$token.'&id='.$appartment['house_id']);
        $projectID = intval($house['data'][0]['projectId']);
        $project = Complex::where('project_id', $projectID)->first();
        return [
            'appartment' => $appartment,
            'similar' => $responseAppartments->json()['data'],
            'projectID' => $project->id
        ];
    }
}
