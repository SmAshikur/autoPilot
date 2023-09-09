<?php

namespace App;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ModelOrigin extends Model
{
    use HasFactory;
    protected $fillable = ['model'];
    public function products()
    {
        return $this->hasMany(VehicleProduct::class, 'model_origin_id', 'id');
    }
    protected static function boot()
    {
        parent::boot();

        static::deleting(function ($model) {
            if ($model->products()->count() > 0) {
                throw new \Exception('Cannot delete model origin with associated records.');
            }
        });
    }
}
