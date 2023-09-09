<?php

namespace App\Http\Livewire\Vehicle;

use App\User;
use App\Contact;
use App\TyreSize;
use App\CustomerGroup;
use App\VehicleProduct;
use Livewire\Component;
use App\VehiclePreOrder;
use Livewire\WithPagination;

class PreOrderList extends Component
{
    use WithPagination;
    public $status,
        $purchase_status,
        $terms_condition, $year, $month, $order_id, $vehicle_category_search, $status_search, $recived_by_search, $customer_search, $vehicle_name_search, $customer_id, $pre_order_recived_by, $order_date, $vehicle_category, $product_id, $preferred_year, $preferred_color, $preferred_millage, $preferred_grade, $other_requirements, $budget, $expected_delivery_date, $booking_amount, $additional_information;
    protected $rules = [
        'vehicle_manufacture_id' => 'nullable',
        'vehicle_model_id' => 'nullable',
    ];
    protected $queryString = [
        'vehicle_category_search' => ['except' => ''],
        'month' => ['except' => ''],
        'year' => ['except' => ''],
        'recived_by_search' => ['except' => ''],
        'vehicle_name_search' => ['except' => ''],
    ];
    public function render()
    {
        $business_id = request()->session()->get('user.business_id');
        return view('livewire.vehicle.pre-order-list', [
            'orders' => VehiclePreOrder::when($this->vehicle_category_search, function ($query) {
                $query->where('status', $this->vehicle_category_search);
            })
                ->when($this->recived_by_search, function ($query) {
                    $query->where('pre_order_recived_by', $this->recived_by_search);
                })
                ->when($this->year, function ($query) {
                    $query->whereYear('order_date', $this->year);
                })
                ->when($this->month, function ($query) {
                    $query->whereMonth('order_date', $this->month);
                })
                ->when($this->vehicle_name_search, function ($query) {
                    $query->orwhereHas('customer', function ($subQuery) {
                        $subQuery->where('name', $this->vehicle_name_search);
                    })
                        ->orWhereHas('product.vehicle_model', function ($subQuery) {
                            $subQuery->where('name', '%' . $this->vehicle_name_search . '%');
                        });
                })
                ->paginate(10),
            'customers' => User::all(),
            'recived_users' => User::all(),
            'products' => VehicleProduct::when($this->vehicle_category, function ($query) {
                $query->where('product_category', 'LIKE', '%' . $this->vehicle_category . '%');
            })->get(),
            'types' => [
                'supplier' => __('report.supplier'),
                'customer' => __('report.customer'),
                'both' => __('lang_v1.both_supplier_customer')
            ],
            'customer_groups' => CustomerGroup::forDropdown($business_id),
            'users' => config('constants.enable_contact_assign') ? User::forDropdown($business_id, false, false, false, true) : []

        ]);
    }
    public function edit($id)
    {
        $res = VehiclePreOrder::find($id);
        if (!blank($res)) {
            $this->order_id = $id;
            $this->customer_id = $res->customer_id;
            $this->pre_order_recived_by = $res->pre_order_recived_by;
            $this->order_date = $res->order_date;
            $this->vehicle_category = $res->vehicle_category;
            $this->product_id = $res->product_id;
            $this->preferred_year = $res->preferred_year;
            $this->preferred_color = $res->preferred_color;
            $this->preferred_millage = $res->preferred_millage;
            $this->preferred_grade = $res->preferred_grade;
            $this->other_requirements = $res->other_requirements;
            $this->budget = $res->budget;
            $this->expected_delivery_date = $res->expected_delivery_date;
            $this->booking_amount = $res->booking_amount;
            $this->additional_information = $res->additional_information;
            $this->status = $this->status;
            $this->purchase_status = $this->purchase_status;
            $this->terms_condition = $this->terms_condition;
        }
        $this->dispatchBrowserEvent('show-modal', ['id' => 'update-modal']);
    }
    public function update()
    {
        $res = VehiclePreOrder::find($this->order_id);
        $res->update([
            'customer_id' => $this->customer_id,
            'pre_order_recived_by' => $this->pre_order_recived_by,
            'order_date' => $this->order_date,
            'vehicle_category' => $this->vehicle_category,
            'product_id' => $this->product_id,
            'preferred_year' => $this->preferred_year,
            'preferred_color' => $this->preferred_color,
            'preferred_millage' => $this->preferred_millage,
            'preferred_grade' => $this->preferred_grade,
            'other_requirements' => $this->other_requirements,
            'budget' => $this->budget,
            'expected_delivery_date' => $this->expected_delivery_date,
            'booking_amount' => $this->booking_amount,
            'additional_information' => $this->additional_information,
            'status' => 'In-progress',
            'purchase_status' => 'Pending',
            'terms_condition' => $this->terms_condition,
        ]);
        $this->reset();
        $this->dispatchBrowserEvent('hide-modal', ['id' => 'update-modal']);

        $this->dispatchBrowserEvent('success', ['msg' => 'Pre Order Updated Successfully']);
    }
    public function delete($id)
    {
        $res = VehiclePreOrder::find($id);
        $res->delete();
        $this->dispatchBrowserEvent('success', ['msg' => 'Pre Order Deleted Successfully']);
    }
    public function storeCustomer()
    {
        Contact::create([
            'business_id' => request()->session()->get('user.business_id'),
            'type' => $this->contact_type,
            'name' => $this->customer_name,
            'contact_id' => $this->contact_id,
            'email' => $this->email,
            'mobile' => $this->mobile,
            'landline' => $this->land_line,
            'alternative_number' => $this->alernative_contact_no,
            'created_by' => auth()->user()->id,
        ]);
        $this->dispatchBrowserEvent('hide-modal', ['id' => 'customer-modal']);
        $this->dispatchBrowserEvent('success', ['msg' => 'Customer Added Successfully']);
    }
}
