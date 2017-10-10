<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class images extends Model
{
    protected $table ='images';
    protected $primaryKey ='image_id';
    protected $guarded = array();
    protected $fillable=['image','product_id']; 
    public $timestamps = true;
    public function product(){

    	return $this->belongsTo('App\products');
    }

}
