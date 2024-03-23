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

class ComplexController extends Controller
{
    public function getComplex(Complex $complex, Request $request) {
        $language = $request->header('Accept-Language');
        
        $rooms = $request->input('rooms');
        $settlementYear = $request->input('settlement_year');

        $complexWithInfo = Complex::with('complexAdvantage', 'complexPeculiarity')
        ->where('id', $complex->id)
        ->first()
        ->translate($language);

        $offices = Office::where('city_id', $complexWithInfo->city_id)->translate($language);
        foreach ($offices as $office) {
            $office->coordinates = $office->getCoordinates();
        }

        $footer = Footer::first()->translate($language);

        return response()->json([
            'complex' => $complexWithInfo,
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
    
        $count = $complexes->count();
    
        $footer = Footer::first();

        return response()->json([
            'complexes' => $complexes,
            'counts' => $count,
            'footer' => $footer
        ]);
    }
}
