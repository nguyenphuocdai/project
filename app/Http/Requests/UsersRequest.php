<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class UsersRequest extends FormRequest
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
            'txtUser' =>'required|unique:users,username|alpha_dash|regex:/^[(a-zA-Z\s),(0-9)]+$/u',
            'txtPassword'=>'required|alpha_dash',
            'txtRePassword'=>'required|same:txtPassword',
            'txtEmail'=>'required|email|unique:users,email',
            'txtPhone'=>'required|regex:/(0)[0-9]/|numeric'
        ];
    }
    public function messages()
    {
        return [
        'txtUser.required'=>'Bạn chưa nhập tài khoản !',
        'txtUser.regex'=>'Vui lòng nhập chữ không dấu !',
        'txtUser.alpha_dash'=>'Vui lòng nhập chữ không dấu và không có khoảng cách !',
        'txtUser.unique'=>'Tài khoản bạn nhập đã tồn tại !',
        'txtPassword.required'=>'Bạn chưa nhập mật khẩu',
        
        'txtRePassword.required'=>'Bạn chưa nhập lại mật khẩu !',
        'txtRePassword.alpha_dash'=>'Vui lòng nhập lại mật khẩu không dấu và không có khoảng cách !!',
        'txtRePassword.same'=>'Mật khẩu nhập lại chưa khớp !',
        'txtEmail.required'=>'Bạn chưa nhập email !',
       
        'txtEmail.email'=>'Bạn nhập chưa đúng định dạng email ví dụ: abd@abc.com !',
        'txtEmail.unique'=>'Email đã được dùng vui lòng chọn email khác !',
        'txtPhone.required'=>'Bạn chưa nhập điện thoại !',
        'txtPhone.regex'=>'Bạn nhập chưa đúng kiểu số điện thoại !',
        'txtPhone.numeric'=>'Điện thoại phải nhập là số !',
        ];
    }
}
