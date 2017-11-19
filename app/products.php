<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class products extends Model
{
    protected $table ='products';
    protected $primaryKey = 'product_id';
    protected $guarded = array();
    protected $fillable=['name','price','quantity','origin','view','rate','highlight','image','keywords','size','describe','user_id','category_id','product_id'];
    public $timestamps = true;

	     public function category(){

	    	return $this->belongsTo('App\categories');
	    }
	    // function liên kết tới 
	     public function pimage(){

	    	return $this->hasMany('App\images','product_id');
	    }
	     public function comment(){

	    	return $this->hasMany('App\comments');
	    }
	     public function users(){

	    	return $this->belongsTo('App\Users');
	    }
	    public function order_detail(){

	    	return $this->belongsTo('App\orders_detail');
	    }
	    public function coupondetails(){
	    	return $this->belongsTo('App\coupondetails');
	    }

    

}
