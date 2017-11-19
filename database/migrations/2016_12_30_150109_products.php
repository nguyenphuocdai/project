<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class Products extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
          Schema::create('products', function(Blueprint $table){
            $table->increments('product_id');
            $table->string('name')->unique();
            $table->string('alias'); 
            $table->integer('price')->nullable();
            $table->integer('discount')->nullable();
            $table->integer('quantity')->nullable();
            $table->string('origin')->nullable(); 
            $table->integer('view')->nullable();
            $table->integer('rate')->nullable();
            $table->integer('highlight')->nullable();
            $table->string('image');
            $table->string('keywords');
            $table->string('size')->nullable();
            $table->longText('describe')->nullable();
            $table->integer('user_id')->unsigned();
            $table->foreign('user_id')->references('user_id')->on('users')->onDelete('cascade');
            $table->integer('category_id')->unsigned();
            $table->foreign('category_id')->references('category_id')->on('categories')->onDelete('cascade');
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
        Schema::drop('products');
    }
}
