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
use App\orders_detail;
use Flashy;

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
		Flashy::primaryDark('Chào mừng bạn đến với hệ thống', 'http://your-awesome-link.com');
    	return view('admin.tong-quan',compact('cates','products','orders','users','customer','news'));
    }

    
}
