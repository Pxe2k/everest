<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use TCG\Voyager\Traits\Translatable;

class Complex extends Model
{
    use HasFactory;
    use Translatable;

    protected $translatable = [
        'title',
        'description',
    ];

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
