<?php
namespace App\Http\Controllers;
use Illuminate\Http\Request;
// use Request;
use App\coupons;
use datetime;
use App\products;
use DB;
use App\coupondetails;
use Illuminate\Support\Facades\Auth;
use App\Http\Requests\CouponRequest;
class CouponControlller extends Controller
{
	public function index(){
	$coupon = coupons::all();
		return view('admin.coupon.list')->with('coupon',$coupon);
	}
	public function getAdd(){
	return view('admin.coupon.add');
	}
	public function postAdd(CouponRequest $request){
		
		$so_sp = count($request->id_sp);
		if($so_sp !=0 ){
			
			$c = new coupons();
					$c->name = $request->name;
					$c->date = $request->date;
					$c->supplier_id = $request->supplier_id;
					$c->user_id = Auth::user()->user_id;
					// dd($c);
					$c->save();

			for ($i=0; $i < $so_sp; $i++) {
				// if($request->id_sp[$i] == $i)
				// {
				// 	return redirect()->route('admin.coupon.add')->with(['flash_level'=>'danger','flash_message'=>'Sản phẩm trong phiếu nhập đã trùng nhau']);
				// }
				// else{
					

					$cp = new coupondetails();
					$cp->product_id = $request->id_sp[$i];
					$cp->quantity = $request->sl_sp[$i];
					$cp->price = $request->gia_sp[$i];
					$cp->total = $request->sl_sp[$i]*$request->gia_sp[$i];
					$cp->coupon_id = $c->id;

					$cp->save();
					$sp = products::where('product_id',$cp->product_id)->first();
					$sp->quantity = $sp->quantity + $cp->quantity;
					$sp->price = $cp->price*1.2;
					// $sp->discount = $sp->price*1.2;
					$sp->save();					
				// }
			
		}
	}
		else
		{
			return redirect()->route('admin.coupon.add')->with(['flash_level'=>'danger','flash_message'=>'Phiếu nhập không có sản phẩm nào']);
		}
		
	return redirect()->route('admin.coupon.add')->with(['flash_level'=>'success','flash_message'=>'Thêm phiếu nhập thành công']);
	}

	public function getCouponDetail($coupon_id){
		$cp = DB::table('coupondetails')->where('coupon_id',$coupon_id)->get();
		return view('admin.coupon.coupondetail')->with('cp',$cp);;
	}
	public function getDelete($id){
   
    	$cate = coupons::find($id);
		$user_current = Auth::user()->level;
        

    	if($user_current==1) {
            $cate->delete($id);
        }
        else
        {
            return redirect('admin/coupon/list')->with(['flash_level'=>'warning','flash_message'=>'Bạn không có quyền xóa']);
        }
        return redirect('admin/coupon/list')->with(['flash_level'=>'success','flash_message'=>'Đã xóa thành công !']);

    }
}