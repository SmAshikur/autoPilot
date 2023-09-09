<?php

namespace App\Http\Livewire\Vehicle;

use App\BodyType;
use App\ChassisCode;
use App\ModelOrigin;
use App\VehicleModel;
use App\VehicleProduct;
use Livewire\Component;
use App\VehicleManufacture;
use Livewire\WithPagination;
use App\DisplacementEngineCc;

class BikeListComponent extends Component
{
    use WithPagination;
    public $vehicle_name, $list_id, $product_category, $vehicle_manufacture_id_search, $vehicle_model_id_search, $vehicle_manufacture_id, $body_type_id, $number_of_gears, $vehicle_model_id, $fuel_type, $model_origin_id, $chassis_code_id, $displacement_engine_cc_id;
    protected $queryString = [
        'vehicle_manufacture_id_search' => ['except' => ''],
        'vehicle_name' => ['except' => ''],
        'vehicle_model_id_search' => ['except' => ''],
    ];
    public function render()
    {
        return view('livewire.vehicle.bike-list-component', [
            'bikes' => VehicleProduct::where('product_category', 'Bike')
                ->when($this->vehicle_manufacture_id_search, function ($query) {
                    $query->where('vehicle_manufacture_id', $this->vehicle_manufacture_id_search);
                })
                ->when($this->vehicle_name, function ($query) {
                    $query->whereHas('vehicle_model', function ($subQuery) {
                        $subQuery->where('name', 'LIKE', '%' . $this->vehicle_name . '%');
                    });
                })
                ->when($this->vehicle_model_id_search, function ($query) {
                    $query->where('vehicle_model_id', $this->vehicle_model_id_search);
                })
                ->paginate(10),
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
        ]);
    }
    public function edit($id)
    {
        $res = VehicleProduct::find($id);
        if (!blank($res)) {
            $this->list_id = $id;
            $this->vehicle_manufacture_id = $res->vehicle_manufacture_id;
            $this->body_type_id = $res->body_type_id;
            $this->number_of_gears = $res->number_of_gears;
            $this->vehicle_model_id = $res->vehicle_model_id;
            $this->fuel_type = $res->fuel_type;
            $this->model_origin_id = $res->model_origin_id;
            $this->chassis_code_id = $res->chassis_code_id;
            $this->displacement_engine_cc_id = $res->displacement_engine_cc_id;
        }
        $this->dispatchBrowserEvent('show-modal', ['id' => 'update-modal']);
    }
    public function update()
    {
        $res = VehicleProduct::find($this->list_id);
        $res->update([
            'vehicle_manufacture_id' => $this->vehicle_manufacture_id,
            'body_type_id' => $this->body_type_id,
            'number_of_gears' => $this->number_of_gears,
            'vehicle_model_id' => $this->vehicle_model_id,
            'fuel_type' => $this->fuel_type,
            'model_origin_id' => $this->model_origin_id,
            'chassis_code_id' => $this->chassis_code_id,
            'displacement_engine_cc_id' => $this->displacement_engine_cc_id,
        ]);
        $this->reset();
        $this->dispatchBrowserEvent('hide-modal', ['id' => 'update-modal']);

        $this->dispatchBrowserEvent('success', ['msg' => 'Bike Updated Successfully']);
    }
    public function delete($id)
    {
        try {
            $res = VehicleProduct::find($id);
            $res->delete();
            $this->dispatchBrowserEvent('success', ['msg' => 'Bike Deleted Successfully']);
        } catch (\Exception $e) {
            $this->dispatchBrowserEvent('error', ['msg' => $e->getMessage()]);
        }
    }
}
