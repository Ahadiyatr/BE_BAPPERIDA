<?php

namespace App\Http\Controllers;

use App\Models\MasterProgram;
use App\Traits\ApiResponse;
use Illuminate\Http\Request;

class MasterProgramController extends Controller
{
    use ApiResponse;

    public function index()
    {
        $data = MasterProgram::all();

        return $this->success($data);
    }

    public function store(Request $request)
    {
        $validated = $request->validate([
            'KODE_PROGRAM' => 'required|string|max:50',
            'NAMA_PROGRAM' => 'nullable|string|max:255',
            'FLAG_ACTIVE' => 'nullable|boolean',
        ]);

        $validated['LOG_ENTRY_NAME'] = $request->user()?->name;
        $validated['LOG_ENTRY_DATE'] = now();

        $masterProgram = MasterProgram::create($validated);

        return $this->created($masterProgram);
    }

    public function show(MasterProgram $masterProgram)
    {
        return $this->success($masterProgram);
    }

    public function update(Request $request, MasterProgram $masterProgram)
    {
        $validated = $request->validate([
            'KODE_PROGRAM' => 'sometimes|required|string|max:50',
            'NAMA_PROGRAM' => 'nullable|string|max:255',
            'FLAG_ACTIVE' => 'nullable|boolean',
        ]);

        $validated['LOG_UPDATE_NAME'] = $request->user()?->name;
        $validated['LOG_UPDATE_DATE'] = now();

        $masterProgram->update($validated);

        return $this->success($masterProgram, 'Data berhasil diupdate.');
    }

    public function destroy(MasterProgram $masterProgram)
    {
        $masterProgram->delete();

        return $this->success(null, 'Data berhasil dihapus.');
    }
}
