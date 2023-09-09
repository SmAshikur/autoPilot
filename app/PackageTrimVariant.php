<?php

namespace App;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class PackageTrimVariant extends Model
{
    use HasFactory;
    protected $fillable = [
        'name',
        'vehicle_manufacture_id',
        'vehicle_model_id',
        'created_by',
    ];
    public function manufacture()
    {
        return $this->belongsTo(VehicleManufacture::class, 'vehicle_manufacture_id', 'id');
    }
    public function model()
    {
        return $this->belongsTo(VehicleModel::class, 'vehicle_model_id', 'id');
    }
    public function local_purchases()
    {
        return $this->hasMany(LocalPurchase::class, 'packge_trim_id', 'id');
    }
    public function foreign_purchases()
    {
        return $this->hasMany(ForeginPurchase::class, 'packge_trim_id', 'id');
    }
    protected static function boot()
    {
        parent::boot();

        static::deleting(function ($model) {
            if ($model->local_purchases()->count() > 0 || $model->foreign_purchases()->count() > 0) {
                throw new \Exception('Cannot delete package/trim/variant with associated records.');
            }
        });
    }
}
