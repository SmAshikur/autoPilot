<?php

namespace App;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class VehicleService extends Model
{
    use HasFactory;
    protected $guarded = ['id'];
    public function country()
    {
        return $this->belongsTo(\App\Country::class, 'country_id');
    }
}
