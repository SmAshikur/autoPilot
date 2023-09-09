<?php

namespace App\Http\Livewire\Vehicle;

use App\ExteriorColor;
use Livewire\Component;
use Livewire\WithPagination;

class ExteriorColorComponent extends Component
{
    use WithPagination;
    protected $paginationTheme = 'bootstrap';
    public $color, $color_code, $color_id, $search;
    protected $queryString = [
        'search' => ['except' => ''],
    ];
    public function render()
    {
        return view('livewire.vehicle.exterior-color-component', [
            'items' => ExteriorColor::when($this->search, function ($query) {
                $query->where('color', $this->search);
            })->paginate(10),
        ]);
    }
    protected $rules = [
        'color' => 'required',
        'color_code' => 'required'
    ];
    public function submit()
    {
        $this->validate();
        ExteriorColor::create([
            'color' => $this->color,
            'color_code' => $this->color_code,
            'created_by' => auth()->user()->id
        ]);
        $this->reset();
        $this->dispatchBrowserEvent('success', ['msg' => 'Interior Color Added successfully']);
    }
    public function edit($id)
    {
        $res = ExteriorColor::find($id);
        if (!blank($res)) {
            $this->color_id = $id;
            $this->color = $res->color;
            $this->color_code = $res->color_code;
        }
        $this->dispatchBrowserEvent('show-modal', ['id' => 'update-modal']);
    }
    public function update()
    {
        $res = ExteriorColor::find($this->color_id);
        $res->update([
            'color' => $this->color,
            'color_code' => $this->color_code,
        ]);
        $this->reset();
        $this->dispatchBrowserEvent('hide-modal', ['id' => 'update-modal']);

        $this->dispatchBrowserEvent('success', ['msg' => 'Interior Color Updated successfully']);
    }
    public function delete($id)
    {
        try {
            $res = ExteriorColor::find($id);
            $res->delete();
            $this->dispatchBrowserEvent('success', ['msg' => 'Interior Color Deleted successfully']);
        } catch (\Exception $e) {
            $this->dispatchBrowserEvent('error', ['msg' => $e->getMessage()]);
        }
    }
}
