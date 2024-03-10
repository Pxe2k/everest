<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use TCG\Voyager\Traits\Spatial;

class Office extends Model
{
    use HasFactory;
    use Spatial;

    protected $spatial = ['coordinates'];
}
