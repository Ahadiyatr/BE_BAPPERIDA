<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Attributes\Fillable;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

#[Fillable([
    'INDIKATOR_DETAIL_ID',
    'TANGGAL_KEGIATAN',
    'KETERANGAN',
    'FILE_FOTO',
    'FILE_DOCUMENT',
    'FLAG_ACTIVE',
    'LOG_ENTRY_NAME',
    'LOG_ENTRY_DATE',
    'LOG_UPDATE_NAME',
    'LOG_UPDATE_DATE',
])]
class TransRealisasiKegiatan extends Model
{
    protected $table = 'TRANS_REALISASI_KEGIATAN';

    protected $primaryKey = 'ID';

    public $timestamps = false;

    protected function casts(): array
    {
        return [
            'TANGGAL_KEGIATAN' => 'date',
            'FILE_FOTO' => 'array',
            'FLAG_ACTIVE' => 'boolean',
            'LOG_ENTRY_DATE' => 'datetime',
            'LOG_UPDATE_DATE' => 'datetime',
        ];
    }

    public function indikatorDetail(): BelongsTo
    {
        return $this->belongsTo(TransIndikatorDetail::class, 'INDIKATOR_DETAIL_ID', 'ID');
    }
}
