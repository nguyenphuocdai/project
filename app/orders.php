<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class orders extends Model
{
    protected $table ='orders';
    protected $primaryKey = 'order_id';
    protected $fillable=['user_id','customer_id'];
    public $timestamps = true;
    public function customer(){

    	return $this->belongsTo('App\customers');
    }
     public function user(){

    	return $this->belongsTo('App\Users');
    }
    public function orders_detail(){

        return $this->hasOne('App\orders_detail');
    }
    
}
