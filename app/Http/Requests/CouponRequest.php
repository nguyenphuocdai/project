<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class CouponRequest extends FormRequest
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
        $now = date("Y/m/d");
        return [
            'name'=>'required|unique:coupons,name',
            'date'=>'required|after:=today',
        ];

    }
    public function messages(){
        return [
            'name.required'=>'Bạn chưa nhập tên phiếu nhập.',
            'name.unique'=>'Tên phiếu nhập đã tồn tại !',
            'date.required'=>'Bạn chưa chọn ngày nhập',
            'date.after'=>'Ngày nhập phải bắt đầu từ hôm nay.'

        ];
    }
}
