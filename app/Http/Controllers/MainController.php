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

        $mainBlock = MainBlock::first()->withTranslation($language);
        $secondaryBlocks = SecondaryBlock::all()->withTranslation($language); 
        $slider = Slider::all()->withTranslation($language);
        $purchasingMethods = PurchasingMethod::all()->withTranslation($language); 
        $banner = Banner::first()->withTranslation($language);
        $complexes = Complex::query();

        if ($request->input('city_id') != null) {
            $complexes->where('city_id', $request->input('city_id'));
        }
        $complexes = $complexes->get()->withTranslation($language);
        $footer = Footer::first()->withTranslation($language);

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

        $banner = MortgageBanner::first()->withTranslation($language);
        $advantages = MortgageAdvantage::all()->withTranslation($language);
        $steps = MortgageStep::all()->withTranslation($language);
        $footer = Footer::first()->withTranslation($language);

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
        ->withTranslation($language);

        $sales = SalesDepartment::first()->withTranslation($language);
        $helpline = Helpline::first()->withTranslation($language);

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
        ->withTranslation($language);

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

        $banner = AboutUsBanner::first()->withTranslation($language);
        $blocks = AboutUsBlock::all()->withTranslation($language);
        $description = AboutUsDescription::all()->withTranslation($language);
        $advantages = AboutUsAdvantage::all()->withTranslation($language);
        $geography = AboutUsGeography::first()->withTranslation($language);
        $district = AboutUsGeographyDistrict::all()->withTranslation($language);
        $complexes = Complex::where('type', 'implemented')->get()->withTranslation($language);
        $company = AboutUsCompany::all()->withTranslation($language);
        $footer = Footer::first()->withTranslation($language);


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
