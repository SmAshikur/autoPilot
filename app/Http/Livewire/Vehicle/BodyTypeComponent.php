<?php

namespace App\Http\Livewire\Vehicle;

use App\BodyType;
use Livewire\Component;
use Livewire\WithPagination;
use Livewire\WithFileUploads;

class BodyTypeComponent extends Component
{
    use WithPagination;
    use WithFileUploads;
    protected $paginationTheme = 'bootstrap';
    public $name, $category,  $image, $type_id, $search, $image_path;
    protected $queryString = [
        'search' => ['except' => ''],
    ];
    public function render()
    {
        return view('livewire.vehicle.body-type-component', [
            'types' => BodyType::when($this->search, function ($query) {
                $query->where('name', $this->search);
            })->paginate(10),
        ]);
    }
    protected $rules = [
        'name' => 'required',
        'category' => 'required',
        'image' => 'nullable',
    ];
    public function submit()
    {
        $this->validate();
        if ($this->image) {
            $image = $this->image->store('image', 'vehicle');
        }
        BodyType::create([
            'name' => $this->name,
            'category' => $this->category,
            'image' => $image ?? '',
        ]);
        $this->reset();
        $this->dispatchBrowserEvent('success', ['msg' => 'Body Type Added Successfully']);
    }
    public function edit($id)
    {
        $res = BodyType::find($id);
        if (!blank($res)) {
            $this->type_id = $id;
            $this->name = $res->name;
            $this->category = $res->category;
            $this->image_path = $res->image;
        }
        $this->dispatchBrowserEvent('show-modal', ['id' => 'update-modal']);
    }
    public function update()
    {
        $res = BodyType::find($this->type_id);
        if ($this->image) {
            $image = $this->image->store('image', 'vehicle');
        } else {
            $image = $res->image;
        }
        $res->update([
            'name' => $this->name,
            'category' => $this->category,
            'image' => $image ?? '',
        ]);
        $this->reset();
        $this->dispatchBrowserEvent('hide-modal', ['id' => 'update-modal']);

        $this->dispatchBrowserEvent('success', ['msg' => 'Body Type Updated Successfully']);
    }
    public function delete($id)
    {
        try {
            $res = BodyType::find($id);
            $res->delete();
            $this->dispatchBrowserEvent('success', ['msg' => 'Body Type Deleted Successfully']);
        } catch (\Exception $e) {
            $this->dispatchBrowserEvent('error', ['msg' => $e->getMessage()]);
        }
    }
}
