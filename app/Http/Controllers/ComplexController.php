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

        // $complex->translate($language);
        // $complex->complex_advantage->translate($language);
        // $complex->complex_peculiarity->translate($language);
        // $offices->translate($language);
        $footer = Footer::first();
        // ->translate($language);

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
        if ($rooms !== null) {
            $complexes->whereHas('apartments', function ($query) use ($rooms) {
                $query->where('rooms', $rooms);
            });
        }
    
        $cityId = $request->input('city_id');
        if ($cityId !== null) {
            $complexes->where('city_id', $cityId);
        }
    
        $type = $request->input('type');
        if ($type !== null) {
            $complexes->whereHas('apartments', function ($query) use ($type) {
                $query->where('type', $type);
            });
        }

        $complexes = $complexes->with(['apartments' => function ($query) use ($rooms) {
            if ($rooms !== null) {
                $query->where('rooms', $rooms);
            }
        }])->has('apartments')->get();
    
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
}
