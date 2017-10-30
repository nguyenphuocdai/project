<?php

namespace App\Http\Controllers;

use Cart;
use App\Http\Requests\CustomerRequest;
use App\Http\Requests\QuantityRequest;
use App\Http\Requests\RegisterCustomerRequest;
use Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Mail;
use App\customers;
use App\orders;
use App\orders_detail;
use App\products;
use Hash;
use Auth;
use Validator;

class CheckOutController extends Controller
{
	public function getDangKyNguoiDung()
    {
        return view('pages.register');
    }

    public function postDangKyNguoiDung(RegisterCustomerRequest $rcr)
    {
        $cus = new customers();
        $cus->name = $rcr->txtName;
        $cus->username = $rcr->txtUsername;
        $cus->password = Hash::make($rcr->txtPassword);
        $cus->email =$rcr->txtEmail;
        $cus->address =$rcr->txtAddress;

        $cus->phone_number =$rcr->txtPhone;
        $cus->remember_token =$rcr->_token;
        $cus->save();
        $login = array (
            'username'=>$rcr->txtUsername,
            'password'=>$rcr->txtPassword
        );
        Auth::guard("customers")->attempt($login);
        
        $data=['hoten'=>Request::input('txtName'),'taikhoan'=>Request::input('txtUsername'),'diachi'=>Request::input('txtAddress'),'sodienthoai'=>Request::input('txtPhone'),'email'=>Request::input('txtEmail'),'matkhau'=>Request::input('txtPassword')];
        Mail::send('cus-register', $data, function ($message) 
        {
            $message->from('hoanghoang360@gmail.com', 'Trizzy-Shop'); 

            $message->to(Request::input('txtEmail'), Request::input('txtName'))->subject('ĐĂNG KÝ THÀNH VIÊN');
        });
        return redirect('/')->with(['flash_level'=>'success','flash_message'=>'Đăng ký thành viên thành công. Vui lòng kiểm tra email để xem thông tin!']);
    }
	
     public function getThanhToan()
    {
        $content = Cart::content();
        $sub = Cart::subtotal();
        $subtotal = Cart::subtotal(0,",",".");
        
       
        return view('pages.checkout',compact('content','subtotal'));
    }
     public function postThanhToan(Request $r)
    {   
        $content= Cart::content();
        if(Auth::guard('customers')->check())
        {
            if(count(Cart::content())<1)
            {
                 echo 
                        "<script>
                            alert('Giỏ hàng rỗng !');
                            window.location='".url('dat-hang')."';
                        </script>";
            }
            else
            {

                $cus = Auth::guard('customers')->user();
                $order = new orders();
                $order->customer_id= $cus->customer_id;
                $order->address_receive=Request::input('txtAddresreceive');
                $order->phone_social=Request::input('phone_social');
                $order->save();
                $content= Cart::content();
                $total = Cart::total(0,",",".");
                
                                      
                        foreach(Cart::content() as $item)
                        {

                            $t=DB::table('products')->where('product_id',$item->id)->first()->quantity;
                            // dd($item->qty*1);
                            if($item->qty*1< $t)
                            {
                                    $order_detail = new orders_detail();
                                    $order_detail->order_id=$order->order_id;

                                    $order_detail->product_id = $item->id;

                                    $order_detail->quantity = $item->qty;

                                    $order_detail->price = $item->price;

                                    $order_detail->total =$item->qty*$item->price;
                                    $tamp = $item->rowId;
                                    DB::table('products')->where('product_id',$item->id)->decrement('quantity',$item->qty);
                                    Cart::remove($tamp);

                                    $order_detail->save();
                                     $data=[];
                                     Mail::send('orderSuccess', $data, function ($message) 
                                    {
                                        $message->from('hoanghoang360@gmail.com', 'Trizzy-Shop'); 

                                        $message->to(Auth::guard("customers")->user()->email,'Khách Hàng')->subject('Thông báo mua hàng từ Trizzy-Shop');
                                    });
                                
 
                            }
                            else
                                 {

                                    $order_detail = new orders_detail();
                                    $order_detail->order_id=$order->order_id;

                                    $order_detail->product_id = $item->id;

                                    $order_detail->quantity = $item->qty;

                                    $order_detail->price = $item->price;

                                    $order_detail->total =$item->qty*$item->price;
                                    $order_detail->note = $t-$item->qty*1;
                                    $tamp = $item->rowId;
                                    DB::table('products')->where('product_id',$item->id)->update(['quantity' => 0]);;
                                    Cart::remove($tamp);

                                    $order_detail->save();
                                    //số lượng nhỏ hơn db phải gởi mail !
                                    $data=['note'=> $order_detail->note,'product_id'=>$order_detail->product_id];
                                     Mail::send('notificationMail', $data, function ($message) 
                                    {
                                        $message->from('hoanghoang360@gmail.com', 'Trizzy-Shop'); 

                                        $message->to(Auth::guard("customers")->user()->email,'Khách Hàng')->subject('Thông báo mua hàng từ Trizzy-Shop');
                                    });
                                }

                        }

                        echo 
                        "<script>
                            alert('Cảm ơn bạn đã đặt hàng chúng tôi! Vui lòng kiểm tra Email của bạn để biết thêm chi tiết đơn hàng !');
                            window.location='".url('/')."';
                        </script>";
                
            }
        }
        else
        {
            echo "<script>
                    alert('Vui lòng đăng nhập trước khi đặt hàng!');
                    window.location='".url('dat-hang')."';
                </script>";
        }
        
    }
}
