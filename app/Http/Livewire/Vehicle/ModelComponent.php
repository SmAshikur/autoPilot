<?php

namespace App\Http\Livewire\Vehicle;

use App\Country;
use App\VehicleModel;
use Livewire\Component;
use App\VehicleManufacture;
use Livewire\WithPagination;
use Livewire\WithFileUploads;

class ModelComponent extends Component
{
    use WithPagination;
    use WithFileUploads;
    protected $paginationTheme = 'bootstrap';
    public $name, $category, $vehicle_manufacture_id, $image, $model_id, $search, $image_path;
    protected $queryString = [
        'search' => ['except' => ''],
    ];
    public function render()
    {
        return view('livewire.vehicle.model-component', [
            'models' => VehicleModel::when($this->search, function ($query) {
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
        'image' => 'nullable',
    ];
    public function submit()
    {
        $this->validate();
        if ($this->image) {
            $image = $this->image->store('image', 'vehicle');
        }
        VehicleModel::create([
            'name' => $this->name,
            'category' => $this->category,
            'vehicle_manufacture_id' => $this->vehicle_manufacture_id,
            'image' => $image ?? '',
            'created_by' => auth()->user()->id
        ]);
        $this->reset();
        $this->dispatchBrowserEvent('success', ['msg' => 'Vehicle Model Added Successfully']);
    }
    public function edit($id)
    {
        $res = VehicleModel::find($id);
        if (!blank($res)) {
            $this->model_id = $id;
            $this->name = $res->name;
            $this->category = $res->category;
            $this->vehicle_manufacture_id = $res->vehicle_manufacture_id;
            $this->image_path = $res->image;
        }
        $this->dispatchBrowserEvent('show-modal', ['id' => 'update-modal']);
    }
    public function update()
    {
        $res = VehicleModel::find($this->model_id);
        if ($this->image) {
            $image = $this->image->store('image', 'vehicle');
        } else {
            $image = $res->image;
        }
        $res->update([
            'name' => $this->name,
            'category' => $this->category,
            'vehicle_manufacture_id' => $this->vehicle_manufacture_id,
            'image' => $image ?? '',
        ]);
        $this->reset();
        $this->dispatchBrowserEvent('hide-modal', ['id' => 'update-modal']);

        $this->dispatchBrowserEvent('success', ['msg' => 'Vehicle Model Updated Successfully']);
    }
    public function delete($id)
    {
        try {
            $res = VehicleModel::find($id);
            $res->delete();
            $this->dispatchBrowserEvent('success', ['msg' => 'Vehicle Model Deleted Successfully']);
        } catch (\Exception $e) {
            $this->dispatchBrowserEvent('error', ['msg' => $e->getMessage()]);
        }
    }
}
