<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class CusLoginRequest extends FormRequest
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
            'txtUsername' =>'required',
            'txtPassword'=>'required',

        ];
    }
    public function messages()
    {
        return [
        'txtUsername.required'=>'Bạn chưa nhập tài khoản',
        'txtPassword.required'=>'Bạn chưa nhập mật khẩu',
        ];
    }
}
