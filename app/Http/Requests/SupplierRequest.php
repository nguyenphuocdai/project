<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class SupplierRequest extends FormRequest
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
            'name'=>'required|unique:suppliers,name',
            'address'=>'required',
            'phone'=>'required',
        ];

    }
    public function messages(){
        return [
            'name.required'=>'Bạn chưa nhập tên nhà cung cấp!',
            'name.unique'=>'Tên nhà cung cấp đã tồn tại !',
            'address.required'=>'Bạn chưa nhập địa chỉ!',
            'phone.required'=>'Bạn chưa nhập số điện thoại!',
        ];
    }
}
