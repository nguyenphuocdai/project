<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\categories;
use App\products;
use DB;
use App\users;
use App\customers;
use App\orders;
use App\orders_detail;

class DashboardController extends Controller
{
    public function index()
    {	
    	$cates = DB::table('categories')->get()->count();
		$products = DB::table('products')->get()->count();
		$orders = orders::select('*')->where('status',0)->orderBy('created_at','DESC')->get()->count();
		$users = DB::table('users')->get()->count();
    	return view('admin.tong-quan',compact('cates','products','orders','users'));
    }
}
