<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\{
    Appartment,
};

class AppartmentController extends Controller
{
    public function getAppartment(Appartment $appartment) {
        $appartment = Appartment::with('complex')
        ->where('id', $appartment->id)
        ->first();

        return response ([
            'appartment' => $appartment
        ]);
    }

    public function allAppartments(Request $request) {
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

        $appartments = $appartments->get();
        $count = $appartments->count();

        return response ([
            'appartments' => $appartments,
            'counts' => $count,
        ]);
    }
}
