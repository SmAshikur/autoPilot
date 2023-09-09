<?php

namespace App\Http\Livewire\Vehicle;

use App\Country;
use Livewire\Component;
use App\VehicleManufacture;
use App\VehicleProduct;
use Livewire\WithPagination;
use Livewire\WithFileUploads;

class ManufactureComponent extends Component
{
    use WithPagination;
    use WithFileUploads;
    protected $paginationTheme = 'bootstrap';
    public $name, $category, $country_id, $image, $search, $manufacture_id, $image_path;
    protected $queryString = [
        'search' => ['except' => ''],
    ];
    public function render()
    {
        return view('livewire.vehicle.manufacture-component', [
            'manufactures' => VehicleManufacture::when($this->search, function ($query) {
                $query->where('name', $this->search);
            })->paginate(10),
            'countries' => Country::all()
        ]);
    }

    protected $rules = [
        'name' => 'required',
        'category' => 'required',
        'country_id' => 'required',
        'image' => 'nullable',
    ];
    public function submit()
    {
        $this->validate();
        if ($this->image) {
            $image = $this->image->store('image', 'vehicle');
        }
        VehicleManufacture::create([
            'name' => $this->name,
            'category' => $this->category,
            'country_id' => $this->country_id,
            'image' => $image ?? '',
            'created_by' => auth()->user()->id
        ]);
        $this->reset();
        $this->dispatchBrowserEvent('success', ['msg' => 'Vehicle Manufacture Added Successfully']);
    }
    public function edit($id)
    {
        $res = VehicleManufacture::find($id);
        if (!blank($res)) {
            $this->manufacture_id = $id;
            $this->name = $res->name;
            $this->category = $res->category;
            $this->country_id = $res->country_id;
            $this->image_path = $res->image;
        }
        $this->dispatchBrowserEvent('show-modal', ['id' => 'update-modal']);
    }
    public function update()
    {
        $res = VehicleManufacture::find($this->manufacture_id);

        if ($this->image) {
            $image = $this->image->store('image', 'vehicle');
        } else {
            $image = $res->image;
        }
        $res->update([
            'name' => $this->name,
            'category' => $this->category,
            'country_id' => $this->country_id,
            'image' => $image ?? '',
        ]);
        $this->reset();
        $this->dispatchBrowserEvent('hide-modal', ['id' => 'update-modal']);

        $this->dispatchBrowserEvent('success', ['msg' => 'Vehicle Manufacture Updated Successfully']);
    }
    public function delete($id)
    {
        try {
            $manufacturer = VehicleManufacture::find($id);
            $manufacturer->delete();
            $this->dispatchBrowserEvent('success', ['msg' => 'Vehicle Manufacture Deleted Successfully']);
        } catch (\Exception $e) {
            $this->dispatchBrowserEvent('error', ['msg' => $e->getMessage()]);
        }
    }
}
