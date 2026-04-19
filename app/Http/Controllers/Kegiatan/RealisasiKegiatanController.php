<?php

namespace App\Http\Controllers\Kegiatan;

use App\Http\Controllers\Controller;
use App\Models\TransIndikatorDetail;
use App\Models\TransRealisasiKegiatan;
use App\Models\VTransCapaianIndikator;
use App\Models\VTransIndikatorRekap;
use App\Models\VwTransRealisasi;
use App\Traits\ApiResponse;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class RealisasiKegiatanController extends Controller
{
    use ApiResponse;

    public function index()
    {
        $data = VTransCapaianIndikator::where('FLAG_ACTIVE', 1)
            ->orderBy('NAMA_PERIODE')
            ->orderBy('NAMA_BIDANG')
            ->get();

        return $this->success($data);
    }

    public function addRealisasi(Request $request, $detailId)
    {
        DB::beginTransaction();

        try {
            // 🔹 1. VALIDASI DETAIL
            $detail = TransIndikatorDetail::where('ID', $detailId)->first();

            if (!$detail) {
                return $this->error('Jenis kegiatan tidak ditemukan');
            }

            // 🔹 2. VALIDASI INPUT
            $validated = $request->validate([
                'TANGGAL_KEGIATAN' => 'required|date',
                'KETERANGAN' => 'nullable|string',
                'FILE_FOTO' => 'nullable|array',
                'FILE_FOTO.*' => 'file|mimes:png,jpg,jpeg|max:10240',
                'FILE_DOCUMENT' => 'nullable|file|max:20480',
            ]);

            // 🔥 3. VALIDASI LIMIT (TARGET)
            $currentCount = TransRealisasiKegiatan::where('INDIKATOR_DETAIL_ID', $detailId)
                ->where('FLAG_ACTIVE', 1)
                ->count();

            $target = (int) $detail->TARGET;

            if ($currentCount >= $target) {
                return $this->error("Realisasi sudah mencapai target ($target)");
            }

            // 🔹 4. HANDLE FILE FOTO
            if ($request->hasFile('FILE_FOTO')) {
                $paths = [];
                foreach ($request->file('FILE_FOTO') as $foto) {
                    $paths[] = '/storage/' . $foto->store('realisasi/foto', 'public');
                }
                $validated['FILE_FOTO'] = json_encode($paths, JSON_UNESCAPED_SLASHES);
            }

            // 🔹 5. HANDLE DOCUMENT
            if ($request->hasFile('FILE_DOCUMENT')) {
                $validated['FILE_DOCUMENT'] = '/storage/' .
                    $request->file('FILE_DOCUMENT')->store('realisasi/dokumen', 'public');
            }

            // 🔹 6. INSERT REALISASI
            $validated['INDIKATOR_DETAIL_ID'] = $detailId;
            $validated['FLAG_ACTIVE'] = 1;
            $validated['LOG_ENTRY_NAME'] = $request->user()?->name;
            $validated['LOG_ENTRY_DATE'] = now();

            TransRealisasiKegiatan::create($validated);

            // =========================================================
            // 🔥 7. UPDATE CAPAIAN (INI BAGIAN PENTING)
            // =========================================================

            $indikatorBidangId = $detail->INDIKATOR_BIDANG_ID;

            // 🔹 total realisasi semua detail
            $totalRealisasi = DB::table('TRANS_REALISASI_KEGIATAN as TRK')
                ->join('TRANS_INDIKATOR_DETAIL as TID', 'TRK.INDIKATOR_DETAIL_ID', '=', 'TID.ID')
                ->where('TID.INDIKATOR_BIDANG_ID', $indikatorBidangId)
                ->where('TRK.FLAG_ACTIVE', 1)
                ->count();

            // 🔹 total target semua detail
            $totalTarget = DB::table('TRANS_INDIKATOR_DETAIL')
                ->where('INDIKATOR_BIDANG_ID', $indikatorBidangId)
                ->sum('TARGET');

            // 🔹 hitung persen
            $persentase = $totalTarget > 0
                ? ($totalRealisasi / $totalTarget) * 100
                : 0;

            // 🔹 update capaian
            DB::table('TRANS_CAPAIAN_INDIKATOR')
                ->where('INDIKATOR_BIDANG_ID', $indikatorBidangId)
                ->update([
                    'REALISASI' => $totalRealisasi,
                    'TOTAL_KEGIATAN' => $totalRealisasi,
                    'PERSENTASE' => round($persentase, 2),
                    'LAST_CALCULATE_DATE' => now(),
                ]);

            DB::commit();

            return $this->success(null, 'Realisasi berhasil ditambahkan');
        } catch (\Throwable $e) {
            DB::rollBack();
            return $this->error($e->getMessage());
        }
    }

    public function show($id)
    {
        $header = VTransCapaianIndikator::where('CAPAIAN_ID', $id)->first();

        if (!$header) {
            return $this->error('Data tidak ditemukan');
        }

        $indikatorBidangId = $header->INDIKATOR_BIDANG_ID;

        // 🔹 2. REKAP
        $rekap = VTransIndikatorRekap::where('INDIKATOR_BIDANG_ID', $indikatorBidangId)
            ->get();

        // 🔹 3. REALISASI
        $realisasi = VwTransRealisasi::where('INDIKATOR_BIDANG_ID', $indikatorBidangId)
            ->orderBy('TANGGAL_KEGIATAN', 'desc')
            ->get();

        return $this->success([
            'header' => $header,
            'rekap' => $rekap,
            'realisasi' => $realisasi,
         ]);
    }
}
