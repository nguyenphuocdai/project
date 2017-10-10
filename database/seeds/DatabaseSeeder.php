<?php

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Hash;
class DatabaseSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
    	 DB::table('users')->insert([
           
            'username' => "quy",
            'email' => "khaquy09112@gmail.com",
            'sex' => 0,
            'phone_number' => 0,
            'password' => Hash::make('123456'),
        ]);
    }
}
