<?php

namespace App\Http\Controllers;

use App\Traits\ApiResponse;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class DashboardController extends Controller
{
    use ApiResponse;

    public function index()
    {
        try {

            // 🔹 1. SUMMARY (top angka besar)
            $summary = DB::table('vw_dashboard_summary')->first();

            // 🔹 2. BAR CHART (per bidang)
            $bidang = DB::table('vw_dashboard_bidang')->get();

            // 🔹 3. PIE CHART (distribusi)
            $distribusi = DB::table('vw_dashboard_distribusi')->get();

            // 🔹 4. RADAR
            $radar = DB::table('vw_dashboard_radar')->get();

            return $this->success([
                'summary' => $summary,
                'bidang' => $bidang,
                'distribusi' => $distribusi,
                'radar' => $radar,
            ]);

        } catch (\Throwable $e) {
            return $this->error($e->getMessage());
        }
    }

    public function detailBidang($bidangId)
    {
        try {

            // 🔹 HEADER
            $header = DB::table('vw_dashboard_detail_bidang_header')
                ->where('BIDANG_ID', $bidangId)
                ->first();

            if (!$header) {
                return $this->error('Data bidang tidak ditemukan');
            }

            // 🔹 DETAIL LIST
            $detail = DB::table('vw_dashboard_detail_bidang')
                ->where('BIDANG_ID', $bidangId)
                ->orderBy('PERSENTASE', 'desc')
                ->get()
                ->map(function ($row, $index) {
                    return [
                        'NO' => $index + 1,
                        'INDIKATOR_ID' => $row->INDIKATOR_ID,
                        'NAMA_INDIKATOR' => $row->NAMA_INDIKATOR,
                        'TARGET' => $row->TARGET,
                        'REALISASI' => $row->REALISASI,
                        'PERSENTASE' => (float) $row->PERSENTASE
                    ];
                });

            return $this->success([
                'header' => [
                    'BIDANG_ID' => $header->BIDANG_ID,
                    'NAMA_BIDANG' => $header->NAMA_BIDANG,
                    'TOTAL_INDIKATOR' => (int) $header->TOTAL_INDIKATOR,
                    'TOTAL_KEGIATAN' => (int) $header->TOTAL_KEGIATAN,
                    'RATA_RATA_CAPAIAN' => (float) $header->RATA_RATA_CAPAIAN
                ],
                'detail' => $detail
            ]);

        } catch (\Throwable $e) {
            return $this->error($e->getMessage());
        }
    }
}
