<?php

namespace App\Http\Livewire\Vehicle;

use App\InteriorColor;
use Livewire\Component;
use Livewire\WithPagination;

class InteriorColorComponent extends Component
{
    use WithPagination;
    protected $paginationTheme = 'bootstrap';
    public $color, $color_code, $color_id, $search;
    protected $queryString = [
        'search' => ['except' => ''],
    ];
    public function render()
    {
        return view('livewire.vehicle.interior-color-component', [
            'items' => InteriorColor::when($this->search, function ($query) {
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
        InteriorColor::create([
            'color' => $this->color,
            'color_code' => $this->color_code,
            'created_by' => auth()->user()->id
        ]);
        $this->reset();
        $this->dispatchBrowserEvent('success', ['msg' => 'Interior Color Added successfully']);
    }
    public function edit($id)
    {
        $res = InteriorColor::find($id);
        if (!blank($res)) {
            $this->color_id = $id;
            $this->color = $res->color;
            $this->color_code = $res->color_code;
        }
        $this->dispatchBrowserEvent('show-modal', ['id' => 'update-modal']);
    }
    public function update()
    {
        $res = InteriorColor::find($this->color_id);
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
            $res = InteriorColor::find($id);
            $res->delete();
            $this->dispatchBrowserEvent('success', ['msg' => 'Interior Color Deleted successfully']);
        } catch (\Exception $e) {
            $this->dispatchBrowserEvent('error', ['msg' => $e->getMessage()]);
        }
    }
}
