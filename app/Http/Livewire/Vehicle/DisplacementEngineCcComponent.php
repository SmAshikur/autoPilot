<?php

namespace App\Http\Livewire\Vehicle;

use App\DisplacementEngineCc;
use Livewire\Component;
use Livewire\WithPagination;

class DisplacementEngineCcComponent extends Component
{
    use WithPagination;
    protected $paginationTheme = 'bootstrap';
    public $cc, $cc_id, $search;
    protected $queryString = [
        'search' => ['except' => ''],
    ];
    public function render()
    {
        return view('livewire.vehicle.displacement-engine-cc-component', [
            'items' => DisplacementEngineCc::when($this->search, function ($query) {
                $query->where('cc', $this->search);
            })->paginate(10),
        ]);
    }
    protected $rules = [
        'cc' => 'required'
    ];
    public function submit()
    {
        $this->validate();
        DisplacementEngineCc::create([
            'cc' => $this->cc,
            'created_by' => auth()->user()->id
        ]);
        $this->reset();
        $this->dispatchBrowserEvent('success', ['msg' => 'Package Trim Variant Added Successfully']);
    }
    public function edit($id)
    {
        $res = DisplacementEngineCc::find($id);
        if (!blank($res)) {
            $this->cc_id = $id;
            $this->cc = $res->cc;
        }
        $this->dispatchBrowserEvent('show-modal', ['id' => 'update-modal']);
    }
    public function update()
    {
        $res = DisplacementEngineCc::find($this->cc_id);
        $res->update([
            'cc' => $this->cc,
        ]);
        $this->reset();
        $this->dispatchBrowserEvent('hide-modal', ['id' => 'update-modal']);

        $this->dispatchBrowserEvent('success', ['msg' => 'Displacement Engine Cc Updated Successfully']);
    }
    public function delete($id)
    {
        try {
            $res = DisplacementEngineCc::find($id);
            $res->delete();
            $this->dispatchBrowserEvent('success', ['msg' => 'Displacement Engine Cc Deleted Successfully']);
        } catch (\Exception $e) {
            $this->dispatchBrowserEvent('error', ['msg' => $e->getMessage()]);
        }
    }
}
