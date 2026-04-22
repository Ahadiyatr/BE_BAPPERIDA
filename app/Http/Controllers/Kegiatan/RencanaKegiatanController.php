<?php

namespace App\Http\Controllers\Kegiatan;

use App\Http\Controllers\Controller;
use App\Models\TransIndikatorBidang;
use App\Models\TransIndikatorDetail;
use App\Models\TransRealisasiKegiatan;
use App\Models\VTransCapaianIndikator;
use App\Models\VTransIndikatorRekap;
use App\Models\VwTransRealisasi;
use App\Traits\ApiResponse;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;


class RencanaKegiatanController extends Controller
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

    public function addRencanaKegiatan(Request $request)
    {
        DB::beginTransaction();

        try {
            // =================================================
            // 🔹 VALIDASI INPUT (STRONG)
            // =================================================
            $validated = $request->validate([
                'PERIODE_ID' => 'required|exists:MASTER_PERIODE,ID',
                'BIDANG_ID' => 'required|exists:MASTER_BIDANG,ID',
                'MASTER_INDIKATOR_ID' => 'required|exists:MASTER_INDIKATOR,ID',

                'DETAIL' => 'required|array|min:1',
                'DETAIL.*.JENIS_KEGIATAN' => 'required|string|max:255',
                'DETAIL.*.TARGET' => 'required|numeric|min:1',
            ]);

            // =================================================
            // 🔥 1. VALIDASI INDIKATOR EXIST (SUDAH CUKUP)
            // =================================================
            $indikatorExists = DB::table('MASTER_INDIKATOR')
                ->where('ID', $validated['MASTER_INDIKATOR_ID'])
                ->exists();

            if (!$indikatorExists) {
                return $this->error('Indikator tidak valid');
            }

            // =================================================
            // 🔥 2. PREVENT DUPLICATE HEADER
            // =================================================
            $exists = TransIndikatorBidang::where('PERIODE_ID', $validated['PERIODE_ID'])
                ->where('BIDANG_ID', $validated['BIDANG_ID'])
                ->where('MASTER_INDIKATOR_ID', $validated['MASTER_INDIKATOR_ID'])
                ->where('FLAG_ACTIVE', 1)
                ->exists();

            if ($exists) {
                return $this->error('Rencana kegiatan sudah ada untuk kombinasi ini');
            }

            // =================================================
            // 🔥 3. INSERT HEADER
            // =================================================
            $header = TransIndikatorBidang::create([
                'PERIODE_ID' => $validated['PERIODE_ID'],
                'BIDANG_ID' => $validated['BIDANG_ID'],
                'MASTER_INDIKATOR_ID' => $validated['MASTER_INDIKATOR_ID'],
                'FLAG_ACTIVE' => 1,
                'LOG_ENTRY_NAME' => $request->user()?->name,
                'LOG_ENTRY_DATE' => now(),
            ]);

            // =================================================
            // 🔥 4. INSERT DETAIL + VALIDASI DUPLIKAT
            // =================================================
            $totalTarget = 0;
            $jenisList = [];

            foreach ($validated['DETAIL'] as $item) {

                // 🚫 duplicate dalam 1 request
                if (in_array($item['JENIS_KEGIATAN'], $jenisList)) {
                    DB::rollBack();
                    return $this->error("Jenis kegiatan duplicate: {$item['JENIS_KEGIATAN']}");
                }

                $jenisList[] = $item['JENIS_KEGIATAN'];

                TransIndikatorDetail::create([
                    'INDIKATOR_BIDANG_ID' => $header->ID,
                    'JENIS_KEGIATAN' => $item['JENIS_KEGIATAN'],
                    'TARGET' => $item['TARGET'],
                ]);

                $totalTarget += $item['TARGET'];
            }

            // =================================================
            // 🔥 5. INSERT CAPAIAN
            // =================================================
            DB::table('TRANS_CAPAIAN_INDIKATOR')->insert([
                'INDIKATOR_BIDANG_ID' => $header->ID,
                'TARGET' => $totalTarget,
                'REALISASI' => 0,
                'PERSENTASE' => 0,
                'TOTAL_KEGIATAN' => 0,
                'FLAG_ACTIVE' => 1,
                'LOG_ENTRY_NAME' => $request->user()?->name,
                'LOG_ENTRY_DATE' => now(),
            ]);

            DB::commit();

            return $this->created([
                'header' => $header,
                'total_target' => $totalTarget
            ], 'Rencana kegiatan berhasil dibuat');

        } catch (\Throwable $e) {
            DB::rollBack();
            return $this->error($e->getMessage());
        }
    }

    public function show($id)
    {
        // 🔹 1. HEADER
        $header = VTransCapaianIndikator::where('CAPAIAN_ID', $id)->first();

        if (!$header) {
            return $this->error('Data tidak ditemukan');
        }

        $indikatorBidangId = $header->INDIKATOR_BIDANG_ID;

        // 🔹 2. REKAP
        $rekap = VTransIndikatorRekap::where('INDIKATOR_BIDANG_ID', $indikatorBidangId)
            ->get();

        // 🔹 3. REALISASI
        $realisasi = TransRealisasiKegiatan::whereHas('indikatorDetail', function($q) use ($indikatorBidangId) {
                $q->where('INDIKATOR_BIDANG_ID', $indikatorBidangId);
            })
            ->orderBy('TANGGAL_KEGIATAN', 'desc')
            ->get()
            ->map(function($item) {
                return [
                    'ID' => $item->ID,
                    'TANGGAL_KEGIATAN' => $item->TANGGAL_KEGIATAN,
                    'KETERANGAN' => $item->KETERANGAN,
                    'FILE_FOTO' => $item->FILE_FOTO,
                    'PATH_FOTO' => $item->file_foto_full,
                    'FILE_DOCUMENT' => $item->FILE_DOCUMENT,
                    'INDIKATOR_BIDANG_ID' => optional($item->indikatorDetail)->INDIKATOR_BIDANG_ID,
                    'JENIS_KEGIATAN' => optional($item->indikatorDetail)->JENIS_KEGIATAN,
                ];
            });

        return $this->success([
            'header' => $header,
            'rekap' => $rekap,
            'realisasi' => $realisasi,
        ]);
    }

    // =========================================================
    // 🔥 2. FOR DROPDOWN
    // =========================================================
    public function jenisKegiatanList()
    {
        $data = DB::table('MASTER_JENIS_KEGIATAN')
            ->where('FLAG_ACTIVE', 1)
            ->select(
                'ID as value',
                'NAMA_KEGIATAN as label'
            )
            ->orderBy('NAMA_KEGIATAN')
            ->get();

        return $this->success($data);
    }

        public function dropdown()
    {
        // 🔹 PERIODE
        $periode = DB::table('MASTER_PERIODE')
            ->where('FLAG_ACTIVE', 1)
            ->select('ID as value', 'NAMA_PERIODE as label')
            ->get();

        // 🔹 BIDANG
        $bidang = DB::table('MASTER_BIDANG')
            ->where('FLAG_ACTIVE', 1)
            ->select('ID as value', 'NAMA_BIDANG as label')
            ->get();

        // 🔹 PROGRAM
        $program = DB::table('MASTER_PROGRAM')
            ->where('FLAG_ACTIVE', 1)
            ->select('ID as value', 'NAMA_PROGRAM as label')
            ->get();

        // 🔹 INDIKATOR UTAMA (punya PROGRAM_ID)
        $indikatorUtama = DB::table('MASTER_INDIKATOR_UTAMA')
            ->where('FLAG_ACTIVE', 1)
            ->select(
                'ID as value',
                'PROGRAM_ID',
                'NAMA_INDIKATOR_UTAMA as label'
            )
            ->get();

        // 🔹 INDIKATOR (punya INDIKATOR_UTAMA_ID)
        $indikator = DB::table('MASTER_INDIKATOR')
            ->where('FLAG_ACTIVE', 1)
            ->select(
                'ID as value',
                'INDIKATOR_UTAMA_ID',
                'NAMA_INDIKATOR as label'
            )
            ->get();

        return $this->success([
            'periode' => $periode,
            'bidang' => $bidang,
            'program' => $program,
            'indikator_utama' => $indikatorUtama,
            'indikator' => $indikator,
        ]);
    }
}
