<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class VTransIndikatorBidang extends Model
{
    protected $table = 'v_trans_indikator_bidang';

    protected $primaryKey = 'ID';

    public $timestamps = false;

    protected function casts(): array
    {
        return [
            'FLAG_ACTIVE' => 'boolean',
            'LOG_ENTRY_DATE' => 'datetime',
            'LOG_UPDATE_DATE' => 'datetime',
        ];
    }
}
