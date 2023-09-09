<?php

namespace App;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ChassisCode extends Model
{
    use HasFactory;
    protected $fillable = [
        'name',
        'category',
        'vehicle_manufacture_id',
    ];
    public function manufacture()
    {
        return $this->belongsTo(VehicleManufacture::class, 'vehicle_manufacture_id', 'id');
    }
    public function products()
    {
        return $this->hasMany(VehicleProduct::class, 'chassis_code_id', 'id');
    }
    protected static function boot()
    {
        parent::boot();

        static::deleting(function ($model) {
            if ($model->products()->count() > 0) {
                throw new \Exception('Cannot delete chassis code with associated records.');
            }
        });
    }
}
