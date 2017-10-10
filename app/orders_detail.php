<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class orders_detail extends Model
{
     protected $table ='orders_detail';
    protected $fillable=['product_id','order_id','quantity','price','total','status'];
    public $timestamps = true;
    public function product(){

    	return $this->hasMany('App\products');
    }
    public function order(){

        return $this->belongsTo('App\orders');
    }

}
