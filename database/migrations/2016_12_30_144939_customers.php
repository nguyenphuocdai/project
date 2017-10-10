<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class Customers extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('customers', function(Blueprint $table){
            $table->increments('customer_id');
            $table->string('username');
            $table->string('email')->unique();
            $table->string('password',60);
            $table->string('address');
            $table->integer('sex');
            $table->datetime('date_register');
            $table->integer('phone_number');
            $table->string('thumbnail');
            $table->rememberToken();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::drop('customers');
    }
}
