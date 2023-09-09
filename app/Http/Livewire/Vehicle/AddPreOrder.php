<?php

namespace App\Http\Livewire\Vehicle;

use App\User;
use App\Contact;
use App\CustomerGroup;
use App\VehicleProduct;
use Livewire\Component;
use App\VehiclePreOrder;

class AddPreOrder extends Component
{
    public $customer_id, $pre_order_recived_by, $order_date, $vehicle_category, $product_id, $preferred_year, $preferred_color, $preferred_millage, $preferred_grade, $other_requirements, $budget, $expected_delivery_date, $booking_amount, $additional_information, $terms_condition;
    public $contact_type, $customer_name, $contact_id, $customer_group, $mobile, $alernative_contact_no, $land_line, $email;
    public function mount()
    {
        $this->vehicle_category = 'Passenger';
    }
    protected $rules = [
        'vehicle_manufacture_id' => 'nullable',
        'vehicle_model_id' => 'nullable',
    ];
    public function render()
    {
        $business_id = request()->session()->get('user.business_id');
        return view('livewire.vehicle.add-pre-order', [
            'customers' => Contact::whereIn('type', ['customer', 'both'])->get(),
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
    public function store()
    {
        VehiclePreOrder::create([
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
            'created_by' => auth()->user()->id,
        ]);
        $this->dispatchBrowserEvent('success', ['msg' => 'Pre Order Added Successfully']);
        return redirect()->route('vehicle.pre.order.list');
    }
    public function addCustomer()
    {
        $this->contact_type = 'customer';
        $this->dispatchBrowserEvent('show-modal', ['id' => 'customer-modal']);
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
