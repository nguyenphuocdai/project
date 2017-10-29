<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class OrdersDetail extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
         Schema::create('orders_detail', function(Blueprint $table){
            $table->integer('product_id')->unsigned();
            $table->foreign('product_id')->references('product_id')->on('products')->onDelete('cascade');
            $table->integer('order_id')->unsigned();
            $table->foreign('order_id')->references('order_id')->on('orders')->onDelete('cascade');
            $table->integer('quantity');
            $table->integer('price');
            $table->integer('note');
            $table->datetime('date_signed');
            $table->float('total');
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
        //
    }
}
