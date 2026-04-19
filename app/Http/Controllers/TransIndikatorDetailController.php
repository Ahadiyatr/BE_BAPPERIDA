<?php

namespace App\Http\Controllers;

use App\Models\TransIndikatorDetail;
use App\Traits\ApiResponse;
use Illuminate\Http\Request;

class TransIndikatorDetailController extends Controller
{
    use ApiResponse;

    public function index()
    {
        $data = TransIndikatorDetail::with('indikatorBidang')->get();

        return $this->success($data);
    }

    public function store(Request $request)
    {
        $validated = $request->validate([
            'INDIKATOR_BIDANG_ID' => 'required|integer|exists:TRANS_INDIKATOR_BIDANG,ID',
            'JENIS_KEGIATAN' => 'nullable|string|max:100',
            'TARGET' => 'nullable|numeric|min:0',
        ]);

        $data = TransIndikatorDetail::create($validated);

        return $this->created($data);
    }

    public function show(TransIndikatorDetail $transIndikatorDetail)
    {
        $transIndikatorDetail->load('indikatorBidang', 'realisasiKegiatan');

        return $this->success($transIndikatorDetail);
    }

    public function update(Request $request, TransIndikatorDetail $transIndikatorDetail)
    {
        $validated = $request->validate([
            'INDIKATOR_BIDANG_ID' => 'sometimes|required|integer|exists:TRANS_INDIKATOR_BIDANG,ID',
            'JENIS_KEGIATAN' => 'nullable|string|max:100',
            'TARGET' => 'nullable|numeric|min:0',
        ]);

        $transIndikatorDetail->update($validated);

        return $this->success($transIndikatorDetail, 'Data berhasil diupdate.');
    }

    public function destroy(TransIndikatorDetail $transIndikatorDetail)
    {
        $transIndikatorDetail->delete();

        return $this->success(null, 'Data berhasil dihapus.');
    }
}
