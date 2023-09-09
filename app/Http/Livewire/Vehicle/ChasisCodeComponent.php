<?php

namespace App\Http\Livewire\Vehicle;

use App\ChassisCode;
use Livewire\Component;
use App\VehicleManufacture;
use Livewire\WithPagination;

class ChasisCodeComponent extends Component
{
    use WithPagination;
    protected $paginationTheme = 'bootstrap';
    public $name, $category, $vehicle_manufacture_id, $chassis_id, $search;
    protected $queryString = [
        'search' => ['except' => ''],
    ];
    public function render()
    {
        return view('livewire.vehicle.chasis-code-component', [
            'codes' => ChassisCode::when($this->search, function ($query) {
                $query->where('name', $this->search);
            })->paginate(10),
            'vehicle_manufactures' => VehicleManufacture::when($this->category, function ($query) {
                $query->where('category', $this->category);
            })->get()
        ]);
    }
    protected $rules = [
        'name' => 'required',
        'category' => 'required',
        'vehicle_manufacture_id' => 'required',
    ];
    public function submit()
    {
        $this->validate();
        ChassisCode::create([
            'name' => $this->name,
            'category' => $this->category,
            'vehicle_manufacture_id' => $this->vehicle_manufacture_id,
            'created_by' => auth()->user()->id
        ]);
        $this->reset();
        $this->dispatchBrowserEvent('success', ['msg' => 'Vehicle Chassis Code Added Successfully']);
    }
    public function edit($id)
    {
        $res = ChassisCode::find($id);
        if (!blank($res)) {
            $this->chassis_id = $id;
            $this->name = $res->name;
            $this->category = $res->category;
            $this->vehicle_manufacture_id = $res->vehicle_manufacture_id;
        }
        $this->dispatchBrowserEvent('show-modal', ['id' => 'update-modal']);
    }
    public function update()
    {
        $res = ChassisCode::find($this->chassis_id);
        $res->update([
            'name' => $this->name,
            'category' => $this->category,
            'vehicle_manufacture_id' => $this->vehicle_manufacture_id,
        ]);
        $this->reset();
        $this->dispatchBrowserEvent('hide-modal', ['id' => 'update-modal']);

        $this->dispatchBrowserEvent('success', ['msg' => 'Vehicle Chassis Code Updated Successfully']);
    }
    public function delete($id)
    {
        try {
            $res = ChassisCode::find($id);
            $res->delete();
            $this->dispatchBrowserEvent('success', ['msg' => 'Vehicle Chassis Code Deleted Successfully']);
        } catch (\Exception $e) {
            $this->dispatchBrowserEvent('error', ['msg' => $e->getMessage()]);
        }
    }
}
