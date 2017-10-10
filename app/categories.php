<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class categories extends Model
{
    protected $table ='categories';
    protected $primaryKey = 'category_id';
    protected $fillable=['name','describe','keywords'];
    public $timestamps = true;

    public function product(){

    	return $this->hasMany('App\products');
    }
}
