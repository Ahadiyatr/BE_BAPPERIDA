<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class VwTransRealisasi extends Model
{
    protected $table = 'vw_trans_realisasi';

    protected $primaryKey = 'ID';

    public $timestamps = false;

    protected function casts(): array
    {
        return [
            'REALISASI' => 'decimal:2',
        ];
    }
}