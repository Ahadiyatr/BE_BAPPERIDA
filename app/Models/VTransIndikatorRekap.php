<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class VTransIndikatorRekap extends Model
{
    protected $table = 'v_trans_indikator_rekap';

    protected $primaryKey = 'ID';

    public $timestamps = false;

    protected function casts(): array
    {
        return [
            'TARGET' => 'decimal:2',
            'REALISASI' => 'decimal:2',
            'PERSENTASE' => 'decimal:2',
        ];
    }
}