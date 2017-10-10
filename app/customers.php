<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Foundation\Auth\User as Authenticatable;

class customers extends Authenticatable
{
    protected $table = 'customers';
    protected $primaryKey = 'customer_id';
    protected $guarded = array();
    protected $fillable = ['username', 'email', 'password', 'address', 'sex', 'date_register', 'phone_number', 'name'];
    public $timestamps = true;

    public function comment()
    {

        return $this->hasMany('App\comments');
    }

    //ok a ^^ 2 cach 1 cai nua no xóa dòng trắng. sao nó báo lỗi mấy cái mảng vậy a  do thằng xóa bỏ file sau đó lôi lại project php vào
    // xóa file lauch.json ha a
    public function order()
    {

        return $this->hasMany('App\orders');
    }

    protected $hidden = ['password','remember_token'];


}
