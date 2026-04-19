<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Attributes\Fillable;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

#[Fillable([
    'INDIKATOR_UTAMA_ID',
    'KODE_INDIKATOR',
    'NAMA_INDIKATOR',
    'SATUAN',
    'FLAG_ACTIVE',
    'LOG_ENTRY_NAME',
    'LOG_ENTRY_DATE',
    'LOG_UPDATE_NAME',
    'LOG_UPDATE_DATE',
])]
class MasterIndikator extends Model
{
    protected $table = 'MASTER_INDIKATOR';

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

    public function indikatorUtama(): BelongsTo
    {
        return $this->belongsTo(MasterIndikatorUtama::class, 'INDIKATOR_UTAMA_ID', 'ID');
    }
}
