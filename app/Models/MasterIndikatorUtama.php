<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Attributes\Fillable;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Relations\HasMany;

#[Fillable([
    'PROGRAM_ID',
    'KODE_INDIKATOR_UTAMA',
    'NAMA_INDIKATOR_UTAMA',
    'FLAG_ACTIVE',
    'LOG_ENTRY_NAME',
    'LOG_ENTRY_DATE',
    'LOG_UPDATE_NAME',
    'LOG_UPDATE_DATE',
])]
class MasterIndikatorUtama extends Model
{
    protected $table = 'MASTER_INDIKATOR_UTAMA';

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

    public function program(): BelongsTo
    {
        return $this->belongsTo(MasterProgram::class, 'PROGRAM_ID', 'ID');
    }

    public function indikator(): HasMany
    {
        return $this->hasMany(MasterIndikator::class, 'INDIKATOR_UTAMA_ID', 'ID');
    }
}
