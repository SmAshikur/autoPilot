<?php

namespace App;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class LocalPurchase extends Model
{
    use HasFactory;
    protected $casts = [
        'pricing_information' => 'json'
    ];
    protected $fillable = [
        'purchase_date',
        'purchase_form',
        'supplier',
        'invoice_number',
        'purchase_mode',
        'remarks',
        'source_of_product',
        'pre_order_id',
        'vehicle_type',
        'vehicle_condition',
        'vehicle_id',
        'packge_trim_id',
        'chassis_id',
        'engine_id',
        'year_of_manufacture',
        'exterior_color_id',
        'interior_color_id',
        'millage',
        'action_grade',
        'registration_no',
        'registration_year',
        'seating_capacity',
        'tyre_size_id',
        'tracking_code',
        'vehicle_image',
        'vehicle_description',
        'pricing_information',
        'vehicle_price',
        'total_estimated_cost',
        'total_cost',
        'margin',
        'sale_price',
        'vehicle_location_id',
        'created_by',
        'tracking_field_name',
        'sale_status',
        'payment_status',
        'vehicle_location_name',
        'wholesale_discount',
        'wholesale_price',
    ];
    public function supplier_details()
    {
        return $this->belongsTo(Contact::class, 'supplier', 'id');
    }
    public function vehicle()
    {
        return $this->belongsTo(VehicleProduct::class, 'vehicle_id', 'id');
    }
    public function exterior_color()
    {
        return $this->belongsTo(ExteriorColor::class, 'exterior_color_id', 'id');
    }
    public function interior_color()
    {
        return $this->belongsTo(ExteriorColor::class, 'interior_color_id', 'id');
    }
}
