<?php

namespace App\Http\Controllers;

use App\Models\TransIndikatorBidang;
use App\Models\VTransIndikatorBidang;
use App\Traits\ApiResponse;
use Illuminate\Http\Request;

class TransIndikatorBidangController extends Controller
{
    use ApiResponse;

    public function index()
    {
        $data = VTransIndikatorBidang::all();

        return $this->success($data);
    }

    public function store(Request $request)
    {
        $validated = $request->validate([
            'PERIODE_ID' => 'required|integer|exists:MASTER_PERIODE,ID',
            'BIDANG_ID' => 'required|integer|exists:MASTER_BIDANG,ID',
            'MASTER_INDIKATOR_ID' => 'required|integer|exists:MASTER_INDIKATOR,ID',
            'FLAG_ACTIVE' => 'nullable|boolean',
        ]);

        $validated['LOG_ENTRY_NAME'] = $request->user()?->name;
        $validated['LOG_ENTRY_DATE'] = now();

        $data = TransIndikatorBidang::create($validated);

        return $this->created($data);
    }

    public function show(int $id)
    {
        $data = VTransIndikatorBidang::findOrFail($id);

        return $this->success($data);
    }

    public function update(Request $request, TransIndikatorBidang $transIndikatorBidang)
    {
        $validated = $request->validate([
            'PERIODE_ID' => 'sometimes|required|integer|exists:MASTER_PERIODE,ID',
            'BIDANG_ID' => 'sometimes|required|integer|exists:MASTER_BIDANG,ID',
            'MASTER_INDIKATOR_ID' => 'sometimes|required|integer|exists:MASTER_INDIKATOR,ID',
            'FLAG_ACTIVE' => 'nullable|boolean',
        ]);

        $validated['LOG_UPDATE_NAME'] = $request->user()?->name;
        $validated['LOG_UPDATE_DATE'] = now();

        $transIndikatorBidang->update($validated);

        return $this->success($transIndikatorBidang, 'Data berhasil diupdate.');
    }

    public function destroy(TransIndikatorBidang $transIndikatorBidang)
    {
        $transIndikatorBidang->delete();

        return $this->success(null, 'Data berhasil dihapus.');
    }
}
