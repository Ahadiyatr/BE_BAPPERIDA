<?php

namespace App\Http\Controllers;

use App\Models\MasterBidang;
use App\Traits\ApiResponse;
use Illuminate\Http\Request;

class MasterBidangController extends Controller
{
    use ApiResponse;

    public function index()
    {
        $data = MasterBidang::all();

        return $this->success($data);
    }

    public function store(Request $request)
    {
        $validated = $request->validate([
            'NAMA_BIDANG' => 'required|string|max:150',
            'FLAG_ACTIVE' => 'nullable|boolean',
        ]);

        $validated['LOG_ENTRY_NAME'] = $request->user()?->name;
        $validated['LOG_ENTRY_DATE'] = now();

        $data = MasterBidang::create($validated);

        return $this->created($data);
    }

    public function show(MasterBidang $masterBidang)
    {
        return $this->success($masterBidang);
    }

    public function update(Request $request, MasterBidang $masterBidang)
    {
        $validated = $request->validate([
            'NAMA_BIDANG' => 'sometimes|required|string|max:150',
            'FLAG_ACTIVE' => 'nullable|boolean',
        ]);

        $validated['LOG_UPDATE_NAME'] = $request->user()?->name;
        $validated['LOG_UPDATE_DATE'] = now();

        $masterBidang->update($validated);

        return $this->success($masterBidang, 'Data berhasil diupdate.');
    }

    public function destroy(MasterBidang $masterBidang)
    {
        $masterBidang->delete();

        return $this->success(null, 'Data berhasil dihapus.');
    }
}
