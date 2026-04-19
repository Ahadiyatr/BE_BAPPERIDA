<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Attributes\Fillable;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Relations\HasMany;

#[Fillable([
    'PERIODE_ID',
    'BIDANG_ID',
    'MASTER_INDIKATOR_ID',
    'FLAG_ACTIVE',
    'LOG_ENTRY_NAME',
    'LOG_ENTRY_DATE',
    'LOG_UPDATE_NAME',
    'LOG_UPDATE_DATE',
])]
class TransIndikatorBidang extends Model
{
    protected $table = 'TRANS_INDIKATOR_BIDANG';

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

    public function periode(): BelongsTo
    {
        return $this->belongsTo(MasterPeriode::class, 'PERIODE_ID', 'ID');
    }

    public function bidang(): BelongsTo
    {
        return $this->belongsTo(MasterBidang::class, 'BIDANG_ID', 'ID');
    }

    public function masterIndikator(): BelongsTo
    {
        return $this->belongsTo(MasterIndikator::class, 'MASTER_INDIKATOR_ID', 'ID');
    }

    public function indikatorDetail(): HasMany
    {
        return $this->hasMany(TransIndikatorDetail::class, 'INDIKATOR_BIDANG_ID', 'ID');
    }
}
