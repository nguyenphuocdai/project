<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;
use App\images;
class ProductRequest extends FormRequest
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
        // validator kiểm tra các trường
        return [
            'txtOrigin'=>'required',
            'selectFK'=>'required',
            'txtProductName' =>'required|unique:products,name',
            'txtImage'=>'required|image|unique:products,image',
            'fProductDetail'=>'unique:images,image',

        ];
    }
    public function messages(){
        return [
            'selectFK.required'=>'Bạn chưa chọn loại sản phẩm !',
            'txtImage.required'=>'Bạn chưa chọn hình ảnh !',
            'txtImage.image'=>'File bạn chọn không phải hình ảnh !',
            'txtProductName.required'=>'Bạn chưa nhập tên sản phẩm !',
            'txtProductName.unique'=>'Tên sản phẩm đã tồn tại !',
            'txtOrigin.required'=>'Bạn chưa nhập xuất xứ !',
            'fProductDetail.unique'=>'Hình ảnh bạn upload đã tồn tại!',
        ];
    }
}
