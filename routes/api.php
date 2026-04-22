<?php

use App\Http\Controllers\AuthController;
use App\Http\Controllers\Kegiatan\RealisasiKegiatanController;
use App\Http\Controllers\Kegiatan\RencanaKegiatanController;
use App\Http\Controllers\MasterBidangController;
use App\Http\Controllers\MasterIndikatorController;
use App\Http\Controllers\MasterIndikatorUtamaController;
use App\Http\Controllers\MasterPeriodeController;
use App\Http\Controllers\MasterProgramController;
use App\Http\Controllers\TransCapaianIndikatorController;
use App\Http\Controllers\TransIndikatorBidangController;
use App\Http\Controllers\TransIndikatorDetailController;
use App\Http\Controllers\TransRealisasiKegiatanController;
use Illuminate\Support\Facades\Route;

// Auth
Route::post('/login', [AuthController::class, 'login']);
Route::middleware('auth:sanctum')->group(function () {
    Route::post('/logout', [AuthController::class, 'logout']);
    Route::get('/user', [AuthController::class, 'user']);

    // Master Data
    Route::apiResource('master-program', MasterProgramController::class);
    Route::apiResource('master-indikator-utama', MasterIndikatorUtamaController::class);
    Route::apiResource('master-indikator', MasterIndikatorController::class);
    Route::apiResource('master-bidang', MasterBidangController::class);
    Route::apiResource('master-periode', MasterPeriodeController::class);

    // perlu di cek lagi, apakah ini masih diperlukan atau sudah bisa dihapus karena sudah ada di RencanaKegiatanController
    Route::apiResource('trans-capaian-indikator', TransCapaianIndikatorController::class)->only(['index']);
    Route::apiResource('trans-indikator-bidang', TransIndikatorBidangController::class);
    Route::apiResource('trans-indikator-detail', TransIndikatorDetailController::class);
    Route::apiResource('trans-realisasi-kegiatan', TransRealisasiKegiatanController::class);

    // Rencana Kegiatan
    Route::get('/rencana-kegiatan', [RencanaKegiatanController::class, 'index']);
    Route::post('/rencana-kegiatan', [RencanaKegiatanController::class, 'addRencanaKegiatan']);
    Route::get('/rencana-kegiatan/{id}', [RencanaKegiatanController::class, 'show']);

    Route::get('/dropdown/rencana-kegiatan', [RencanaKegiatanController::class, 'dropdown']);
    Route::get('/dropdown/jenis-kegiatan', [RencanaKegiatanController::class, 'jenisKegiatanList']); // untuk konsistensi inputan

    // Realisasi Kegiatan
    Route::get('/realisasi-kegiatan', [RealisasiKegiatanController::class, 'index']);
    Route::get('/realisasi-kegiatan/{id}', [RealisasiKegiatanController::class, 'show']);
    Route::post('/realisasi-kegiatan/{detailId}', [RealisasiKegiatanController::class, 'addRealisasi']); // Next bisa dibuat 'Save As Draft' or 'Submit and Publish'
    Route::delete('/realisasi-kegiatan/{id}', [RealisasiKegiatanController::class, 'deleteRealisasi']);
    // Update Realisasi
    // Delete Realisasi
});
