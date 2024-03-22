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

    AboutUsBanner,
    AboutUsBlock,
    AboutUsDescription,
    AboutUsAdvantage,
    AboutUsGeography,
    AboutUsGeographyDistrict,
    AboutUsCompany,
    Footer,
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

    public function office(Request $request) {
        $city = City::with('office')
        ->where('id', $request->input('city_id'))
        ->first();
        $sales = SalesDepartment::first();
        $helpline = Helpline::first();

        return response(
            [
                'cities' => $cities,
                'offices' => $offices,
                'sales' => $sales,
                'helpline' => $helpline,
            ], 200
        );
    }

    public function live() {
        $complexes = Complex::all()->whereNotNull('stream_link')->get();
        
        return response(
            [
                'complexes' => $complexes,
            ], 200
        );
    }

    public function aboutUs() {
        $banner = AboutUsBanner::first();
        $blocks = AboutUsBlock::all();
        $description = AboutUsDescription::all();
        $advantages = AboutUsAdvantages::all();
        $geography = AboutUsGeography::first();
        $district = AboutUsDistrict::all();
        $complexes = Complex::all()->where()->get();
        $company = AboutUsCompany::all();
        $footer = Footer::first();


        return response(
            [
                'banner' => $banner,
                'blocks' => $blocks,
                'description' => $description,
                'advantages' => $advantages,
                'geography' => $geography,
                'district' => $district,
                'complexes' => $complexes,
                'company' => $company,
                'footer' => $footer
            ], 200
        );
    }
}
