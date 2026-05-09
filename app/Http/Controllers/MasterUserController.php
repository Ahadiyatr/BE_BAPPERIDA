<?php

namespace App\Http\Controllers;

use App\Models\User;
use App\Traits\ApiResponse;
use Illuminate\Http\Request;

class MasterUserController extends Controller
{
    use ApiResponse;

    public function index()
    {
        $data = User::query()->orderBy('id')->get();

        return $this->success($data);
    }

    public function store(Request $request)
    {
        $validated = $request->validate([
            'name' => 'required|string|max:255',
            'email' => 'required|email|max:255|unique:users,email',
            'password' => 'required|string|min:8',
        ]);

        $data = User::create($validated);

        return $this->created($data);
    }

    public function show(User $masterUser)
    {
        return $this->success($masterUser);
    }

    public function update(Request $request, User $masterUser)
    {
        $validated = $request->validate([
            'name' => 'sometimes|required|string|max:255',
            'email' => 'sometimes|required|email|max:255|unique:users,email,' . $masterUser->id,
            'password' => 'nullable|string|min:8',
        ]);

        if (array_key_exists('password', $validated) && $validated['password'] === null) {
            unset($validated['password']);
        }

        $masterUser->update($validated);

        return $this->success($masterUser, 'Data berhasil diupdate.');
    }

    public function destroy(User $masterUser)
    {
        $masterUser->delete();

        return $this->success(null, 'Data berhasil dihapus.');
    }
}
