<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class UserEditRequest extends FormRequest
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
            'txtPassword' =>'required',
            'txtRePassword' =>'required|same:txtPassword',
            'txtPhone' =>'required|regex:/(0)[0-9]{9}/',
        ];
    }
    public function messages()
    {
        return [
            'txtPassword.required'=>'Bạn chưa nhập mật khẩu',
            'txtPhone.required'=>'Bạn chưa nhập số điện thoại',
            'txtPhone.regex'=>'Nhập sai số điện thoại',
            'txtRePassword.same'=>'Mật khẩu nhập lại chưa khớp'
        ];
    }
}
