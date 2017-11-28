<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
use App\customers;
use DateTime;
use App\products;
use Validator;
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
    public function postChooseDay(Request $request)
    {
        $validator = Validator::make($request->all(),[
            'txtStartDate' => 'required|date',
            'txtEndDate' => 'required|date|after_or_equal:txtStartDate',
        ],[
            'txtStartDate.required' => 'Bạn chưa chọn ngày bắt đầu.',
            'txtEndDate.required' => 'Bạn chưa chọn ngày bắt đầu.',
            'txtEndDate.after_or_equal' => 'Ngày kết thúc phải sau ngày bắt đầu.'
        ]);
        if($validator->passes()){
    	$tamp = DB::table('orders_detail')->select('product_id', DB::raw('sum(quantity) as total'))->whereBetween('date_signed',[$request->txtStartDate,$request->txtEndDate])->groupBy('product_id')->orderBy('total','desc')->get();
        $sd= $request->txtStartDate;
        $ed = $request->txtEndDate;
    	
    	return view('admin.statistics.chooseday',compact('tamp','sd','ed'));
        }
        else{
            return redirect()->back()->with(['flash_level'=>'danger','flash_message'=>'Ngày bắt đầu và ngày kết thúc là bắt buộc chọn. Ngày kết thúc phải sau ngày bắt đầu']);
        }
    }
    public function getCustomer(){
        $data = DB::table('customers')->get();
        return view('admin.statistics.customer',compact('data'));
    }
}
