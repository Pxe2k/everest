<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\{
    MainBlock,
    SecondaryBlock,
    Slider,
    PurchasingMethod,
    Banner,

    MortgageBanner,
    MortgageAdvantage,
    MortgageStep,

    City,
    Office,
    SalesDepartment,
    Helpline,

    Complex,
};
use TCG\Voyager\Traits\Spatial;

class MainController extends Controller
{
    public function index(Request $request) {
        $mainBlock = MainBlock::first();
        $secondaryBlocks = SecondaryBlock::all(); 
        $slider = Slider::all();
        $purchasingMethods = PurchasingMethod::all(); 
        $banner = Banner::first();
        $complexes = Complex::query();

        if ($request->input('city_id') != null) {
            $complexes->where('city_id', $request->input('city_id'));
        }

        $complexes = $complexes->get();

        // TODO: get only one image
        // foreach ($results as $result) {
        //     $jsonString = $result->image;
        //     $imageArray = json_decode($jsonString, true);

        //     dd($jsonString);
        //     $result->image = $imageArray[0];
        // }


        return response(
            [
                'main_block' => $mainBlock,
                'secondary_blocks' => $secondaryBlocks,
                'slider' => $slider,
                'purchasing_methods' => $purchasingMethods,
                'banner' => $banner,
                'complexes' => $complexes,
            ], 200
        );
    }

    public function mortgage () {
        $banner = MortgageBanner::first();
        $advantages = MortgageAdvantage::all();
        $steps = MortgageStep::all();

        return response(
            [
                'banner' => $banner,
                'advantages' => $advantages,
                'steps' => $steps,
            ], 200
        );
    }

    public function office() {
        $cities = City::all();
        $offices = Office::all();
        $sales = SalesDepartment::first();
        $helpline = Helpline::first();

        foreach ($offices as $office) {
            $office->coordinates = "";
        };

        return response(
            [
                'cities' => $cities,
                'offices' => $offices,
                'sales' => $sales,
                'helpline' => $helpline,
            ], 200
        );
    }
}
