<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class OrdersSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $orders = [
            
        
            'user_id' => '1',
            'order_type' => 'food',
            'order_status' => 'Not Ready',
            'order_total' => '800'
        ];

    DB::table('orders')->insert($orders);
    }
}
