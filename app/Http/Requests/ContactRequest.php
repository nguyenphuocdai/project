<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class ContactRequest extends FormRequest
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
            'txtName' => 'required',
            'txtEmail'=>'required|email',
            'txtPhone'=>'required|numeric|regex:/(0)[0-9]/',
            'txtMessage'=>'required'
        ];
    }
     public function messages(){
        return [
              'txtName.required' => 'Chưa nhập họ và tên !',
             'txtEmail.required' => 'Chưa nhập email !',
            'txtEmail.email' => 'Nhập sai định dạng email !',
             'txtPhone.required' => 'Chưa nhập số điện thoại !',  
             'txtPhone.numeric'=>'Nhập sai số điện thoại !',
             'txtPhone.regex'=>'Nhập sai định dạng số điện thoại !', 
            'txtMessage.required' => 'Chưa nhập nội dung !',
            
        ];
    }
}
