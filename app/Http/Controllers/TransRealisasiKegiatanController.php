<?php

namespace App\Http\Controllers;

use App\Models\TransRealisasiKegiatan;
use App\Traits\ApiResponse;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;

class TransRealisasiKegiatanController extends Controller
{
    use ApiResponse;

    public function index()
    {
        $data = TransRealisasiKegiatan::with('indikatorDetail')->get();
        
        // Transform data untuk memberikan full URL
        $data->transform(fn($item) => $this->formatPaths($item));

        return $this->success($data);
    }

    public function store(Request $request)
    {
        $validated = $request->validate([
            'INDIKATOR_DETAIL_ID' => 'nullable|integer|exists:TRANS_INDIKATOR_DETAIL,ID',
            'TANGGAL_KEGIATAN'    => 'required|date',
            'KETERANGAN'          => 'nullable|string',
            'FILE_FOTO'           => 'nullable|array',
            'FILE_FOTO.*'         => 'file|mimes:png,jpg,jpeg|max:10240',
            'FILE_DOCUMENT'       => 'nullable|file|max:20480',
            'FLAG_ACTIVE'         => 'nullable|boolean',
        ]);

        // Proses Multiple Foto
        if ($request->hasFile('FILE_FOTO')) {
            $paths = [];
            foreach ($request->file('FILE_FOTO') as $foto) {
                $paths[] = $foto->store('realisasi/foto', 'public');
            }
            $validated['FILE_FOTO'] = $paths; 
        }

        // Proses Single Dokumen
        if ($request->hasFile('FILE_DOCUMENT')) {
            $validated['FILE_DOCUMENT'] = $request->file('FILE_DOCUMENT')->store('realisasi/dokumen', 'public');
        }

        $validated['LOG_ENTRY_NAME'] = $request->user()?->name ?? 'System';
        $validated['LOG_ENTRY_DATE'] = now();

        $data = TransRealisasiKegiatan::create($validated);

        return $this->created($this->formatPaths($data));
    }

    public function show(TransRealisasiKegiatan $transRealisasiKegiatan)
    {
        return $this->success($this->formatPaths($transRealisasiKegiatan->load('indikatorDetail')));
    }

    public function update(Request $request, TransRealisasiKegiatan $transRealisasiKegiatan)
    {
        $validated = $request->validate([
            'INDIKATOR_DETAIL_ID' => 'sometimes|nullable|integer|exists:TRANS_INDIKATOR_DETAIL,ID',
            'TANGGAL_KEGIATAN'    => 'sometimes|required|date',
            'KETERANGAN'          => 'nullable|string',
            'FILE_FOTO'           => 'nullable|array',
            'FILE_FOTO.*'         => 'file|mimes:png,jpg,jpeg|max:10240',
            'FILE_DOCUMENT'       => 'nullable|file|max:20480',
            'FLAG_ACTIVE'         => 'nullable|boolean',
        ]);

        // Update Foto (Jika ada upload baru)
        if ($request->hasFile('FILE_FOTO')) {
            // Hapus file lama
            if ($transRealisasiKegiatan->FILE_FOTO) {
                foreach ($transRealisasiKegiatan->FILE_FOTO as $oldPath) {
                    Storage::disk('public')->delete($oldPath);
                }
            }

            $paths = [];
            foreach ($request->file('FILE_FOTO') as $foto) {
                $paths[] = $foto->store('realisasi/foto', 'public');
            }
            $validated['FILE_FOTO'] = $paths;
        }

        // Update Dokumen
        if ($request->hasFile('FILE_DOCUMENT')) {
            if ($transRealisasiKegiatan->FILE_DOCUMENT) {
                Storage::disk('public')->delete($transRealisasiKegiatan->FILE_DOCUMENT);
            }
            $validated['FILE_DOCUMENT'] = $request->file('FILE_DOCUMENT')->store('realisasi/dokumen', 'public');
        }

        $validated['LOG_UPDATE_NAME'] = $request->user()?->name ?? 'System';
        $validated['LOG_UPDATE_DATE'] = now();

        $transRealisasiKegiatan->update($validated);

        return $this->success($this->formatPaths($transRealisasiKegiatan), 'Data berhasil diupdate.');
    }

    public function destroy(TransRealisasiKegiatan $transRealisasiKegiatan)
    {
        // Bersihkan Storage
        if ($transRealisasiKegiatan->FILE_FOTO) {
            foreach ($transRealisasiKegiatan->FILE_FOTO as $path) {
                Storage::disk('public')->delete($path);
            }
        }

        if ($transRealisasiKegiatan->FILE_DOCUMENT) {
            Storage::disk('public')->delete($transRealisasiKegiatan->FILE_DOCUMENT);
        }

        $transRealisasiKegiatan->delete();

        return $this->success(null, 'Data berhasil dihapus.');
    }

    /**
     * Helper untuk mengubah path database menjadi URL publik yang bisa diakses browser
     */
    private function formatPaths($model)
    {
        // Format Foto (Array)
        if ($model->FILE_FOTO && is_array($model->FILE_FOTO)) {
            $model->FILE_FOTO = array_map(fn($path) => asset('storage/' . $path), $model->FILE_FOTO);
        }

        // Format Dokumen (String)
        if ($model->FILE_DOCUMENT) {
            $model->FILE_DOCUMENT = asset('storage/' . $model->FILE_DOCUMENT);
        }

        return $model;
    }
}