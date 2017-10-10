<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class news extends Model
{
     protected $table ='news';
     protected $primaryKey = 'news_id';
    protected $fillable=['tittle','content','image','user_id'];
    public $timestamps = true;
     public function user(){

    	return $this->belongsTo('App\Users');
    }
}
