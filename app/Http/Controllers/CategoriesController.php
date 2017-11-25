<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Http\Requests\CategoriesRequest;
use App\categories;
use DB;
use App\users;
use Illuminate\Support\Facades\Auth;
class CategoriesController extends Controller
{	
	public function getList(){
		 
    	$data = categories::select('category_id','name')->orderBy('category_id','DESC')->get();
        
    	return view('admin.categories.list',compact('data','pr'));
        
    }
    public function getAdd(){

    	return view('admin.categories.add');
    }
    public function postAdd(CategoriesRequest $request){

    	$categories = new categories;
    	$categories->name=$request->txtName;
    	$categories->alias=changeTitle($request->txtName);
    	// $categories->describe=$request->txtDescribe;
    	$categories->keywords=$request->txtKeywords;
        
        $categories->save();
    	return redirect()->route('admin.categories.list')->with(['flash_level'=>'success','flash_message'=>'Thêm mới loại sản phẩm thành công !']);
    }
    public function getDelete($category_id){
   
    	$cate = categories::find($category_id);

    	$del_cate = DB::table('products')->where('category_id',$category_id)->get();
		$user_current = Auth::user()->level;
        

    	if($user_current==1 && count($del_cate)<=0) {
            $cate->delete($category_id);
        }
        else
        {
            return redirect('admin/categories/list')->with(['flash_level'=>'warning','flash_message'=>'Bạn không có quyền xóa hoặc có chứa sản phẩm !']);
        }
        return redirect('admin/categories/list')->with(['flash_level'=>'success','flash_message'=>'Đã xóa thành công !']);

    }
    public function MultiDelete(Request $request){
        $checked = $request->input('checked',[]);
        $user_current = Auth::user()->level;
        if($checked == null){
            return back()->with(['flash_level'=>'danger','flash_message'=>'Chưa chọn ô nào để xóa']);    
        }
            if($user_current==1){
            foreach ($checked as $id) {
                $del_cate = DB::table('products')->where('category_id',$id)->get();
                if(count($del_cate)<=0){
                categories::where("category_id",$id)->delete();
                // categories::whereIn("category_id",$checked)->delete();
                return back()->with(['flash_level'=>'warning','flash_message'=>'Xóa thành công những loại sản phẩm không có chứa sản phẩm.']);   
                }
                else
                {
                    return back()->with(['flash_level'=>'danger','flash_message'=>'Loại sản phẩm có chứa sản phẩm']);   
                }
            }
            }
            else{
                 return back()->with(['flash_level'=>'danger','flash_message'=>'Bạn không có quyền quản trị ']);  
            }
            // return back()->with(['flash_level'=>'danger','flash_message'=>'Bạn không có quyền quản trị']);
    }

    public function getEdit($category_id){
    	$data = categories::find($category_id);
		if(Auth::user()->level == 1)
    	return view('admin.categories.edit',compact('data','$category_id'));
		else
		return redirect('admin/categories/list')->with(['flash_level'=>'warning','flash_message'=>'Bạn không có quyền cập nhật !']);

    }
    public function postEdit(Request $request,$category_id){
    	$this->validate($request,
    	[
    		"txtCateName"=>'required'
    	],

    	[
    		"txtCateName.required"=>"Bạn chưa nhập tên thể loại !"
    	]
    	);
    	$cate = categories::find($category_id);
    	$cate->name=$request->txtCateName;
    	$cate->alias=changeTitle($request->txtCateName);
    	// $cate->describe=$request->txtDescribe;
    	$cate->keywords=$request->txtKeywords;
    	$cate->save();
    	return redirect()->route('admin.categories.list')->with(['flash_level'=>'success','flash_message'=>'Cập nhật loại sản phẩm thành công !']);
    }
    
    
}
