<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;
use Illuminate\Support\Facades\Hash;
use Illuminate\Validation\ValidationException;

class AuthController extends Controller
{
    public function register(Request $request)
    {
                $request->validate([
                    'name' => 'required|string|max:255',
                    'email' => 'required|string|email|max:255|unique:users',
                    'password' => 'required|string|min:8',
                    'phone' => 'required|string|max:255',
                    'location' => 'required|string|max:255',
                    'user_type' => 'required|string|max:255',
                ]);

                $user = User::create([
                    'name' => $request->name,
                    'email' => $request->email,
                    'password' => Hash::make($request->password),
                    'phone' => $request->phone,
                    'location' => $request->location,
                    'user_type' => $request->user_type,
                    
                ]);

                // $data = $request->all();
                // $data['password'] = Hash::make($data['password']);
                // $user = User::create($data);

                return response()->json([
                    'user' => $user,
                    'token' => $user->createToken('token-name')->plainTextToken,
                ], 201);
    }
    public function login(Request $request)
    {
        $request->validate([
            'email' => 'required|string|email',
            'password' => 'required|string',
        ]);

        $user = User::where('email', $request->email)->first();

        if (! $user || ! Hash::check($request->password, $user->password)) {
            throw ValidationException::withMessages([
                'email' => ['The provided credentials are incorrect.'],
            ]);
        }

        return response()->json([
            'user' => $user,
            'token' => $user->createToken('token-name')->plainTextToken,
        ]);
    }

    public function logout(){
        $user = Auth::user();
        return $user;
    }
}