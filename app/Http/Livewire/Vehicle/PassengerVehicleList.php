<?php

namespace App\Http\Livewire\Vehicle;

use App\BodyType;
use App\ChassisCode;
use App\ModelOrigin;
use App\VehicleModel;
use App\VehicleProduct;
use Livewire\Component;
use App\VehicleManufacture;
use App\DisplacementEngineCc;

class PassengerVehicleList extends Component
{
    public $product_id, $vehicle_manufacture_id_search, $vehicle_model_id_search, $chassis_id_search, $product_category, $vehicle_manufacture_id, $fuel_type, $loading_capacity,  $body_type_id, $number_of_doors, $vehicle_model_id, $model_origin_id, $chassis_code_id, $displacement_engine_cc_id, $transmission, $drive_system;
    protected $queryString = [
        'vehicle_manufacture_id_search' => ['except' => ''],
        'chassis_id_search' => ['except' => ''],
        'vehicle_model_id_search' => ['except' => ''],
    ];
    public function render()
    {
        return view('livewire.vehicle.passenger-vehicle-list', [
            'vehicles' => VehicleProduct::where('product_category', 'Passenger')
                ->when($this->vehicle_manufacture_id_search, function ($query) {
                    $query->where('vehicle_manufacture_id', $this->vehicle_manufacture_id_search);
                })
                ->when($this->chassis_id_search, function ($query) {
                    $query->where('chassis_code_id', $this->chassis_id_search);
                })
                ->when($this->vehicle_model_id_search, function ($query) {
                    $query->where('vehicle_model_id', $this->vehicle_model_id_search);
                })
                ->paginate(10),
            'manufactures' => VehicleManufacture::where('category', 'LIKE', '%Passenger%')->get(),
            'body_types' => BodyType::where('category', 'LIKE', '%Passenger%')->get(),
            'vehicle_models' => VehicleModel::where('category', 'LIKE', '%Passenger%')->when($this->vehicle_manufacture_id, function ($query) {
                $query->where('vehicle_manufacture_id', $this->vehicle_manufacture_id);
            })->get(),
            'model_origins' => ModelOrigin::all(),
            'chassis_codes' => ChassisCode::where('category', 'LIKE', '%Passenger%')->when($this->vehicle_manufacture_id, function ($query) {
                $query->where('vehicle_manufacture_id', $this->vehicle_manufacture_id);
            })->get(),
            'displacement_engine_ccs' => DisplacementEngineCc::all(),
        ]);
    }
    protected $rules = [
        'vehicle_manufacture_id' => 'nullable',
        'vehicle_model_id' => 'nullable',
    ];
    public function edit($id)
    {
        $res = VehicleProduct::find($id);
        if (!blank($res)) {
            $this->product_id = $id;
            $this->vehicle_manufacture_id = $res->vehicle_manufacture_id;
            $this->body_type_id = $res->body_type_id;
            $this->number_of_doors = $res->number_of_doors;
            $this->vehicle_model_id = $res->vehicle_model_id;
            $this->model_origin_id = $res->model_origin_id;
            $this->chassis_code_id = $res->chassis_code_id;
            $this->displacement_engine_cc_id = $res->displacement_engine_cc_id;
            $this->transmission = $res->transmission;
            $this->drive_system = $res->drive_system;
            $this->fuel_type = $res->fuel_type;
        }
        $this->dispatchBrowserEvent('show-modal', ['id' => 'update-modal']);
    }
    public function update()
    {
        $this->validate();
        VehicleProduct::find($this->product_id)->update([
            'vehicle_manufacture_id' => $this->vehicle_manufacture_id,
            'body_type_id' => $this->body_type_id,
            'number_of_doors' => $this->number_of_doors,
            'vehicle_model_id' => $this->vehicle_model_id,
            'model_origin_id' => $this->model_origin_id,
            'chassis_code_id' => $this->chassis_code_id,
            'displacement_engine_cc_id' => $this->displacement_engine_cc_id,
            'transmission' => $this->transmission,
            'drive_system' => $this->drive_system,
            'fuel_type' => $this->fuel_type,
        ]);
        $this->dispatchBrowserEvent('hide-modal', ['id' => 'update-modal']);

        $this->dispatchBrowserEvent('success', ['msg' => 'Passenger Vehicle Updated Successfully']);
    }
    public function delete($id)
    {
        try {
            $res = VehicleProduct::find($id);
            $res->delete();
            $this->dispatchBrowserEvent('success', ['msg' => 'Passenger Vehicle Deleted Successfully']);
        } catch (\Exception $e) {
            $this->dispatchBrowserEvent('error', ['msg' => $e->getMessage()]);
        }
    }
}
