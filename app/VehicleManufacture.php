<?php

namespace App;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class VehicleManufacture extends Model
{

    use HasFactory;
    protected $fillable = [
        'name',
        'category',
        'country_id',
        'image',
        'created_by'
    ];
    protected static function boot()
    {
        parent::boot();

        static::deleting(function ($manufacturer) {
            if ($manufacturer->models()->count() > 0 || $manufacturer->products()->count() > 0 || $manufacturer->chassis_codes()->count() > 0 || $manufacturer->packages()->count() > 0) {
                throw new \Exception('Cannot delete manufacturer with associated records.');
            }
        });
    }
    public function country()
    {
        return $this->belongsTo(Country::class, 'country_id', 'id');
    }
    public function models()
    {
        return $this->hasMany(VehicleModel::class, 'vehicle_manufacture_id', 'id');
    }
    public function products()
    {
        return $this->hasMany(VehicleProduct::class, 'vehicle_manufacture_id', 'id');
    }
    public function chassis_codes()
    {
        return $this->hasMany(ChassisCode::class, 'vehicle_manufacture_id', 'id');
    }
    public function packages()
    {
        return $this->hasMany(PackageTrimVariant::class, 'vehicle_manufacture_id', 'id');
    }
}
