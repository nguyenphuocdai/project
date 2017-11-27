<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\categories;
use App\products;
use DB;
use App\users;
use App\news;
use App\customers;
use App\orders;
use App\coupons;
use App\orders_detail;
use Flashy;
use Charts;

class DashboardController extends Controller
{
    public function index()
    {	
    	$cates = DB::table('categories')->get()->count();
    	$news = DB::table('news')->get()->count();
    	$customer = DB::table('customers')->get()->count();
		$products = DB::table('products')->get()->count();
		$orders = orders::select('*')->where('status',0)->orderBy('created_at','DESC')->get()->count();
		$users = DB::table('users')->get()->count();
        $coupon = DB::table('coupons')->get()->count();
		Flashy::primaryDark('Chào mừng bạn đến với hệ thống');

        $userschart = users::where(DB::raw("(DATE_FORMAT(created_at,'%Y'))"),date('Y'))
                    ->get();
        $chart = Charts::database($userschart, 'bar', 'highcharts')
                  ->title("Biểu đồ thống kê thành viên/tháng")
                  ->elementLabel("Thành viên mới/tháng")
                  ->dimensions(1000, 500)
                  ->responsive(false)
                  ->groupByMonth(date('Y'), true);

        $couponchart = products::where(DB::raw("(DATE_FORMAT(created_at,'%Y'))"),date('Y'))
                    ->get();
        $chartCoupon = Charts::database($couponchart, 'bar', 'highcharts')
                  ->title("Biểu đồ thống kê sản phẩm mới/tháng")
                  ->elementLabel("sản phẩm mới/tháng")
                  ->dimensions(1000, 500)
                  ->responsive(false)
                  ->groupByMonth(date('Y'), true);
    	return view('admin.tong-quan',compact('cates','products','orders','users','customer','news','coupon','chart','chartCoupon'));

    }

    
}
