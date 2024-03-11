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
};
use TCG\Voyager\Traits\Spatial;

class MainController extends Controller
{
    public function index() {
        $mainBlock = MainBlock::first();
        $secondaryBlocks = SecondaryBlock::all(); 
        $slider = Slider::all();
        $purchasingMethods = PurchasingMethod::all(); 
        $banner = Banner::first();

        return response(
            [
                'main_block' => $mainBlock,
                'secondary_blocks' => $secondaryBlocks,
                'slider' => $slider,
                'purchasing_methods' => $purchasingMethods,
                'banner' => $banner,
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
