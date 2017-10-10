<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class promotions_detail extends Model
{
     protected $table ='promotions_detail';
    protected $fillable=['user_id','promotion_id','number','start','end'];
    public $timestamps = false;
}
