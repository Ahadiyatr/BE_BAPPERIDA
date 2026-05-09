<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Attributes\Fillable;
use Illuminate\Database\Eloquent\Model;

#[Fillable([
    'INDIKATOR_UTAMA_ID',
    'NAMA_AKTIFITAS',
    'BOBOT_TARGET',
    'URUTAN',
    'FLAG_ACTIVE',
    'LOG_ENTRY_NAME',
    'LOG_ENTRY_DATE',
])]

class MasterAktifitasUtama extends Model
{
    protected $table = 'MASTER_AKTIFITAS_UTAMA';

    protected $primaryKey = 'ID';

    public $timestamps = false;

    protected function casts(): array
    {
        return [
            'BOBOT_TARGET' => 'decimal:2',
            'FLAG_ACTIVE' => 'boolean',
            'LOG_ENTRY_DATE' => 'datetime',
        ];
    }
}
