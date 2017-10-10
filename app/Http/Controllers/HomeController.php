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
use Hash;
use Auth;
use Validator;
class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        // $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {   
        //lấy các mới nhất
        $pr_cate = DB::table('products')->select('product_id','name','price','alias','category_id','quantity','discount','image','created_at')->orderBy('created_at','DESC')->limit(3)->get();
        //đã xóa giao diện cũ
        $pr = DB::table('products')->select('product_id','name','price','alias','image','created_at')->orderBy('product_id','DESC')->limit(4)->get();
        //lấy các sp xem nhiều
        $pr_view = DB::table('products')->select('product_id','name','price','alias','image')->orderBy('view','DESC')->limit(3)->get();
        return view('frontend.pages.home',compact('pr','pr_view','pr_cate'));
    }
    public function categories($category_id)
    {
        //lấy các sản phẩm theo loại
        $pr_cate = DB::table('products')->select('product_id','name','price','alias','category_id','quantity','discount','image')->where('category_id',$category_id)->paginate(6);
        return view('frontend.pages.cate',compact('pr_cate'));
    }
    public function detail($product_id)
    {   
        //click vào thì lượt xem tăng 1
        $pr_view = DB::table('products')->where('product_id',$product_id)->increment('view',1);
        $img = DB::table('images')->select('product_id','image')->where('product_id',$product_id)->get();
        //lấy ra sản phẩm
        $pr_detail = DB::table('products')->where('product_id',$product_id)->first();
        // lấy ra sản phẩm tượng tự
        $pr_relate = DB::table('products')->where('category_id',$pr_detail->category_id)->where('product_id','<>',$product_id)->inRandomOrder()->limit(4)->get();
        return view('frontend.pages.detail',compact('pr_detail','img','pr_relate'));
    }
    // đã chuyển sang contactcontroller để kiểm tra request

    // public function getLienHe()
    // {
    //      return view('frontend.pages.contact');

    // }
    // public function postLienHe(Request $r)
    // {   
    //     //lấy tin nhắn trên form khách hàng gởi cho mình.
    //     $this->validate($r, 
    //     [
    //         'txtName' => 'required',
    //         'txtEmail'=>'required|email',
    //         'txtPhone'=>'required',
    //         'txtMessage'=>'required'
    //     ],
    //     [
    //         'txtName.required' => 'Chưa nhập Họ và Tên',
    //         'txtEmail.email' => 'Nhập sai định dạng email',
    //          'txtPhone.required' => 'Chưa nhập Họ và Tên',   
    //         'txtMessage.required' => 'Chưa nhập Họ và Tên',
    //     ]);
    //     $data=['hoten'=>Request::input('txtName'),'email'=>Request::input('txtEmail'),'sodienthoai'=>Request::input('txtPhone'),'tinnhan'=>Request::input('txtMessage')];
        
    //     Mail::send('blanks', $data, function ($message) {
    //         $message->from(Request::input('txtEmail'), 'Khách Hàng');
            
    //         $message->to('khaquy09112@gmail.com', 'Lavender - XuKha')->subject('Liên hệ mua hàng');
    //     });
    //     echo 
    //     "<script>
    //         alert('Cảm ơn bạn đã liên hệ bạn trong thời gian sớm nhất !');
    //         window.location='".url('/')."';
    //     </script>";

    // }
    public function getMuaHang($product_id)
    {   
        //lấy các thông tin cần thiết cho giỏ hàng
        $pr_view = DB::table('products')->where('product_id',$product_id)->increment('view',1);
        $pr_buy = DB::table('products')->where('product_id',$product_id)->first();
        Cart::add(array('id'=>$product_id,'name'=>$pr_buy->name,'qty'=>1,'price'=>$pr_buy->price,'options'=>array('img'=> $pr_buy->image)));
        $tamp = Cart::content();
        
        return redirect()->route('giohang');

    }

    public function getGioHang()
    {   //lấy các thứ hiện tại 
        $content = Cart::content();
      
        $total = Cart::total(0,",",".");
        
        return view('frontend.pages.shopping-cart',compact('content','total'));
        
    }

    // public function getDatHang()
    // {
    //     if(Auth::guard('customers')->user())
    //     {

    //     }
    //     else 
    //     {
    //      echo 
    //     "<script>
    //         alert('Vui lòng đăng nhập trước khi đặt hàng');
    //         window.location='".url('dat-hang')."';
    //     </script>";
    //     }
    // }
    public function getXoaSanPham($id)
    {
        Cart::remove($id);
        return redirect()->route('giohang');
    }
    
    public function capnhat(Request $r)
    {
        
        if(Request::ajax())
        {
                $id = Request::get('id');
                $qty = Request::get('qty');
                Cart::update($id,$qty);
                echo "oke";
        }
    }
   
    public function theogia100()
    {
        //sản phẩm giá 100-300
        $price_100 = DB::table('products')->whereBetween('price', [100000,300000 ])->orderBy('price','DESC')->paginate(6);
        return view('frontend.pages.price100',compact('price_100'));
    }
     public function theogia300()
    {
        //sản phẩm giá 100-300
        $price_300 = DB::table('products')->whereBetween('price', [300000,500000 ])->orderBy('price','DESC')->paginate(6);
        return view('frontend.pages.price300',compact('price_300'));
    }
     public function theogia500()
    {
        //sản phẩm giá 100-300
        $price_500 = DB::table('products')->where('price','>','500000')->orderBy('price','DESC')->paginate(6);
        return view('frontend.pages.price500',compact('price_500'));
    }
    public function getDangKyNguoiDung()
    {
        return view('frontend.pages.register');
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
            $message->from('khaquy09112@gmail.com', 'Lavender - Xu Kha'); 

            $message->to(Request::input('txtEmail'), Request::input('txtName'))->subject('Đăng ký thành viên');
        });
        return redirect()->route('dathang')->with(['flash_level'=>'success','flash_message'=>'Đăng ký thành viên thành công. Vui lòng kiểm tra email để xem thông tin!']);
    }
     public function getThanhToan()
    {
        $content = Cart::content();
        $total = Cart::total(0,",",".");
        
       
        return view('frontend.pages.checkout',compact('content','total'));
    }
     public function postThanhToan(Request $r)
    {   
        
           

         $content= Cart::content();
        
        //print_r($content);
       
        if(Auth::guard('customers')->check())
        {
                 $validator = Validator::make(Request::all(), [
                'txtAddresreceive' => 'required',
                   
                ],[
                    'txtAddresreceive.required'=>'Bạn chưa nhập địa chỉ nhận hàng !'

                ]);
                    

                if ($validator->fails()) {
                    return redirect('dat-hang')
                                ->withErrors($validator)
                                ->withInput();
                }
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
                                        $message->from('khaquy09112@gmail.com', 'Lavender - XuKha'); 

                                        $message->to(Auth::guard("customers")->user()->email,'Khách Hàng')->subject('Thông báo mua hàng từ Lavender - XuKha');
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
                                        $message->from('khaquy09112@gmail.com', 'Lavender - XuKha'); 

                                        $message->to(Auth::guard("customers")->user()->email,'Khách Hàng')->subject('Thông báo mua hàng từ Lavender - XuKha');
                                    });
                                }

                        }

                        echo 
                        "<script>
                            alert('Cảm ơn bạn đã đặt hàng chúng tôi! Vui lòng kiểm tra email để biết thêm chi tiết !');
                            window.location='".url('dat-hang')."';
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
