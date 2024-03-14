<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Complex extends Model
{
    use HasFactory;

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
