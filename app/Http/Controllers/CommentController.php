<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\comments;
class CommentController extends Controller
{
    public function postComment($pr_id, Request $r)
    {

    	if(Auth::guard("customers")->check())
    	{
    		$cm = new comments;
    		$cm->comment = $r->txtComment;
    		$cm->product_id = $pr_id;
    		$cm->customer_id = Auth::guard("customers")->user()->customer_id;
    		$cm->save();
    		return redirect()->back()->with(['flash_level'=>'success','flash_message'=>'Bình luận thành công !']);
    	}
    	else 
    	{
    			return redirect()->back()->with(['flash_level'=>'danger','flash_message'=>'Vui lòng đăng nhập để bình luận !']);
    	}

    }
}
