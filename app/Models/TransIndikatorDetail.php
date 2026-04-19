<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Attributes\Fillable;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Relations\HasMany;

#[Fillable([
    'INDIKATOR_BIDANG_ID',
    'JENIS_KEGIATAN',
    'TARGET',
])]
class TransIndikatorDetail extends Model
{
    protected $table = 'TRANS_INDIKATOR_DETAIL';

    protected $primaryKey = 'ID';

    public $timestamps = false;

    protected function casts(): array
    {
        return [
            'TARGET' => 'decimal:2',
        ];
    }

    public function indikatorBidang(): BelongsTo
    {
        return $this->belongsTo(TransIndikatorBidang::class, 'INDIKATOR_BIDANG_ID', 'ID');
    }

    public function realisasiKegiatan(): HasMany
    {
        return $this->hasMany(TransRealisasiKegiatan::class, 'INDIKATOR_DETAIL_ID', 'ID');
    }
}
