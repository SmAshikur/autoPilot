<?php

namespace App\Http\Livewire\Vehicle;

use App\ModelOrigin;
use Livewire\Component;
use Livewire\WithPagination;

class ModelOriginComponent extends Component
{
    use WithPagination;
    protected $paginationTheme = 'bootstrap';
    public $model, $model_id, $search;
    protected $queryString = [
        'search' => ['except' => ''],
    ];
    public function render()
    {
        return view('livewire.vehicle.model-origin-component', [
            'items' => ModelOrigin::when($this->search, function ($query) {
                $query->where('model', $this->search);
            })->paginate(10),
        ]);
    }
    protected $rules = [
        'model' => 'required'
    ];
    public function submit()
    {
        $this->validate();
        ModelOrigin::create([
            'model' => $this->model,
            'created_by' => auth()->user()->id
        ]);
        $this->reset();
        $this->dispatchBrowserEvent('success', ['msg' => 'Model Origin Added successfully']);
    }
    public function edit($id)
    {
        $res = ModelOrigin::find($id);
        if (!blank($res)) {
            $this->model_id = $id;
            $this->model = $res->model;
        }
        $this->dispatchBrowserEvent('show-modal', ['id' => 'update-modal']);
    }
    public function update()
    {
        $res = ModelOrigin::find($this->model_id);
        $res->update([
            'model' => $this->model,
        ]);
        $this->reset();
        $this->dispatchBrowserEvent('hide-modal', ['id' => 'update-modal']);

        $this->dispatchBrowserEvent('success', ['msg' => 'Model Origin Updated successfully']);
    }
    public function delete($id)
    {
        try {
            $res = ModelOrigin::find($id);
            $res->delete();
            $this->dispatchBrowserEvent('success', ['msg' => 'Model Origin Deleted successfully']);
        } catch (\Exception $e) {
            $this->dispatchBrowserEvent('error', ['msg' => $e->getMessage()]);
        }
    }
}
