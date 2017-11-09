<?php

namespace App\Http\Controllers;

use Request;
use Cart;
use View;
use Illuminate\Support\Facades\Mail;
use App\Http\Requests\ContactRequest;
class ContactController extends Controller
{
    public function __construct()
    {   
        $subtotal = Cart::subtotal(0,",",".");
        $totalEnglish = ($subtotal/23000)*1000;
        $totalEnglishSub = substr($totalEnglish,0,5);
        // $this->middleware('auth');
        View::share('totalEnglishSub', $totalEnglishSub);
        View::share('subtotal', $subtotal);
    }
    public function getLienHe()
    {   
         $subtotal = Cart::subtotal(0,",",".");
         View::share('subtotal', $subtotal);
         return view('pages.contact');

    }
    public function postLienHe(ContactRequest $ct)
    {   
      
        $data=['hoten'=>Request::input('txtName'),'email'=>Request::input('txtEmail'),'sodienthoai'=>Request::input('txtPhone'),'tinnhan'=>Request::input('txtMessage')];
        Mail::send('blanks', $data, function ($message) {
            $message->from(Request::input('txtEmail'), 'Khách hàng từ Trizzy');
            
            $message->to('hoanghoang360@gmail.com', 'Trizzy Shop')->subject('KHÁCH HÀNG LIÊN HỆ');
        });
        return redirect()->route('getLienheSucess');
    }
    public function getMuaHang($product_id)
    {   
        //lấy các thông tin cần thiết cho giỏ hàng
        $pr_view = DB::table('products')->where('product_id',$product_id)->increment('view',1);
        $pr_buy = DB::table('products')->where('product_id',$product_id)->first();
        Cart::add(array('id'=>$product_id,'name'=>$pr_buy->name,'qty'=>1,'price'=>$pr_buy->price,'options'=>array('img'=> $pr_buy->image)));
        $tamp = Cart::content();
        
        return redirect()->route('giohang');

    }
    public function getGioiThieu()
    {
        return view('pages.about');
    }
    public function getLienheSucess(){
        return view('pages.contact-sucess');
    }
}
