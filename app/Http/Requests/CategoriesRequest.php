<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class CategoriesRequest extends FormRequest
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
            'txtName'=>'required|unique:categories,name',
            'txtKeywords'=>'required',
            'txtDescribe'=>'required',
        ];

    }
    public function messages(){
        return [
            'txtName.required'=>'Bạn chưa nhập tên loại sản phẩm !',
            'txtName.unique'=>'Tên loại sản phẩm đã tồn tại !',
            'txtKeywords.required'=>'Bạn chưa nhập từ khóa !',
            'txtDescribe.required'=>'Bạn chưa nhập mô tả !',
        ];
    }
}
