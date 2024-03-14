<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Appartment extends Model
{
    use HasFactory;

    public function complex() {
        return $this->belongsTo(Complex::class);
    }
}
