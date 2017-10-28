<?php

namespace App\Http\Controllers;

use request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Mail;
use Illuminate\Support\Facades\Auth;
use App\customers;
use App\orders;
use App\orders_detail;
use Hash;
use DateTime;
class OrdersController extends Controller
{
    //lấy danh sách đơn hàng chưa duyệt
   public function getList()
   {
      $order = orders::select('*')->where('status',0)->orderBy('created_at','DESC')->get();
      return view('admin.orders.list',compact('order'));
   }
   //lấy danh sách đơn hàng đã duyệt
   public function getListSigned()
   {
       $order = orders::select('*')->where('status',1)->orderBy('datesigned','DESC')->get();

       return view('admin.orders.listsigned',compact('order'));
   }
   public function getOrders_Detail($order_id)
   {
        $orders_detail = DB::table('orders_detail')->where('order_id',$order_id)->get();
        dd($orders_detail);
         
       return view('admin.orders.orders_detail',compact('orders_detail'));
   }
   //cập nhật trạng thái đơn hàng
   public function postUpdateStatus($order)
   {    
       
        DB::table('orders')->where('order_id',$order)->update(['status'=>1]);
        DB::table('orders')->where('order_id',$order)->update(['user_id'=>Auth::user()->user_id]);
        $now=  new DateTime(date('Y/m/d H:i:s'));
              DB::table('orders')->where('order_id',$order)->update(['datesigned'=>$now]);
              DB::table('orders_detail')->where('order_id',$order)->update(['date_signed'=>$now,'note'=>0]);
        return redirect()->route('admin.orders.list');
   }
   public function getDelete($order_id)
   {
     $order = orders::find($order_id);
     $order->delete();
     return redirect()->back()->with(['flash_level'=>'success','flash_message'=>'Xóa thành công !']);
   }
}
