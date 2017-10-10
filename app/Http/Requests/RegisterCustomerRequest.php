<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class RegisterCustomerRequest extends FormRequest
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
            'txtName'=>'required',
            'txtUsername'=>'required|unique:customers,username|alpha_dash|regex:/^[(a-zA-Z\s)]+$/u',
            'txtPassword'=>'required',
            'txtRePassword'=>'required|same:txtPassword',
            'txtEmail'=>'required|unique:customers,email|email',
            'txtAddress'=>'required',
            'txtPhone'=>'required|regex:/(0)[0-9]/|numeric'
        ];
    }
     public function messages(){
        return [
            'txtUsername.required'=>'Bạn chưa nhập tài khoản !',
             'txtUsername.alpha_dash'=>'Tài khoản vui lòng viết liền và không sử dụng dấu!',
            'txtUsername.regex'=>'Vui lòng nhập tài khoản không dấu !',
            'txtUsername.unique'=>'Tài khoản đã tồn tại, vui lòng chọn tài khoản khác!',
            'txtName.required'=>'Bạn chưa nhập tên !',
            'txtPassword.required'=>'Bạn chưa nhập mật khẩu !',
            'txtRePassword.required'=>'Bạn chưa nhập lại mật khẩu !',
            'txtRePassword.same'=>'Bạn chưa nhập lại mật khẩu !',
            'txtEmail.required'=>'Bạn chưa nhập email !',
            'txtEmail.email'=>'Bạn nhập chưa đúng cấu trúc email !',
            'txtEmail.unique'=>'Email bạn nhập đã tồn tại !',
            'txtAddress.required'=>'Bạn chưa nhập địa chỉ !',
            'txtPhone.required'=>'Bạn chưa nhập số điện thoại !',
            'txtPhone.regex'=>'Bạn nhập sai số điện thoại',
            'txtPhone.numeric'=>'Bạn nhập sai số điện thoại rồi !',
            'txtPhone.min'=>'Số điện thoại từ 10 số đến 11 số',
            
        ];
    }
}
