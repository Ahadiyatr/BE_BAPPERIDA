<?php

namespace App\Http\Controllers;

use App\Models\MasterAktifitasUtama;
use App\Models\TransAktifitasUtama;
use App\Traits\ApiResponse;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;

class TransAktifitasUtamaController extends Controller
{
    use ApiResponse;

    private array $relations = [
        'masterAktifitas',
        'indikatorBidang',
        'periode',
    ];

    public function index(Request $request)
    {
        $query = TransAktifitasUtama::with($this->relations);

        if ($request->filled('PERIODE_ID')) {
            $query->where('PERIODE_ID', $request->integer('PERIODE_ID'));
        }

        if ($request->filled('INDIKATOR_BIDANG_ID')) {
            $query->where('INDIKATOR_BIDANG_ID', $request->integer('INDIKATOR_BIDANG_ID'));
        }

        if ($request->filled('MASTER_AKTIFITAS_ID')) {
            $query->where('MASTER_AKTIFITAS_ID', $request->integer('MASTER_AKTIFITAS_ID'));
        }

        if ($request->has('FLAG_ACTIVE')) {
            $query->where('FLAG_ACTIVE', $request->boolean('FLAG_ACTIVE'));
        }

        $data = $query->orderBy('ID')->get()->each(fn (TransAktifitasUtama $item) => $this->appendFileUrl($item));

        return $this->success($data);
    }

    public function store(Request $request)
    {
        $validated = $request->validate([
            'MASTER_AKTIFITAS_ID' => 'required|integer|exists:MASTER_AKTIFITAS_UTAMA,ID',
            'INDIKATOR_BIDANG_ID' => 'required|integer|exists:TRANS_INDIKATOR_BIDANG,ID',
            'PERIODE_ID' => 'required|integer|exists:MASTER_PERIODE,ID',
            'NAMA_AKTIFITAS' => 'nullable|string|max:300',
            'TARGET' => 'nullable|numeric|min:0',
            'REALISASI' => 'nullable|numeric|min:0',
            'BOBOT_TARGET' => 'nullable|numeric|min:0|max:100',
            'BOBOT_REALISASI' => 'nullable|numeric|min:0|max:100',
            'KETERANGAN' => 'nullable|string',
            'FILE_BUKTI' => 'nullable|file|max:20480',
            'FLAG_ACTIVE' => 'nullable|boolean',
        ]);

        $validated['NAMA_AKTIFITAS'] = $validated['NAMA_AKTIFITAS']
            ?? $this->resolveNamaAktifitas($validated['MASTER_AKTIFITAS_ID']);
        $validated['TARGET'] = $validated['TARGET'] ?? 1;
        $validated['REALISASI'] = $validated['REALISASI'] ?? 0;
        $validated['BOBOT_TARGET'] = $validated['BOBOT_TARGET'] ?? 35;
        $validated['BOBOT_REALISASI'] = $validated['BOBOT_REALISASI'] ?? 0;

        if ($request->hasFile('FILE_BUKTI')) {
            $validated['FILE_BUKTI'] = $request->file('FILE_BUKTI')->store('aktifitas-utama/bukti', 'public');
        }

        $validated['LOG_ENTRY_NAME'] = $request->user()?->name ?? 'System';
        $validated['LOG_ENTRY_DATE'] = now();

        $data = TransAktifitasUtama::create($validated)->load($this->relations);

        return $this->created($this->appendFileUrl($data));
    }

    public function show(TransAktifitasUtama $transAktifitasUtama)
    {
        return $this->success($this->appendFileUrl($transAktifitasUtama->load($this->relations)));
    }

    public function update(Request $request, TransAktifitasUtama $transAktifitasUtama)
    {
        $validated = $request->validate([
            'MASTER_AKTIFITAS_ID' => 'sometimes|required|integer|exists:MASTER_AKTIFITAS_UTAMA,ID',
            'INDIKATOR_BIDANG_ID' => 'sometimes|required|integer|exists:TRANS_INDIKATOR_BIDANG,ID',
            'PERIODE_ID' => 'sometimes|required|integer|exists:MASTER_PERIODE,ID',
            'NAMA_AKTIFITAS' => 'sometimes|nullable|string|max:300',
            'TARGET' => 'sometimes|nullable|numeric|min:0',
            'REALISASI' => 'sometimes|nullable|numeric|min:0',
            'BOBOT_TARGET' => 'sometimes|nullable|numeric|min:0|max:100',
            'BOBOT_REALISASI' => 'sometimes|nullable|numeric|min:0|max:100',
            'KETERANGAN' => 'nullable|string',
            'FILE_BUKTI' => 'nullable|file|max:20480',
            'REMOVE_FILE_BUKTI' => 'nullable|boolean',
            'FLAG_ACTIVE' => 'nullable|boolean',
        ]);

        if (array_key_exists('NAMA_AKTIFITAS', $validated)
            && $validated['NAMA_AKTIFITAS'] === null
            && array_key_exists('MASTER_AKTIFITAS_ID', $validated)) {
            $validated['NAMA_AKTIFITAS'] = $this->resolveNamaAktifitas($validated['MASTER_AKTIFITAS_ID']);
        }

        if ($request->boolean('REMOVE_FILE_BUKTI') && $transAktifitasUtama->FILE_BUKTI) {
            Storage::disk('public')->delete($transAktifitasUtama->FILE_BUKTI);
            $validated['FILE_BUKTI'] = null;
        }

        if ($request->hasFile('FILE_BUKTI')) {
            if ($transAktifitasUtama->FILE_BUKTI) {
                Storage::disk('public')->delete($transAktifitasUtama->FILE_BUKTI);
            }

            $validated['FILE_BUKTI'] = $request->file('FILE_BUKTI')->store('aktifitas-utama/bukti', 'public');
        }

        unset($validated['REMOVE_FILE_BUKTI']);

        $validated['LOG_UPDATE_NAME'] = $request->user()?->name ?? 'System';
        $validated['LOG_UPDATE_DATE'] = now();

        $transAktifitasUtama->update($validated);

        return $this->success(
            $this->appendFileUrl($transAktifitasUtama->load($this->relations)),
            'Data berhasil diupdate.'
        );
    }

    public function destroy(TransAktifitasUtama $transAktifitasUtama)
    {
        if ($transAktifitasUtama->FILE_BUKTI) {
            Storage::disk('public')->delete($transAktifitasUtama->FILE_BUKTI);
        }

        TransAktifitasUtama::destroy($transAktifitasUtama->getKey());

        return $this->success(null, 'Data berhasil dihapus.');
    }

    private function resolveNamaAktifitas(int $masterAktifitasId): string
    {
        return MasterAktifitasUtama::query()
            ->whereKey($masterAktifitasId)
            ->value('NAMA_AKTIFITAS');
    }

    private function appendFileUrl(TransAktifitasUtama $model): TransAktifitasUtama
    {
        $model->FILE_BUKTI_URL = $model->FILE_BUKTI ? asset('storage/' . $model->FILE_BUKTI) : null;

        return $model;
    }
}
