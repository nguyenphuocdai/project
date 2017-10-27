<?php

namespace App;

use Illuminate\Notifications\Notifiable;
use Illuminate\Foundation\Auth\User as Authenticatable;

class users extends Authenticatable
{
    use Notifiable;

    /**
     * The attributes that are mass assignable.
     * bắt lõi phải bắt từ schema
     * @var array
     */
    protected $table ='users'; 

    protected $primaryKey =  "user_id";
    
    protected $fillable = [
        'username', 'email', 'password','sex','phone_number','thumbnail','level','google_id','facebook_id'
    ];

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        'password', 'remember_token',
    ];
    public function product(){

        return $this->hasMany('App\products');
    }
     public function news(){

        return $this->hasMany('App\news');
    }
    public function order(){

        return $this->hasMany('App\orders');
    }
   
}
