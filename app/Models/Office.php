<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use TCG\Voyager\Traits\Spatial;
use TCG\Voyager\Traits\Translatable;

class Office extends Model
{
    use HasFactory;
    use Spatial;
    use Translatable;

    protected $spatial = ['coordinates'];
    protected $translatable = [
        'address',
        'time',
    ];
}
