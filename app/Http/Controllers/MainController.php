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
        $language = $request->header('Accept-Language');

        $mainBlock = MainBlock::first()->translate($language);
        $secondaryBlocks = SecondaryBlock::all()->translate($language); 
        $slider = Slider::all()->translate($language);
        $purchasingMethods = PurchasingMethod::all()->translate($language); 
        $banner = Banner::first()->translate($language);
        $complexes = Complex::query();

        if ($request->input('city_id') != null) {
            $complexes->where('city_id', $request->input('city_id'));
        }
        $complexes = $complexes->get()->translate($language);
        $footer = Footer::first()->translate($language);

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
                'footer' => $footer
            ], 200
        );
    }

    public function mortgage () {
        $language = $request->header('Accept-Language');

        $banner = MortgageBanner::first()->translate($language);
        $advantages = MortgageAdvantage::all()->translate($language);
        $steps = MortgageStep::all()->translate($language);
        $footer = Footer::first()->translate($language);

        return response(
            [
                'banner' => $banner,
                'advantages' => $advantages,
                'steps' => $steps,
                'footer' => $footer
            ], 200
        );
    }

    public function office(Request $request) {
        $language = $request->header('Accept-Language');

        $city = City::with('offices')
        ->where('id', $request->input('city_id'))
        ->first()
        ->translate($language);

        $sales = SalesDepartment::first()->translate($language);
        $helpline = Helpline::first()->translate($language);

        foreach ($city->offices as $office) {
            $office->coordinates = $office->getCoordinates();
        }

        return response(
            [
                'city' => $city,
                'sales' => $sales,
                'helpline' => $helpline,
            ], 200
        );
    }

    public function live() {
        $language = $request->header('Accept-Language');

        $complexes = Complex::whereNotNull('stream_link')
        ->get()
        ->translate($language);

        $footer = Footer::first();

        return response(
            [
                'complexes' => $complexes,
                'footer' => $footer
            ], 200
        );
    }

    public function aboutUs() {
        $language = $request->header('Accept-Language');

        $banner = AboutUsBanner::first()->translate($language);
        $blocks = AboutUsBlock::all()->translate($language);
        $description = AboutUsDescription::all()->translate($language);
        $advantages = AboutUsAdvantage::all()->translate($language);
        $geography = AboutUsGeography::first()->translate($language);
        $district = AboutUsGeographyDistrict::all()->translate($language);
        $complexes = Complex::where('type', 'implemented')->get()->translate($language);
        $company = AboutUsCompany::all()->translate($language);
        $footer = Footer::first()->translate($language);


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
