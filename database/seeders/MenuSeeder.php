<?php

namespace Database\Seeders;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class MenuSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    { 

        $menus = [
            
        
                'name' => 'Burger',
                'price' => '700',
                'description' => 'Delicious',
                'category_id' => '2',
                'offers' => 'No',
                'allergens' => 'Beef'
            ];

        DB::table('menus')->insert($menus);
    }
}
