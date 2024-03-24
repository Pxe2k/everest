<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\{
    Appartment,
    AppartmentAdvantage,
    Footer,
};

class AppartmentController extends Controller
{
    public function getAppartment(Request $request, Appartment $appartment) {
        $language = $request->header('Accept-Language');

        $appartment = Appartment::with('complex')
        ->where('id', $appartment->id)
        ->first()
        ->translate($language);

        $advantages = AppartmentAdvantage::where('appartment_id', $appartment->id)
        ->get();

        $footer = Footer::first()->translate($language);

        return response ([
            'appartment' => $appartment,
            'advantages' => $advantages,
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
        if ($request->input('appartments_number') != null) {
            $appartments->take($request->input('appartments_number'));
        }

        $appartments = $appartments->get()->translate($language);
        $count = $appartments->count();
        $footer = Footer::first()->translate($language);

        return response ([
            'appartments' => $appartments,
            'counts' => $count,
            'footer' => $footer
        ]);
    }
}
