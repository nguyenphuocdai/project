<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class comments extends Model
{
    protected $table ='comments';
    protected $primaryKey = 'comment_id';
    protected $guarded = array();
    protected $fillable=['name','comment','date_comment','customer_id','product_id'];
    public $timestamps = true;
    public function customer(){

    	return $this->belongsTo('App\customers');
    }
    public function product(){

    	return $this->belongsTo('App\products');
    }
}
