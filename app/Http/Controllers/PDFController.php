<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use PDF;
use DB;
class PDFController extends Controller
{
    public function getPDF($order_id)
    {
    	$order = DB::table('orders_detail')->where('order_id',$order_id)->get();
    	$or = DB::table('orders')->where('order_id',$order_id)->first();
    	
    	$pdf = PDF::loadview('admin.getOrderPDF',compact('order','or'));
    	return $pdf->stream('orders.pdf');
    }
}
