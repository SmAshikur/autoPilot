<?php

namespace App;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ForeginPurchase extends Model
{
    use HasFactory;
    protected $casts = [
        'pricing_information' => 'json'
    ];
    protected $fillable = [
        'purchase_date',
        'lot_number',
        'supplier',
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
        'vehicle_location_name',
        'sale_status',
        'lc_status',
        'wholesale_discount',
        'wholesale_price',
        'sale_price_note',
        'created_by',
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
