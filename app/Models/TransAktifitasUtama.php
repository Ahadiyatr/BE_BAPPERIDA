<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Attributes\Fillable;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

#[Fillable([
    'MASTER_AKTIFITAS_ID',
    'INDIKATOR_BIDANG_ID',
    'PERIODE_ID',
    'NAMA_AKTIFITAS',
    'TARGET',
    'REALISASI',
    'BOBOT_TARGET',
    'BOBOT_REALISASI',
    'KETERANGAN',
    'FILE_BUKTI',
    'FLAG_ACTIVE',
    'LOG_ENTRY_NAME',
    'LOG_ENTRY_DATE',
    'LOG_UPDATE_NAME',
    'LOG_UPDATE_DATE',
])]

class TransAktifitasUtama extends Model
{
    protected $table = 'TRANS_AKTIFITAS_UTAMA';

    protected $primaryKey = 'ID';

    public $timestamps = false;

    protected function casts(): array
    {
        return [
            'TARGET' => 'decimal:2',
            'REALISASI' => 'decimal:2',
            'BOBOT_TARGET' => 'decimal:2',
            'BOBOT_REALISASI' => 'decimal:2',
            'FLAG_ACTIVE' => 'boolean',
            'LOG_ENTRY_DATE' => 'datetime',
            'LOG_UPDATE_DATE' => 'datetime',
        ];
    }

    public function masterAktifitas(): BelongsTo
    {
        return $this->belongsTo(MasterAktifitasUtama::class, 'MASTER_AKTIFITAS_ID', 'ID');
    }

    public function indikatorBidang(): BelongsTo
    {
        return $this->belongsTo(TransIndikatorBidang::class, 'INDIKATOR_BIDANG_ID', 'ID');
    }

    public function periode(): BelongsTo
    {
        return $this->belongsTo(MasterPeriode::class, 'PERIODE_ID', 'ID');
    }
}
