<?php

namespace App\Http\Controllers;

use App\Models\JenisKegiatan;
use App\Traits\ApiResponse;
use Illuminate\Http\Request;

class JenisKegiatanController extends Controller
{
    use ApiResponse;

    public function index()
    {
        $data = JenisKegiatan::all();

        return $this->success($data);
    }

    public function store(Request $request)
    {
        $validated = $request->validate([
            'NAMA_KEGIATAN' => 'required|string|max:150',
            'FLAG_ACTIVE' => 'nullable|boolean',
        ]);

        $validated['LOG_ENTRY_NAME'] = $request->user()?->name;
        $validated['LOG_ENTRY_DATE'] = now();

        $data = JenisKegiatan::create($validated);

        return $this->created($data);
    }

    public function show(JenisKegiatan $jenisKegiatan)
    {
        return $this->success($jenisKegiatan);
    }

    public function update(Request $request, JenisKegiatan $jenisKegiatan)
    {
        $validated = $request->validate([
            'NAMA_KEGIATAN' => 'sometimes|required|string|max:150',
            'FLAG_ACTIVE' => 'nullable|boolean',
        ]);

        $validated['LOG_UPDATE_NAME'] = $request->user()?->name;
        $validated['LOG_UPDATE_DATE'] = now();

        $jenisKegiatan->update($validated);

        return $this->success($jenisKegiatan, 'Data berhasil diupdate.');
    }

    public function destroy(JenisKegiatan $jenisKegiatan)
    {
        $jenisKegiatan->delete();

        return $this->success(null, 'Data berhasil dihapus.');
    }
}
