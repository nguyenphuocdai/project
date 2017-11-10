<?php

namespace App\Http\Controllers;

//use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Http\Requests\CategoriesRequest;
use App\categories;
use App\products;
use App\images;
use App\users;
use Request,DB;
use File;
use Illuminate\Support\Facades\Input;
use App\Http\Requests\ProductRequest;
use Illuminate\Support\Facades\Auth;
use Validator;
class ProductsController extends Controller
{
    public function getList()
    {   
        $data = products::select('product_id','name','price','quantity','created_at','image','category_id','user_id')->orderBy('product_id','DESC')->get();
        return view('admin.products.list',compact('data'));
    }
    public function getAdd(){
    	$cate = categories::select('name','category_id')->get();
    	return view('admin.products.add',compact('cate'));

    }
    public function postAdd(ProductRequest $product_request)
    {
    	
    	$product = new products();
    	$product->name= $product_request->txtProductName;
    	$product->alias= changeTitle($product_request->txtProductName);
    	$product->price= $product_request->txtPrice;
        $product->highlight= $product_request->highlight;
    	$product->quantity= $product_request->txtQuantity;
    	$product->origin= $product_request->txtOrigin;  
    	//lấy tên của hình
    	$filename = $product_request->file('txtImage')->getClientOriginalName();
    	$product->image= $filename;
    	$product->keywords= $product_request->txtKeywords;
    	$product->describe= $product_request->txtDescribe;
    	$product->category_id=$product_request->selectFK;
        $product->user_id= Auth::user()->user_id;
    	// nơi lưu hình upload
    	$product_request->file('txtImage')->move('resources/upload/',$filename);
            
    	$product->save();
        //Thêm các ảnh chi tiết của sản phẩm nếu có 
        $product_id = $product->product_id;
        
        if($product_request->hasFile('fProductDetail'))
        {
            foreach (($product_request->file('fProductDetail')) as $file ) 
            {
                $product_img = new images();
                if(isset($file))
                {
                $product_img->image=$file->getClientOriginalName();
                $product_img->product_id=$product_id;
                    //lưu các hình ảnh vào thư mục
                $file->move('resources/upload/product_image/',$file->getClientOriginalName());  
                $product_img->save(); 
                 }
            }  
           
         } 
    	return redirect()->route('admin.products.list')->with(['flash_level'=>'success','flash_message'=>'Thêm sản phẩm mới thành công !']);
    } 
    public function getDelete($product_id)
    {   
        //xóa các hình chi tiết trước

        $check = DB::table('products')->where('product_id',$product_id)->first();

        $check_ad = Auth::user()->level;
        $check_user = products::find($product_id);
      if (Auth::user()->level == 1 || (Auth::user()->level == 0 && Auth::user()->user_id == $check->user_id))
      {
        $product_image = products::find($product_id)->pimage()->get(); 
        foreach ($product_image as $value) 
        {
            File::delete('resources/upload/product_image/'.$value["image"]);
        }
        $product = products::find($product_id);
            File::delete('resources/upload/'.$product->image);
        $product->delete($product_id);
        
        return redirect()->route('admin.products.list')->with(['flash_level'=>'success','flash_message'=>'Xóa sản phẩm thành công !']);
      }
      else 
       return redirect()->back()->with(['flash_level'=>'danger','flash_message'=>'Bạn không có quyền xóa !']);
            
    }
    public function getEdit($product_id)
    {   

        $cate = categories::select('category_id','name')->get()->toArray();
        $product = products::find($product_id);
        $product_image = products::find($product_id)->pimage()->get();
        return view('admin.products.edit',compact('cate','product','product_image','$product_id'));
        
    }
    public function postEdit($product_id, Request $request)
    {

        // dd(Request::all()); // dùng sai  no ko phai định dạng img xem lại cái form
        $validator = Validator::make(Request::all(), [
            'txtProductName' =>'required',
            'txtOrigin'=>'required',
            'fImage'=>'image',
            
                   
                ],[
            
            'fImage.image'=>'File bạn chọn không phải hình ảnh !',
            'txtProductName.required'=>'Bạn chưa nhập tên sản phẩm !',
            'txtOrigin.required'=>'Bạn chưa nhập xuất xứ !',
                ]);
                    

                if ($validator->fails()) {
                    return redirect()->back()
                                ->withErrors($validator)
                                ->withInput();
                }
        $product = products::find($product_id);
        $product->name = Request::input('txtProductName');
        $product->alias=  changeTitle( Request::input('txtProductName'));
        $product->price=  Request::input('txtPrice');
        $product->quantity= Request::input('txtQuantity');
        $product->discount= Request::input('txtDiscount');
        $product->origin=  Request::input('txtOrigin');
        $product->keywords=  Request::input('txtKeywords');
        $product->highlight=  Request::input('highlight');
        $product->describe= Request::input('txtDescribe');
        $product->category_id= Request::input('selectFK');
        //upload hình ảnh cho sản phẩm và xóa hình ảnh trước
        $img_current = 'resources/upload/product_image/'.Request::input('img_current');
        if(!empty(Request::file('fImage')))
            {
                $file_name= Request::file('fImage')->getClientOriginalName();
                $product->image=$file_name;
                Request::file('fImage')->move('resources/upload/',$file_name);
                if(file::exists($img_current))
                {
                    file::delete($img_current);
                }
            }
        else
        {
            echo "Không có hình ảnh nào !";
        }
        $product->save();
        if(!empty(Request::file('fEditDetail')))
        {
            foreach (Request::file('fEditDetail') as $file) 
            {
                $product_img = new images;
                if(isset($file))
                {   
                    $name = $file->getClientOriginalName();
                    $product_img->image = $name;
                    $product_img->product_id=$product_id;
                    $file->move('resources/upload/product_image/',$name);
                    $product_img->save();
                }
            }
        }

        //thêm hình ảnh chi tiết cho sản phẩm
        
       
        return redirect()->route('admin.products.list')->with(['flash_level'=>'success','flash_message'=>'Cập nhật sản phẩm thành công !']);
            
    }

