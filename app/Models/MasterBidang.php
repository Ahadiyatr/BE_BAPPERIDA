<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Attributes\Fillable;
use Illuminate\Database\Eloquent\Model;

#[Fillable([
    'NAMA_BIDANG',
    'FLAG_ACTIVE',
    'LOG_ENTRY_NAME',
    'LOG_ENTRY_DATE',
    'LOG_UPDATE_NAME',
    'LOG_UPDATE_DATE',
])]
class MasterBidang extends Model
{
    protected $table = 'MASTER_BIDANG';

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
