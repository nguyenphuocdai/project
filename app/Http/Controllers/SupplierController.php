<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Requests\SupplierRequest;
use App\suppliers;
use DB;use Illuminate\Support\Facades\Auth;


class SupplierController extends Controller
{
   public function getList(){
		 
    	$data = DB::table('suppliers')->get();
        
    	return view('admin.supplier.list',compact('data'));
        
    }
    public function getAdd(){

    	return view('admin.supplier.add');
    }
    public function postAdd(SupplierRequest $request){

    	$suppliers = new suppliers;
    	$suppliers->name = $request->name;
    	$suppliers->phone = $request->phone;
    	$suppliers->address = $request->address;
        // dd($suppliers);
        $suppliers->save();
    	return redirect()->route('admin.supplier.list')->with(['flash_level'=>'success','flash_message'=>'Thêm thành công !']);
    }
    public function getDelete($id){
   
    	$cate = suppliers::find($id);
		$user_current = Auth::user()->level;
        
    	if($user_current==1) {
            $cate->delete($id);
        }
        else
        {
            return redirect('admin/supplier/list')->with(['flash_level'=>'warning','flash_message'=>'Bạn không có quyền xóa']);
        }
        return redirect('admin/supplier/list')->with(['flash_level'=>'success','flash_message'=>'Đã xóa thành công !']);

    }
    public function getEdit($id){
    	$data = suppliers::find($id);
		if(Auth::user()->level == 1)
    	return view('admin.supplier.edit',compact('data'));
		else
		return redirect('admin/supplier/list')->with(['flash_level'=>'warning','flash_message'=>'Bạn không có quyền cập nhật !']);

    }
    public function postEdit(Request $request,$id){
    	// $this->validate($request,
    	// [
    	// 	"txtCateName"=>'required'
    	// ],

    	// [
    	// 	"txtCateName.required"=>"Bạn chưa nhập tên thể loại !"
    	// ]
    	// );
    	$cate = suppliers::find($id);
    	$cate->name=$request->name;
    	$cate->address=$request->address;
    	$cate->phone=$request->phone;
    	$cate->save();
    	return redirect()->route('admin.supplier.list')->with(['flash_level'=>'success','flash_message'=>'Cập nhật thành công !']);
    }
    
}
