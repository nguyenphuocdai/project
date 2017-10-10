<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class CustomerRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            'txtName' =>'required',
            'txtEmail' =>'required|email|unique:customers,email',
            'txtPhone' =>'required',
            'txtAddress' =>'required'
        ];
    }
     public function messages()
     {
        return [
            'txtName.required'=>'Bạn chưa nhập Họ Tên !',
            'txtEmail.required'=>'Bạn chưa nhập Email !',
            'txtEmail.email'=>'Nhập email chưa đúng !',
            'txtEmail.unique'=>'Vui lòng nhập email khác !',
            'txtPhone.required'=>'Bạn chưa nhập số điện thoại ! !',
            'txtAddress.required'=>'Bạn chưa nhập địa chỉ!',
        
         
        ];
    }
}
