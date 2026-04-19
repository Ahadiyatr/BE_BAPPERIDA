<?php

namespace App\Http\Controllers;

use App\Models\MasterIndikator;
use App\Traits\ApiResponse;
use Illuminate\Http\Request;

class MasterIndikatorController extends Controller
{
    use ApiResponse;

    public function index()
    {
        $data = MasterIndikator::with('indikatorUtama')->get();

        return $this->success($data);
    }

    public function store(Request $request)
    {
        $validated = $request->validate([
            'INDIKATOR_UTAMA_ID' => 'required|integer|exists:MASTER_INDIKATOR_UTAMA,ID',
            'KODE_INDIKATOR' => 'required|string|max:50',
            'NAMA_INDIKATOR' => 'required|string|max:200',
            'SATUAN' => 'nullable|string|max:50',
            'FLAG_ACTIVE' => 'nullable|boolean',
        ]);

        $validated['LOG_ENTRY_NAME'] = $request->user()?->name;
        $validated['LOG_ENTRY_DATE'] = now();

        $data = MasterIndikator::create($validated);

        return $this->created($data);
    }

    public function show(MasterIndikator $masterIndikator)
    {
        $masterIndikator->load('indikatorUtama');

        return $this->success($masterIndikator);
    }

    public function update(Request $request, MasterIndikator $masterIndikator)
    {
        $validated = $request->validate([
            'INDIKATOR_UTAMA_ID' => 'sometimes|required|integer|exists:MASTER_INDIKATOR_UTAMA,ID',
            'KODE_INDIKATOR' => 'sometimes|required|string|max:50',
            'NAMA_INDIKATOR' => 'sometimes|required|string|max:200',
            'SATUAN' => 'nullable|string|max:50',
            'FLAG_ACTIVE' => 'nullable|boolean',
        ]);

        $validated['LOG_UPDATE_NAME'] = $request->user()?->name;
        $validated['LOG_UPDATE_DATE'] = now();

        $masterIndikator->update($validated);

        return $this->success($masterIndikator, 'Data berhasil diupdate.');
    }

    public function destroy(MasterIndikator $masterIndikator)
    {
        $masterIndikator->delete();

        return $this->success(null, 'Data berhasil dihapus.');
    }
}
