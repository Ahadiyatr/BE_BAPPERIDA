<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class VTransCapaianIndikator extends Model
{
    protected $table = 'vw_trans_capaian_indikator';

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