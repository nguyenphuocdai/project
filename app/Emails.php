<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Emails extends Model
{
    protected $table ='emails';
    protected $primaryKey = 'id';
    protected $fillable=['name'];
    public $timestamps = true;
}
