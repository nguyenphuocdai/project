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
    	 // DB::table('users')->insert([
           
      //       'username' => "quy",
      //       'email' => "khaquy09112@gmail.com",
      //       'sex' => 0,
      //       'phone_number' => 0,
      //       'password' => Hash::make('123456'),
      //   ]);
      $faker = Faker\Factory::create();
      for($i = 0; $i < 20; $i++) {
        App\news::create([
            'tittle' => $faker->text(40),
            'intro' => $faker->text($minNbChars = 60),
            'content' => $faker->text($minNbChars = 400),
            'image' => $faker->imageUrl($width = 640, $height = 480),
            'user_id' => 6
        ]);
    }

    }
}