    public function getDelImage(Request $r){
        if(Request::ajax())
        {
            $id = (int)Request::get('id');
            $image = images::find($id);
            if(!empty($image))
            {
                $img = 'resources/upload/product_image/'.$image->image;
                if(File::exists($img))
                {
                    File::delete($img);
                }
                $image->delete();
            }
            return "Oke";
        }
    }

    public function getImport($product_id){
        $product = products::find($product_id);
        $prod = products::select('name','product_id')->first();
        return view('admin.import.product',compact('cate','product','product_image','$product_id','prod'));
    }
     public function postImport($product_id, Request $request)
    {   
        $validator = Validator::make(Request::all(), [
            'txtPrice'=>'required|integer|min:0',
            'txtQuantity'=>'required|integer|min:0',
                ],[
            'txtPrice.integer'=>'Bạn nhập giá chưa đúng!',
            'txtPrice.min'=>'Giá sản phẩm không được âm!',
            'txtPrice.required'=>'Bạn chưa nhập giá !',
            'txtQuantity.integer'=>'Bạn số lượng chưa đúng!',
            'txtQuantity.min'=>'Số lượng được không âm !',
            'txtQuantity.required'=>'Bạn chưa nhập số lượng !',
                ]);
                if ($validator->fails()) {
                    return redirect()->back()
                                ->withErrors($validator)
                                ->withInput();
                }

        $product = products::find($product_id);
        $product->price=  Request::input('txtPrice');
        $product->quantity=$product->quantity + Request::input('txtQuantity');
        $product->save();       
        return redirect()->route('admin.products.list')->with(['flash_level'=>'success','flash_message'=>'Nhập hàng thành công']);
    } 
    
}
