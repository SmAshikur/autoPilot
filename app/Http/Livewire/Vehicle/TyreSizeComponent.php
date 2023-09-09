<?php

namespace App\Http\Livewire\Vehicle;

use App\TyreSize;
use Livewire\Component;
use Livewire\WithPagination;

class TyreSizeComponent extends Component
{
    use WithPagination;
    protected $paginationTheme = 'bootstrap';
    public $size, $size_id, $search;
    protected $queryString = [
        'search' => ['except' => ''],
    ];
    public function render()
    {
        return view('livewire.vehicle.tyre-size-component', [
            'items' => TyreSize::when($this->search, function ($query) {
                $query->where('size', $this->search);
            })->paginate(10),
        ]);
    }
    protected $rules = [
        'size' => 'required'
    ];
    public function submit()
    {
        $this->validate();
        TyreSize::create([
            'size' => $this->size,
            'created_by' => auth()->user()->id
        ]);
        $this->reset();
        $this->dispatchBrowserEvent('success', ['msg' => 'Tyre Size Added successfully']);
    }
    public function edit($id)
    {
        $res = TyreSize::find($id);
        if (!blank($res)) {
            $this->size_id = $id;
            $this->size = $res->size;
        }
        $this->dispatchBrowserEvent('show-modal', ['id' => 'update-modal']);
    }
    public function update()
    {
        $res = TyreSize::find($this->size_id);
        $res->update([
            'size' => $this->size,
        ]);
        $this->reset();
        $this->dispatchBrowserEvent('hide-modal', ['id' => 'update-modal']);

        $this->dispatchBrowserEvent('success', ['msg' => 'Tyre Size Updated successfully']);
    }
    public function delete($id)
    {
        try {
            $res = TyreSize::find($id);
            $res->delete();
            $this->dispatchBrowserEvent('success', ['msg' => 'Tyre Size Deleted successfully']);
        } catch (\Exception $e) {
            $this->dispatchBrowserEvent('error', ['msg' => $e->getMessage()]);
        }
    }
}
