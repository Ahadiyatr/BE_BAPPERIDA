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
}
