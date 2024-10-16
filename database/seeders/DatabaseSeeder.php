<?php

namespace Database\Seeders;

use App\Models\User;
// use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;



class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     */
    public function run(): void
    {
        // User::factory(10)->create();

        $users = [
            [
        
                'name' => 'System Admin',
                'email' => 'admin@my-restaurant.com',
                'password' => Hash::make('Qwerty1'),
                'user_type' => 'Admin',
                'phone' => '0712345677',
                'location' => 'NBO'
            ],

            [
        
                'name' => 'John Doe',
                'email' => 'johndoe@my-restaurant.com',
                'password' => Hash::make('Qwerty1'),
                'user_type' => 'Employee',
                'phone' => '0712345678',
                'location' => 'NBO'
            ],

            [
        
                'name' => 'Jane Doe',
                'email' => 'janedoe@my-restaurant.com',
                'password' => Hash::make('Qwerty1'),
                'user_type' => 'Employee',
                'phone' => '0712345679',
                'location' => 'NBO'
            ]
        ];

        DB::table('users')->insert($users);

        $this->call([
            CategorySeeder::class
        ]);
    }
}
