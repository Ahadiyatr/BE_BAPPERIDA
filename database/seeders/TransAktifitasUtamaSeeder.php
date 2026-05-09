<?php

namespace Database\Seeders;

use App\Models\MasterAktifitasUtama;
use App\Models\TransAktifitasUtama;
use App\Models\TransIndikatorBidang;
use Illuminate\Database\Seeder;

class TransAktifitasUtamaSeeder extends Seeder
{
    public function run(): void
    {
        $masterAktifitas = MasterAktifitasUtama::query()
            ->where('FLAG_ACTIVE', 1)
            ->orderBy('URUTAN')
            ->limit(5)
            ->get();

        $indikatorBidang = TransIndikatorBidang::query()
            ->where('FLAG_ACTIVE', 1)
            ->orderBy('ID')
            ->limit(10)
            ->get();

        if ($masterAktifitas->isEmpty() || $indikatorBidang->isEmpty()) {
            $this->command?->warn('Seeder TransAktifitasUtama dilewati karena MASTER_AKTIFITAS_UTAMA atau TRANS_INDIKATOR_BIDANG belum memiliki data aktif.');
            return;
        }

        $rows = [];

        foreach ($indikatorBidang as $indikator) {
            foreach ($masterAktifitas as $index => $master) {
                $target = ($index % 3) + 1;
                $realisasi = min($target, max(0, $target - (($indikator->ID + $index) % 2)));
                $bobotTarget = (float) ($master->BOBOT_TARGET ?? 35);
                $bobotRealisasi = $target > 0
                    ? round($bobotTarget * ($realisasi / $target), 2)
                    : 0;

                $rows[] = [
                    'MASTER_AKTIFITAS_ID' => $master->ID,
                    'INDIKATOR_BIDANG_ID' => $indikator->ID,
                    'PERIODE_ID' => $indikator->PERIODE_ID,
                    'NAMA_AKTIFITAS' => $master->NAMA_AKTIFITAS,
                    'TARGET' => $target,
                    'REALISASI' => $realisasi,
                    'BOBOT_TARGET' => $bobotTarget,
                    'BOBOT_REALISASI' => $bobotRealisasi,
                    'KETERANGAN' => 'Dummy data aktifitas utama untuk indikator bidang #' . $indikator->ID,
                    'FILE_BUKTI' => null,
                    'FLAG_ACTIVE' => 1,
                    'LOG_ENTRY_NAME' => 'Seeder',
                    'LOG_ENTRY_DATE' => now(),
                ];
            }
        }

        foreach ($rows as $row) {
            TransAktifitasUtama::updateOrCreate(
                [
                    'MASTER_AKTIFITAS_ID' => $row['MASTER_AKTIFITAS_ID'],
                    'INDIKATOR_BIDANG_ID' => $row['INDIKATOR_BIDANG_ID'],
                    'PERIODE_ID' => $row['PERIODE_ID'],
                ],
                $row
            );
        }

        $this->command?->info('Dummy data TRANS_AKTIFITAS_UTAMA berhasil disiapkan.');
    }
}
