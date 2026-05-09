<?php

namespace App\Http\Controllers;

use App\Models\MasterAktifitasUtama;
use App\Traits\ApiResponse;
use Illuminate\Http\Request;

class MasterAktifitasUtamaController extends Controller
{
    use ApiResponse;

    public function index()
    {
        $data = MasterAktifitasUtama::all();

        return $this->success($data);
    }

    public function store(Request $request)
    {
        $validated = $request->validate([
            'INDIKATOR_UTAMA_ID' => 'required|integer|exists:MASTER_INDIKATOR_UTAMA,ID',
            'NAMA_AKTIFITAS' => 'required|string|max:200',
            'BOBOT_TARGET' => 'required|numeric|min:0',
            'URUTAN' => 'required|integer|min:1',
            'FLAG_ACTIVE' => 'nullable|boolean',
        ], [], [
            'INDIKATOR_UTAMA_ID' => 'Indikator Utama ID',
            'NAMA_AKTIFITAS' => 'Nama Aktifitas',
            'BOBOT_TARGET' => 'Bobot Target',
            'URUTAN' => 'Urutan',
            'FLAG_ACTIVE' => 'Flag Active',
        ]);

        $validated['LOG_ENTRY_NAME'] = $request->user()?->name;
        $validated['LOG_ENTRY_DATE'] = now();

        $data = MasterAktifitasUtama::create($validated);

        return $this->created($data);
    }

    public function show(MasterAktifitasUtama $masterAktifitasUtama)
    {
        $masterAktifitasUtama->load('aktifitasUtama');
        return $this->success($masterAktifitasUtama);
    }

    public function update(Request $request, MasterAktifitasUtama $masterAktifitasUtama)
    {
        $validated = $request->validate([
            'INDIKATOR_UTAMA_ID' => 'sometimes|required|integer|exists:MASTER_INDIKATOR_UTAMA,ID',
            'NAMA_AKTIFITAS' => 'sometimes|required|string|max:200',
            'BOBOT_TARGET' => 'sometimes|required|numeric|min:0',
            'URUTAN' => 'sometimes|required|integer|min:1',
            'FLAG_ACTIVE' => 'nullable|boolean',
        ], [], [
            'INDIKATOR_UTAMA_ID' => 'Indikator Utama ID',
            'NAMA_AKTIFITAS' => 'Nama Aktifitas',
            'BOBOT_TARGET' => 'Bobot Target',
            'URUTAN' => 'Urutan',
            'FLAG_ACTIVE' => 'Flag Active',
        ]);

        $validated['LOG_UPDATE_NAME'] = $request->user()?->name;
        $validated['LOG_UPDATE_DATE'] = now();

        $masterAktifitasUtama->update($validated);

        return $this->success($masterAktifitasUtama, 'Data berhasil diupdate.');
    }

    public function destroy(MasterAktifitasUtama $masterAktifitasUtama)
    {
        $masterAktifitasUtama->delete();

        return $this->success(null, 'Data berhasil dihapus.');
    }
}
