<?php

namespace App\Http\Livewire\Vehicle;

use App\VehicleModel;
use Livewire\Component;
use App\PackageTrimVariant;
use App\VehicleManufacture;
use Livewire\WithPagination;

class PackageTrimVariantComponent extends Component
{
    use WithPagination;
    protected $paginationTheme = 'bootstrap';
    public $name, $category, $vehicle_manufacture_id, $vehicle_model_id, $variant_id, $search;
    protected $queryString = [
        'search' => ['except' => ''],
    ];
    public function render()
    {
        return view('livewire.vehicle.package-trim-variant-component', [
            'variants' => PackageTrimVariant::when($this->search, function ($query) {
                $query->where('name', $this->search);
            })->paginate(10),
            'vehicle_manufactures' => VehicleManufacture::all(),
            'models' => VehicleModel::when($this->vehicle_manufacture_id, function ($query) {
                $query->where('vehicle_manufacture_id', $this->vehicle_manufacture_id);
            })->get()
        ]);
    }
    protected $rules = [
        'name' => 'required',
        'vehicle_manufacture_id' => 'required',
        'vehicle_model_id' => 'required'
    ];
    public function submit()
    {
        $this->validate();
        PackageTrimVariant::create([
            'name' => $this->name,
            'vehicle_model_id' => $this->vehicle_model_id,
            'vehicle_manufacture_id' => $this->vehicle_manufacture_id,
            'created_by' => auth()->user()->id
        ]);
        $this->reset();
        $this->dispatchBrowserEvent('success', ['msg' => 'Package Trim Variant Added Successfully']);
    }
    public function edit($id)
    {
        $res = PackageTrimVariant::find($id);
        if (!blank($res)) {
            $this->variant_id = $id;
            $this->name = $res->name;
            $this->vehicle_model_id = $res->vehicle_model_id;
            $this->vehicle_manufacture_id = $res->vehicle_manufacture_id;
        }
        $this->dispatchBrowserEvent('show-modal', ['id' => 'update-modal']);
    }
    public function update()
    {
        $res = PackageTrimVariant::find($this->variant_id);
        $res->update([
            'name' => $this->name,
            'vehicle_model_id' => $this->vehicle_model_id,
            'vehicle_manufacture_id' => $this->vehicle_manufacture_id,
        ]);
        $this->reset();
        $this->dispatchBrowserEvent('hide-modal', ['id' => 'update-modal']);

        $this->dispatchBrowserEvent('success', ['msg' => 'Package Trim Variant Updated Successfully']);
    }
    public function delete($id)
    {
        try {
            $res = PackageTrimVariant::find($id);
            $res->delete();
            $this->dispatchBrowserEvent('success', ['msg' => 'Package Trim Variant Deleted Successfully']);
        } catch (\Exception $e) {
            $this->dispatchBrowserEvent('error', ['msg' => $e->getMessage()]);
        }
    }
}
