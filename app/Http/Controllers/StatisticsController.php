<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
use App\customers;
use DateTime;
use App\products;
use Illuminate\Support\Facades\Auth;
class StatisticsController extends Controller
{
    public function getChooseDay(Request $r)
    {
        if(Auth::user()->level==1)
        {
        	$tamp = DB::table('orders_detail')->select('product_id',DB::raw('sum(quantity) as total'))->groupBy('product_id')->orderBy('total','desc')->get();
        	return view('admin.statistics.chooseday',compact('tamp'));
         }
         else
            return redirect()->back()->with(['flash_level'=>'danger','flash_message'=>'Bạn không có quyền sử dụng chức năng này !']);
    }
    public function postChooseDay(Request $r)
    {
    	$tamp = DB::table('orders_detail')->select('product_id', DB::raw('sum(quantity) as total'))->whereBetween('date_signed',[$r->txtStartDate,$r->txtEndDate])->groupBy('product_id')->orderBy('total','desc')->get();
        $sd= $r->txtStartDate;
        $ed = $r->txtEndDate;
    	
    	return view('admin.statistics.chooseday',compact('tamp','sd','ed'));
    }
    public function getCustomer(){
        $data = DB::table('customers')->get();
        return view('admin.statistics.customer',compact('data'));
    }
}
