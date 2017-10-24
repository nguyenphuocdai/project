<?php

namespace App\Http\Controllers;
use Cart;
use App\Http\Requests\CustomerRequest;
use App\Http\Requests\QuantityRequest;
use App\Http\Requests\RegisterCustomerRequest;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Mail;
use App\customers;
use App\orders;
use App\orders_detail;
use App\products;
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
        return view('pages.home',compact('pr','pr_view','pr_cate'));
    }
    public function getcategories()
    {
        return view('pages.allshop',compact('pr_cate'));
    }
    public function categories($category_id)
    {

        //lấy các sản phẩm theo loại
        $pr_cate = DB::table('products')->select('product_id','name','price','alias','category_id','quantity','discount','image')->where('category_id',$category_id)->paginate(6);
        return view('pages.shopcategories',compact('pr_cate'));
    }
    public function detail($product_id)
    {   

        //click vào thì lượt xem tăng 1
        $pr_view = DB::table('products')->where('product_id',$product_id)->increment('view',1);
        $img = DB::table('images')->select('product_id','image')->where('product_id',$product_id)->get();
        //lấy ra sản phẩm
        $imgarray = array();
        foreach ($img as $key => $value) {
            $imgarray[$value->image] = $value->image;
        }
        $pr_detail = DB::table('products')->where('product_id',$product_id)->first();
        // lấy ra sản phẩm tượng tự
        $pr_relate = DB::table('products')->where('category_id',$pr_detail->category_id)->where('product_id','<>',$product_id)->inRandomOrder()->limit(4)->get();
        return view('pages.detail-product',compact('pr_detail','img','pr_relate'));
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

    public function getGioHang()
    {   //lấy các thứ hiện tại 
        $content = Cart::content();
      
        $total = Cart::total(0,",",".");
        return view('pages.shopping-cart',compact('content','total'));
        
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
    
    public function capnhat(Request $request)
    {
        // $sp = products::where('id',Cart::get($request->rowId)->id);
        // $sldd = Cart::get($request->rowId)->qty;
        // if ($request->qty > $sp->soluong) {
        //     return 'Không đủ';
        // } else {
            Cart::update($request->rowId, $request->qty);
        // }
        // 
        $thanhtien = Cart::get($request->rowId)->price *Cart::get($request->rowId)->qty;
        return response()->json(['thanhtien' => number_format($thanhtien,0,",","."), 'tongtien' => Cart::subtotal(0)]);

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
    
   
}
