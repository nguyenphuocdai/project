<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class suppliers extends Model
{
    protected $table ='suppliers';
    protected $primaryKey = 'id';
    protected $fillable=['name','address','phone'];
    public $timestamps = true;

    public function coupon(){

    	return $this->belongsTo('App\coupons');
    }
}
