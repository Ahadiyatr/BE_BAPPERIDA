<?php

namespace App\Http\Controllers;

use App\Models\MasterPeriode;
use App\Traits\ApiResponse;
use Illuminate\Http\Request;

class MasterPeriodeController extends Controller
{
    use ApiResponse;

    public function index()
    {
        $data = MasterPeriode::all();

        return $this->success($data);
    }

    public function store(Request $request)
    {
        $validated = $request->validate([
            'NAMA_PERIODE' => 'required|string|max:100',
            'START_DATE' => 'required|date',
            'END_DATE' => 'required|date|after_or_equal:START_DATE',
            'STATUS' => 'nullable|in:OPEN,LOCKED',
            'FLAG_ACTIVE' => 'nullable|boolean',
        ]);

        $validated['LOG_ENTRY_NAME'] = $request->user()?->name;
        $validated['LOG_ENTRY_DATE'] = now();

        $data = MasterPeriode::create($validated);

        return $this->created($data);
    }

    public function show(MasterPeriode $masterPeriode)
    {
        return $this->success($masterPeriode);
    }

    public function update(Request $request, MasterPeriode $masterPeriode)
    {
        $validated = $request->validate([
            'NAMA_PERIODE' => 'sometimes|required|string|max:100',
            'START_DATE' => 'sometimes|required|date',
            'END_DATE' => 'sometimes|required|date|after_or_equal:START_DATE',
            'STATUS' => 'nullable|in:OPEN,LOCKED',
            'FLAG_ACTIVE' => 'nullable|boolean',
        ]);

        $validated['LOG_UPDATE_NAME'] = $request->user()?->name;
        $validated['LOG_UPDATE_DATE'] = now();

        $masterPeriode->update($validated);

        return $this->success($masterPeriode, 'Data berhasil diupdate.');
    }

    public function destroy(MasterPeriode $masterPeriode)
    {
        $masterPeriode->delete();

        return $this->success(null, 'Data berhasil dihapus.');
    }
}
