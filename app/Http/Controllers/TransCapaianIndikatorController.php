<?php

namespace App\Http\Controllers;

use App\Models\VTransCapaianIndikator;
use App\Traits\ApiResponse;
use Illuminate\Http\Request;

class TransCapaianIndikatorController extends Controller
{
    use ApiResponse;

    public function index()
    {
        $data = VTransCapaianIndikator::all();

        return $this->success($data);
    }

    public function show($id)
    {
        $data = VTransCapaianIndikator::find($id);

        if (!$data) {
            return $this->notFound('Data capaian indikator tidak ditemukan.');
        }

        return $this->success($data);
    }
}