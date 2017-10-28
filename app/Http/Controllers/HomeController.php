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
use View;
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
        // dd(Cart::content()->groupBy('id')->count());

        //lấy các mới nhất
        $pr_new = DB::table('products')->select('product_id','name','price','alias','category_id','quantity','discount','image','created_at')->orderBy('created_at','DESC')->limit(4)->get();
        //đã xóa giao diện cũ
        $pr = DB::table('products')->select('product_id','name','price','alias','image','created_at')->orderBy('product_id','DESC')->limit(4)->get();
        //lấy các sp xem nhiều
        $pr_view = DB::table('products')->select('product_id','name','price','alias','image')->orderBy('view','DESC')->limit(3)->get();
        $pr_quantity = DB::table('products')->select('product_id','name','price','alias','image','quantity')->orderBy('quantity','DESC')->limit(3)->get();
        return view('pages.home',compact('pr','pr_view','pr_new','pr_quantity'));
    }
    public function getcategories()
    {   
        $pr = DB::table('products')->paginate(6);
        return view('pages.allshop',compact('pr'));
    }
     public function getsearch(Request $req){
        $products = Products::where('name','like','%'.$req->key.'%')->orWhere('keywords',$req->key)->orWhere('price',$req->key)->paginate(10);
        return view('pages.searchProduct',['msg'=>'Kết quả tìm kiếm: '. $req->key],compact('products'));
    }

    public function categories($category_id)
    {        //lấy các sản phẩm theo loại
        $pr_cate = DB::table('products')->select('product_id','name','price','alias','category_id','quantity','discount','image')->where('category_id',$category_id)->paginate(6);
        return view('pages.shopcategories',compact('pr_cate'));

    }
    public function detail($product_id)
    {   
        //click vào thì lượt xem tăng 1
        $pr_view = DB::table('products')->where('product_id',$product_id)->increment('view',1);
        $display_view = DB::table('products')->where('product_id',$product_id)->first();
        $img = DB::table('images')->select('product_id','image')->where('product_id',$product_id)->get();
        //lấy ra sản phẩm
        $imgarray = array();
        foreach ($img as $key => $value) {
            $imgarray[$value->image] = $value->image;
        }
        $pr_detail = DB::table('products')->where('product_id',$product_id)->first();
        // lấy ra sản phẩm tượng tự
        $pr_relate = DB::table('products')->where('category_id',$pr_detail->category_id)->where('product_id','<>',$product_id)->inRandomOrder()->limit(4)->get();
        return view('pages.detail-product',compact('pr_detail','img','pr_relate','display_view'));
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
        $sub = Cart::subtotal();
        $subtotal = Cart::subtotal(0,",",".");

        return view('pages.shopping-cart',compact('content','subtotal'));
        
    }
    public function getXoaSanPham($id)
    {
        Cart::remove($id);
        return redirect()->route('giohang');
    }
    
    public function capnhat(Request $request)
    {
        Cart::update($request->rowId, $request->qty);
        $thanhtien = Cart::get($request->rowId)->price * Cart::get($request->rowId)->qty;
        return response()->json(['thanhtien' => number_format($thanhtien,0,",","."), 'tongtien' => Cart::subtotal(0)]);

    }
   
    public function cate1()
    {
        $cate1 = DB::table('products')->whereBetween('price', [100000,2000000 ])->orderBy('price','DESC')->paginate(6);
        return view('pages.priceCate1',compact('cate1','pr_cate'));
    }
     public function cate2()
    {
        //sản phẩm giá 100-300
        $cate2 = DB::table('products')->whereBetween('price', [2000000,5000000 ])->orderBy('price','DESC')->paginate(6);
        return view('pages.priceCate2',compact('cate2'));
    }
    public function cate3()
    {
        $cate3 = DB::table('products')->whereBetween('price', [5000000,10000000 ])->orderBy('price','DESC')->paginate(6);
        return view('pages.priceCate3',compact('cate3'));
    }
    public function cate4()
    {
        $cate4 = DB::table('products')->whereBetween('price', [10000000,15000000 ])->orderBy('price','DESC')->paginate(6);
        return view('pages.priceCate4',compact('cate4'));
    }
     public function cate5()
    {
        $cate5 = DB::table('products')->where('price','>','15000000')->orderBy('price','DESC')->paginate(6);
        return view('pages.priceCate5',compact('cate5'));
    }
    public function categoriesYield($category_id)
    {        //lấy các sản phẩm theo loại
        $pr_cate = DB::table('products')->select('product_id','name','price','alias','category_id','quantity','discount','image')->where('category_id',$category_id)->paginate(6);
        return view('pages.categoriesYield',compact('pr_cate'));
    }
    public function sortPrice(){
        $sortPrice = DB::table('products')->select('product_id','name','price','alias','image')->orderBy('price','DESC')->paginate(6);
        return view('pages.sortPrice',compact('sortPrice'));
    }
    public function sortPriceSmall(){
        $sortPriceSmall = DB::table('products')->select('product_id','name','price','alias','image')->orderBy('price','ASC')->paginate(6);
        return view('pages.sortPriceSmall',compact('sortPriceSmall'));
    }
    
    
   
}
