<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use TCG\Voyager\Traits\Translatable;

class Appartment extends Model
{
    use HasFactory;
    use Translatable;

    protected $translatable = [
        'title', 
        'description',
        'deadline',
        'metro',
    ];

    public function complex() {
        return $this->belongsTo(Complex::class);
    }
}
