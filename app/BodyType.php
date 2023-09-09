<?php

namespace App;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class BodyType extends Model
{
    use HasFactory;
    protected $fillable = [
        'name',
        'category',
        'image',
        'created_by',
    ];
    public function products()
    {
        return $this->hasMany(VehicleProduct::class, 'body_type_id', 'id');
    }
    protected static function boot()
    {
        parent::boot();

        static::deleting(function ($model) {
            if ($model->products()->count() > 0) {
                throw new \Exception('Cannot delete vehicle body type with associated records.');
            }
        });
    }
}
