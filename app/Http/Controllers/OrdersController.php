<?php

namespace App\Http\Controllers;

use request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Mail;
use Illuminate\Support\Facades\Auth;
use App\customers;
use App\orders;
use App\orders_detail;
use App\products;
use Hash;
use DateTime;
use Flashy;
use Cart;
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
      return view('admin.orders.orders_detail',compact('orders_detail'));
   }
   //cập nhật trạng thái đơn hàng
   public function postUpdateStatus($order)
   {    
        $order_detail = DB::table('orders_detail')->where('order_id',$order)->get();
        foreach($order_detail as $check){
          if($check->note < 0){
            return redirect()->route('admin.orders.list')->with(['flash_level'=>'danger','flash_message'=>'Vẫn còn sản phẩm chưa đủ số lượng yêu cầu.']);
          }
        }
        DB::table('orders')->where('order_id',$order)->update(['status'=>1]);

        DB::table('orders')->where('order_id',$order)->update(['user_id'=>Auth::user()->user_id]);
        $now=  new DateTime(date('Y/m/d H:i:s'));
              DB::table('orders')->where('order_id',$order)->update(['datesigned'=>$now]);
              DB::table('orders_detail')->where('order_id',$order)->update(['date_signed'=>$now,'note'=>0]);
        Flashy::success('Duyệt đơn hàng thành công.', '#');
        return redirect()->route('admin.orders.list');
   }
   public function getDelete($order_id)
   {
     $order = orders::find($order_id);
     if($order->payment == 1){
      return redirect()->route('admin.orders.list')->with(['flash_level'=>'danger','flash_message'=>'Đơn hàng đã thanh toán không được hủy.']);
     }
     else {
     $order_detail = DB::table('orders_detail')->where('order_id',$order_id)->get();
       foreach($order_detail as $prod){
        $t = DB::table('products')->where('product_id',$prod->product_id)->first()->quantity;
        $product = products::find($prod->product_id);
        if($product->quantity == 0 && $prod->quantity == $prod->note*(-1)){
          $product->quantity = $product->quantity;
        }
        else{
        $product->quantity = $prod->quantity + $prod->note;
        }
        $product->save();
       }
       $order->delete();
     return redirect()->back()->with(['flash_level'=>'success','flash_message'=>'Hủy đơn hàng thành công.']);
     }
   }
   public function noteOrder($order_id){
      $order = orders::find($order_id);
      $order_detail = DB::table('orders_detail')->where('order_id',$order_id)->get();
      
      foreach($order_detail as $prod){
        $t = DB::table('products')->where('product_id',$prod->product_id)->first()->quantity;
        $product = products::find($prod->product_id);
        if($t + $prod->note <= 0){
          $prod->note = $t + $prod->note;
          $product->quantity = 0;
          DB::table('orders_detail')->where([['product_id',$prod->product_id],['order_id',$prod->order_id]])->update(['note'=>$prod->note]);
          $product->save();
        }
          else{
            $product = products::find($prod->product_id);
            $result = $product->quantity + $prod->note;
            $product->quantity = $result;
            $prod->note = 0;
            DB::table('orders_detail')->where([['product_id',$prod->product_id],['order_id',$prod->order_id]])->update(['note'=>$prod->note]);
            $product->save();
        }
      }
    return redirect()->back();    
    }
}
