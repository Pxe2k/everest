<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Models\Application;

class ApplicationController extends Controller
{
    public function createApplication(Request $request) {
        $fields = $request->validate([
            'phone_number' => 'required|string',
            'page' => 'string',
            'text' => 'sometimes|string',
        ]);

        $application = Application::create([
            'phone_number' => $fields['phone_number'],
            'page' =>  $fields['page'],
            'text' => $fields['text'] ?? null,
        ]);

        return response([
            'application' => $application
        ], 201);
    }
}
