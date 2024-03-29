<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use TCG\Voyager\Traits\Translatable;
use TCG\Voyager\Traits\Spatial;

class Complex extends Model
{
    use HasFactory;
    use Translatable;
    use Spatial;

    protected $translatable = [
        'title',
        'description',
    ];

    protected $spatial = ['coordinates'];

    public function complexAdvantage() {
        return $this->hasMany(ComplexAdvantage::class);
    }

    public function complexPeculiarity() {
        return $this->hasMany(ComplexPeculiarity::class);
    }

    public function apartments() {
        return $this->hasMany(Appartment::class);
    }
}
