<?php

namespace App;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class VehicleProduct extends Model
{
    use HasFactory;
    protected $fillable = [
        'product_category',
        'vehicle_manufacture_id',
        'body_type_id',
        'number_of_gears',
        'vehicle_model_id',
        'fuel_type',
        'model_origin_id',
        'chassis_code_id',
        'displacement_engine_cc_id',
        'loading_capacity',
        'transmission',
        'number_of_wheels',
        'number_of_doors',
        'drive_system',
        'additional_information',
        'created_by',
    ];
    public function manufacture()
    {
        return $this->belongsTo(VehicleManufacture::class, 'vehicle_manufacture_id', 'id');
    }
    public function body_type()
    {
        return $this->belongsTo(BodyType::class, 'body_type_id', 'id');
    }
    public function vehicle_model()
    {
        return $this->belongsTo(VehicleModel::class, 'vehicle_model_id', 'id');
    }
    public function model_origin()
    {
        return $this->belongsTo(ModelOrigin::class, 'model_origin_id', 'id');
    }
    public function chassis_code()
    {
        return $this->belongsTo(ChassisCode::class, 'chassis_code_id', 'id');
    }
    public function displacement_engine()
    {
        return $this->belongsTo(DisplacementEngineCc::class, 'displacement_engine_cc_id', 'id');
    }
    public function pre_orders()
    {
        return $this->hasMany(VehiclePreOrder::class, 'product_id', 'id');
    }
    protected static function boot()
    {
        parent::boot();

        static::deleting(function ($model) {
            if ($model->pre_orders()->count() > 0) {
                throw new \Exception('Cannot delete vehicle product with associated records.');
            }
        });
    }
}
