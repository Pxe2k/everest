<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\{
    CommercialEstate,
    Complex,
    CommercialEstateAdvantage,

    Footer
};

class CommercialEstateController extends Controller
{
    public function getCommercialEstate(Request $request, CommercialEstate $commercialEstate) {
        $language = $request->header('Accept-Language');

        $commercialEstate = CommercialEstate::where('id', $commercialEstate->id)
        ->first();

        $commercialEstate->complex = Complex::where('id', $appartment->complex_id)
        ->first();

        $commercialEstate->complex->coordinates = $commercialEstate->complex->getCoordinates();

        $commercialEstate->complex->translate(); 
        $commercialEstate = $commercialEstate->translate($language);

        $advantages = CommercialEstateAdvantage::where('commercial_estate_id', $commercialEstate->id)
        ->get()
        ->translate($language);

        $liked = CommercialEstate::inRandomOrder()
        ->take(4)
        ->get()
        ->translate($language);

        $footer = Footer::first()
        ->translate($language);

        return response ([
            'commercial_estate' => $commercialEstate,
            'advantages' => $advantages,
            'liked' => $liked,
            'footer' => $footer
        ]);
    }

    public function allCommercialEstates(Request $request) {
        $language = $request->header('Accept-Language');

        $commercialEstates = CommercialEstate::query();

        if ($request->input('city_id') != null) {
            $commercialEstates->where('city_id', $request->input('city_id'));
        }
        if ($request->input('complex_id') != null) {
            $commercialEstates->where('complex_id', $request->input('complex_id'));
        }
        if ($request->input('quadrature_from') && $request->input('quadrature_to') != null) {
            $commercialEstates->whereBetween('quadrature', [$request->input('quadrature_from'), $request->input('quadrature_to')]);
        }
        if ($request->input('type') != null) {
            $commercialEstates->where('type', $request->input('type'));
        }
        $count = $commercialEstates->count();
        if ($request->input('commercial_estate_number') != null) {
            $commercialEstates->take($request->input('commercial_estate_number'));
        }

        $commercialEstates = $commercialEstates->get();

        foreach ($commercialEstates as $commercialEstate) {
            $commercialEstate->complex = Complex::where('id', $commercialEstate->complex_id)
            ->first();
    
            $commercialEstate->complex->coordinates = $appartment->complex->getCoordinates();
            $commercialEstate->complex = $appartment->complex->translate(); 
        }

        $commercialEstates = $commercialEstates->translate($language);
        $footer = Footer::first()->translate($language);

        return response ([
            'commercial_estates' => $commercialEstates,
            'counts' => $count,
            'footer' => $footer
        ]);
    }
}
