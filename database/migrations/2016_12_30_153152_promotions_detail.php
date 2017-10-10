<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class PromotionsDetail extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
         Schema::create('promotions_detail', function(Blueprint $table){
            $table->integer('user_id')->unsigned();
            $table->foreign('user_id')->references('user_id')->on('users')->onDelete('cascade');
            $table->integer('promotion_id')->unsigned();
            $table->foreign('promotion_id')->references('promotion_id')->on('promotions')->onDelete('cascade');
            $table->integer('number');
            $table->datetime('start');
            $table->datetime('end');
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
        Schema::drop('promotions');
    }
}
