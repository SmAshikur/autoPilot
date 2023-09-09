<?php

namespace App;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class DisplacementEngineCc extends Model
{
    use HasFactory;
    protected $fillable = [
        'cc',
        'created_by',
    ];
    public function products()
    {
        return $this->hasMany(VehicleProduct::class, 'displacement_engine_cc_id', 'id');
    }
    protected static function boot()
    {
        parent::boot();

        static::deleting(function ($model) {
            if ($model->products()->count() > 0) {
                throw new \Exception('Cannot delete displacement engine cc with associated records.');
            }
        });
    }
}
