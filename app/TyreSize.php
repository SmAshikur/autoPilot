<?php

namespace App;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class TyreSize extends Model
{
    use HasFactory;
    protected $fillable = ['size', 'created_by'];
    public function local_purchases()
    {
        return $this->hasMany(LocalPurchase::class, 'tyre_size_id', 'id');
    }
    public function foreign_purchases()
    {
        return $this->hasMany(ForeginPurchase::class, 'tyre_size_id', 'id');
    }
    protected static function boot()
    {
        parent::boot();

        static::deleting(function ($model) {
            if ($model->local_purchases()->count() > 0 || $model->foreign_purchases()->count() > 0) {
                throw new \Exception('Cannot delete tyre size with associated records.');
            }
        });
    }
}
