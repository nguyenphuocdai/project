<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class promotions extends Model
{
     protected $table ='promotions';
    protected $fillable=['name','describe','number','image'];
    public $timestamps = false;
}
