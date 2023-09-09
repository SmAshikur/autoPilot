<?php

namespace App;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class VehicleModel extends Model
{
    use HasFactory;
    protected $fillable = [
        'name',
        'vehicle_manufacture_id',
        'category',
        'image',
        'created_by',
    ];
    public function manufacture()
    {
        return $this->belongsTo(VehicleManufacture::class, 'vehicle_manufacture_id', 'id');
    }
    public function products()
    {
        return $this->hasMany(VehicleProduct::class, 'vehicle_model_id', 'id');
    }
    protected static function boot()
    {
        parent::boot();

        static::deleting(function ($model) {
            if ($model->products()->count() > 0) {
                throw new \Exception('Cannot delete vehicle model with associated records.');
            }
        });
    }
}
