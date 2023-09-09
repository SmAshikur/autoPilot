<?php

namespace App\Http\Livewire\Vehicle;

use App\Country;
use App\BodyType;
use App\ChassisCode;
use App\ModelOrigin;
use App\VehicleModel;
use App\VehicleProduct;
use Livewire\Component;
use App\VehicleManufacture;
use App\DisplacementEngineCc;

class AddBikeComponent extends Component
{
    public $product_category, $vehicle_manufacture_id, $body_type_id, $number_of_gears, $vehicle_model_id, $fuel_type, $model_origin_id, $chassis_code_id, $displacement_engine_cc_id;
    public $manufacture_name, $manufacture_category, $manufacture_country_id, $manufacture_image;
    public $model_name,
        $model_category,
        $model_vehicle_manufacture_id,
        $model_image;
    public $chassis_name,
        $chassis_category,
        $chassis_vehicle_manufacture_id, $engine_cc, $model;
    public $header_manufacture_name, $header_model_name, $header_chassis_name, $header_engine_name;
    public function render()
    {
        return view('livewire.vehicle.add-bike-component', [
            'manufactures' => VehicleManufacture::where('category', 'LIKE', '%Bike%')->get(),
            'body_types' => BodyType::where('category', 'LIKE', '%Bike%')->get(),
            'vehicle_models' => VehicleModel::where('category', 'LIKE', '%Bike%')->when($this->vehicle_manufacture_id, function ($query) {
                $query->where('vehicle_manufacture_id', $this->vehicle_manufacture_id);
            })->get(),
            'model_origins' => ModelOrigin::all(),
            'chassis_codes' => ChassisCode::where('category', 'LIKE', '%Bike%')->when($this->vehicle_manufacture_id, function ($query) {
                $query->where('vehicle_manufacture_id', $this->vehicle_manufacture_id);
            })->get(),
            'displacement_engine_ccs' => DisplacementEngineCc::all(),
            'countries' => Country::all(),
            'model_vehicle_manufactures' => VehicleManufacture::when($this->model_category, function ($query) {
                $query->where('category', $this->model_category);
            })->get(),
            'chassis_vehicle_manufactures' => VehicleManufacture::when($this->chassis_category, function ($query) {
                $query->where('category', $this->chassis_category);
            })->get()
        ]);
    }
    protected $rules = [
        'vehicle_manufacture_id' => 'nullable',
        'vehicle_model_id' => 'nullable',
    ];
    public function updated($property_name)
    {


        if ($property_name == 'vehicle_model_id') {
            if ($this->vehicle_manufacture_id == '') {
                $this->dispatchBrowserEvent('error', ['msg' => 'Please Select Vehicle Manufacture First']);
                $this->vehicle_model_id = '';
            }
            $this->header_model_name = VehicleModel::where('id', $this->vehicle_model_id)
                ->pluck('name')
                ->first();
        }
        if ($property_name == 'vehicle_manufacture_id') {
            $this->header_manufacture_name =
                VehicleManufacture::where('id', $this->vehicle_manufacture_id)
                ->pluck('name')
                ->first();
        }
        if ($property_name == 'chassis_code_id') {
            $this->header_chassis_name =
                ChassisCode::where('id', $this->chassis_code_id)
                ->pluck('name')
                ->first();
        }
        if ($property_name == 'displacement_engine_cc_id') {
            $this->header_engine_name =
                DisplacementEngineCc::where('id', $this->displacement_engine_cc_id)
                ->pluck('cc')
                ->first();
        }
    }
    public function store()
    {
        $this->validate();
        VehicleProduct::create([
            'product_category' => 'Bike',
            'vehicle_manufacture_id' => $this->vehicle_manufacture_id,
            'body_type_id' => $this->body_type_id,
            'number_of_gears' => $this->number_of_gears,
            'vehicle_model_id' => $this->vehicle_model_id,
            'fuel_type' => $this->fuel_type,
            'model_origin_id' => $this->model_origin_id,
            'chassis_code_id' => $this->chassis_code_id,
            'displacement_engine_cc_id' => $this->displacement_engine_cc_id,
            'created_by' => auth()->user()->id,
        ]);
        $this->dispatchBrowserEvent('success', ['msg' => 'Bike Added Successfully']);
    }
    public function addManufacture()
    {
        $this->dispatchBrowserEvent('show-modal', ['id' => 'manufacture-modal']);
    }
    public function storeManufacture()
    {
        if ($this->manufacture_image) {
            $image = $this->image->store('image', 'vehicle');
        }
        VehicleManufacture::create([
            'name' => $this->manufacture_name,
            'category' => $this->manufacture_category,
            'country_id' => $this->manufacture_country_id,
            'image' => $image ?? '',
            'created_by' => auth()->user()->id
        ]);
        $this->dispatchBrowserEvent('hide-modal', ['id' => 'manufacture-modal']);
        $this->dispatchBrowserEvent('success', ['msg' => 'Vehicle Manufacture Added Successfully']);
    }
    public function addModel()
    {
        $this->dispatchBrowserEvent('show-modal', ['id' => 'model-modal']);
    }
    public function storeModel()
    {
        if ($this->model_image) {
            $image = $this->model_image->store('image', 'vehicle');
        }
        VehicleModel::create([
            'name' => $this->model_name,
            'category' => $this->model_category,
            'vehicle_manufacture_id' => $this->model_vehicle_manufacture_id,
            'image' => $image ?? '',
            'created_by' => auth()->user()->id
        ]);
        $this->dispatchBrowserEvent('hide-modal', ['id' => 'model-modal']);
        $this->dispatchBrowserEvent('success', ['msg' => 'Vehicle Model Added Successfully']);
    }
    public function addChassis()
    {
        $this->dispatchBrowserEvent('show-modal', ['id' => 'chassis-modal']);
    }
    public function storeChassis()
    {
        ChassisCode::create([
            'name' => $this->chassis_name,
            'category' => $this->chassis_category,
            'vehicle_manufacture_id' => $this->chassis_vehicle_manufacture_id,
            'created_by' => auth()->user()->id
        ]);
        $this->dispatchBrowserEvent('hide-modal', ['id' => 'chassis-modal']);
        $this->dispatchBrowserEvent('success', ['msg' => 'Vehicle Chassis Code Added Successfully']);
    }
    public function addEngine()
    {
        $this->dispatchBrowserEvent('show-modal', ['id' => 'engine-modal']);
    }
    public function storeEngine()
    {
        DisplacementEngineCc::create([
            'cc' => $this->engine_cc,
            'created_by' => auth()->user()->id
        ]);
        $this->dispatchBrowserEvent('hide-modal', ['id' => 'engine-modal']);
        $this->dispatchBrowserEvent('success', ['msg' => 'Displacement Engine Cc Added Successfully']);
    }
    public function addModelOrigin()
    {
        $this->dispatchBrowserEvent('show-modal', ['id' => 'model-origin-modal']);
    }
    public function storeModelOrigin()
    {
        ModelOrigin::create([
            'model' => $this->model,
            'created_by' => auth()->user()->id
        ]);
        $this->dispatchBrowserEvent('hide-modal', ['id' => 'model-origin-modal']);
        $this->dispatchBrowserEvent('success', ['msg' => 'Model Origin Added Successfully']);
    }
}
