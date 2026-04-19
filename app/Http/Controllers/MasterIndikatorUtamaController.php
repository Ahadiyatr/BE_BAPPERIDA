<?php

namespace App\Http\Controllers;

use App\Models\MasterIndikatorUtama;
use App\Traits\ApiResponse;
use Illuminate\Http\Request;

class MasterIndikatorUtamaController extends Controller
{
    use ApiResponse;

    public function index()
    {
        $data = MasterIndikatorUtama::with('program')->get();

        return $this->success($data);
    }

    public function store(Request $request)
    {
        $validated = $request->validate([
            'PROGRAM_ID' => 'required|integer|exists:MASTER_PROGRAM,ID',
            'KODE_INDIKATOR_UTAMA' => 'required|string|max:50',
            'NAMA_INDIKATOR_UTAMA' => 'required|string|max:200',
            'FLAG_ACTIVE' => 'nullable|boolean',
        ]);

        $validated['LOG_ENTRY_NAME'] = $request->user()?->name;
        $validated['LOG_ENTRY_DATE'] = now();

        $data = MasterIndikatorUtama::create($validated);

        return $this->created($data);
    }

    public function show(MasterIndikatorUtama $masterIndikatorUtama)
    {
        $masterIndikatorUtama->load('program');

        return $this->success($masterIndikatorUtama);
    }

    public function update(Request $request, MasterIndikatorUtama $masterIndikatorUtama)
    {
        $validated = $request->validate([
            'PROGRAM_ID' => 'sometimes|required|integer|exists:MASTER_PROGRAM,ID',
            'KODE_INDIKATOR_UTAMA' => 'sometimes|required|string|max:50',
            'NAMA_INDIKATOR_UTAMA' => 'sometimes|required|string|max:200',
            'FLAG_ACTIVE' => 'nullable|boolean',
        ]);

        $validated['LOG_UPDATE_NAME'] = $request->user()?->name;
        $validated['LOG_UPDATE_DATE'] = now();

        $masterIndikatorUtama->update($validated);

        return $this->success($masterIndikatorUtama, 'Data berhasil diupdate.');
    }

    public function destroy(MasterIndikatorUtama $masterIndikatorUtama)
    {
        $masterIndikatorUtama->delete();

        return $this->success(null, 'Data berhasil dihapus.');
    }
}
