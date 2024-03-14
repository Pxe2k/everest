<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Models\{
    Complex,
    ComplexAdvantage,
    ComplexPeculiarity,

    Office,
};

class ComplexController extends Controller
{
    public function getComplex(Complex $complex, Request $request) {
        $rooms = $request->input('rooms');
        $settlementYear = $request->input('settlement_year');

        $complexWithInfo = Complex::with('complexAdvantage', 'complexPeculiarity')
        ->where('id', $complex->id)
        ->first();

        $offices = Office::all();
        foreach ($offices as $office) {
            $office->coordinates = "";
        };

        return response()->json([
            'complex' => $complexWithInfo,
            'offices' => $offices,
        ]);
    }

    public function allComplexes(Request $request) {
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
    
        return response()->json([
            'complexes' => $complexes,
            'counts' => $count,
        ]);
    }
}
