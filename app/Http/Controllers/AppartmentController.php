<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\{
    Complex,
    Appartment,
    AppartmentAdvantage,
    Footer,
};

use Illuminate\Support\Facades\Http;

class AppartmentController extends Controller
{
    public function getAppartment(Request $request, Appartment $appartment) {
        $language = $request->header('Accept-Language');

        $appartment = Appartment::where('id', $appartment->id)
        ->first();

        $appartment->complex = Complex::where('id', $appartment->complex_id)
        ->first();

        $appartment->complex->coordinates = $appartment->complex->getCoordinates();

        $appartment->complex->translate(); 
        $appartment = $appartment->translate($language);

        $advantages = AppartmentAdvantage::where('appartment_id', $appartment->id)
        ->get()
        ->translate($language);

        $liked = Appartment::inRandomOrder()
        ->take(4)
        ->get()
        ->translate($language);

        $footer = Footer::first()
        ->translate($language);

        return response ([
            'appartment' => $appartment,
            'advantages' => $advantages,
            'liked' => $liked,
            'footer' => $footer
        ]);
    }

    public function allAppartments(Request $request) {
        $language = $request->header('Accept-Language');

        $appartments = Appartment::query();

        if ($request->input('city_id') != null) {
            $appartments->where('city_id', $request->input('city_id'));
        }
        if ($request->input('complex_id') != null) {
            $appartments->where('complex_id', $request->input('complex_id'));
        }
        if ($request->input('quadrature_from') && $request->input('quadrature_to') != null) {
            $appartments->whereBetween('quadrature', [$request->input('quadrature_from'), $request->input('quadrature_to')]);
        }
        if ($request->input('rooms') != null) {
            $appartments->where('rooms', $request->input('rooms'));
        }
        if ($request->input('type') != null) {
            $appartments->where('type', $request->input('type'));
        }
        $count = $appartments->count();
        if ($request->input('appartments_number') != null) {
            $appartments->take($request->input('appartments_number'));
        }

        $appartments = $appartments->get();

        foreach ($appartments as $appartment) {
            $appartment->complex = Complex::where('id', $appartment->complex_id)
            ->first();
    
            $appartment->complex->coordinates = $appartment->complex->getCoordinates();
            $appartment->complex = $appartment->complex->translate(); 
        }

        $appartments = $appartments->translate($language);
        $footer = Footer::first()->translate($language);

        return response ([
            'appartments' => $appartments,
            'counts' => $count,
            'footer' => $footer
        ]);
    }

    public function searchProperties(Request $request) {
        $url = 'https://pb14886.profitbase.ru/api/v4/json';
        $response = Http::post($url.'/authentication',
            [
                "type" => "api-app",
                "credentials" =>  [
                    "pb_api_key" => "app-66445500837ba"
            ]]);
        $posts = $response->json();
        $token = $posts['access_token'];
        $searchString = '';
        if ($request->projectId) {
            $searchString .= '&projectId='.$request->projectId;
        }
        if ($request->area['min']) {
            $searchString .= '&area[min]='.$request->area['min'];
        }
        if ($request->area['max']) {
            $searchString .= '&area[max]='.$request->area['max'];
        }
        if ($request->rooms) {
            $rooms = explode(',', $request->rooms);
            foreach ($rooms as $room) {
              $searchString .= '&rooms[]='.$room;
            }
        }
        if ($request->status) {
            $searchString .= '&status[]='.$request->status;
        }
        $response = Http::get($url. '/property?access_token='.$token.'&full=true&limit='.$request->limit . '&offset=' . $request->offset . $searchString);
        if (isset($response['data'])) {
        return $response['data'];
        }
        return [];
    }
}
