<?php

namespace App;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class VehiclePreOrder extends Model
{
    use HasFactory;
    protected $fillable = [
        'customer_id',
        'pre_order_recived_by',
        'order_date',
        'vehicle_category',
        'product_id',
        'preferred_year',
        'preferred_color',
        'preferred_millage',
        'preferred_grade',
        'other_requirements',
        'budget',
        'expected_delivery_date',
        'booking_amount',
        'additional_information',
        'status',
        'purchase_status',
        'terms_condition',
        'created_by',
    ];
    public function customer()
    {
        return $this->belongsTo(Contact::class, 'customer_id', 'id');
    }
    public function recived_by()
    {
        return $this->belongsTo(User::class, 'pre_order_recived_by', 'id');
    }
    public function product()
    {
        return $this->belongsTo(VehicleProduct::class, 'product_id', 'id');
    }
}
