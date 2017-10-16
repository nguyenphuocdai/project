<?php

namespace App\Http\Controllers;

use Request;
use Illuminate\Support\Facades\Mail;
use App\Http\Requests\ContactRequest;
class ContactController extends Controller
{
    public function getLienHe()
    {
         return view('pages.contact');

    }
    public function postLienHe(ContactRequest $ct)
    {   
      
        $data=['hoten'=>Request::input('txtName'),'email'=>Request::input('txtEmail'),'sodienthoai'=>Request::input('txtPhone'),'tinnhan'=>Request::input('txtMessage')];
        
        Mail::send('blanks', $data, function ($message) {
            $message->from(Request::input('txtEmail'), 'Khách Hàng');
            
            $message->to('hoanghoang360@gmail.com', 'Trizzy Shop')->subject('Liên hệ mua hàng');
        });
        echo 
        "<script>
            alert('Chúng tôi sẽ liên hệ bạn trong thời gian sớm nhất, Cảm ơn bạn đã quan tâm!');
            window.location='".url('/')."';
        </script>";

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
}
