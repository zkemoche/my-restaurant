<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class PaymentSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $payments = [
            
        
            'payment type' => 'Mpesa',
            'amount' => '700',
            'user_id' => '1',
            'payment_status' => 'Not Paid',
            'order_id' => '1'
        ];

    DB::table('payments')->insert($payments);
    }
}
