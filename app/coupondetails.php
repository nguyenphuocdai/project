<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class coupondetails extends Model
{
    protected $table ='coupondetails';
    protected $primaryKey = 'id';
    protected $fillable=['quantity','price','total','product_id'];
    public $timestamps = true;
    public function product(){

    	return $this->hasMany('App\products');
    }
}
