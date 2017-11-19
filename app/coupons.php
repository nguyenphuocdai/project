<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class coupons extends Model
{
    protected $table ='coupons';
    protected $primaryKey = 'id';
    protected $fillable=['name','date','user_id'];
    public $timestamps = true;
     public function user(){

        return $this->belongsTo('App\Users');
    }
    public function supplier(){

    	return $this->hasOne('App\suppliers');
    }
}
