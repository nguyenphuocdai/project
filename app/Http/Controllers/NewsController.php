<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\news;
use File;
use DB;
use Illuminate\Support\Facades\Auth;
class NewsController extends Controller
{
    public function getAdd()
    {
    	return view('admin.news.add');
    }
    public function postAdd(Request $r)
    {
         $this->validate($r, [
        'txtTittle' => 'required',
        'txtIntro' => 'required',
        'txtContent'=>'required',
        'txtImage'=>'required|image',
        ],
        [
        'txtTittle.required'=>'Bạn chưa nhập tiêu đề !',
        'txtIntro.required'=>'Bạn chưa nhập đoạn giới thiệu !',
        'txtContent.required'=>'Bạn chưa nhập nội dung !',
        'txtImage.required'=>'Bạn chưa chọn hình ảnh!',
        'txtImage.image'=>'File bạn chọn không phải hình ảnh !'
        ]
        );
    	$n = new news;
    	$n->tittle = $r->txtTittle;
        $n->intro = $r->txtIntro;
    	$n->content = $r->txtContent;
    	$n->user_id = Auth::user()->user_id;
    	$filename = $r->file('txtImage')->getClientOriginalName();
    	$n->image = $filename;
    	$r->file('txtImage')->move('resources/news/',$filename);
    	$n->save();
    	return redirect()->route('admin.news.list')->with(['flash_level'=>'success','flash_message'=>'Đăng bài thành công !']);
    }
    public function getList()
    {
    	$news = DB::table('news')->orderBy('news_id','DESC')->get();
    	return view('admin.news.list',compact('news'));
    }
    public function getDelete($news_id)
    {
    	$n = DB::table('news')->where('news_id',$news_id)->first();
        $t = DB::table('news')->where('news_id',$news_id)->first();
        if(Auth::user()->level==1 || $t->user_id == Auth::user()->user_id )
        {
           File::delete('resources/news/'.$t->image);
        	//$n->delete($id);
           DB::table('news')->where('news_id',$news_id)->delete();
            return redirect()->route('admin.news.list')->with(['flash_level'=>'success','flash_message'=>'Xóa bài thành công']);
         }
         else 
            return redirect()->route('admin.news.list')->with(['flash_level'=>'warning','flash_message'=>'Bạn không có quyền xóa bài viết !']);
    }
    public function getEdit($news_id)
    {
        $t = DB::table('news')->where('news_id',$news_id)->first();
        if(Auth::user()->level==1 || $t->user_id == Auth::user()->user_id )
       { 
        $news = DB::table('news')->where('news_id',$news_id)->first();
            return view('admin.news.edit',compact('news'));
        }
        else 
            return redirect()->route('admin.news.list')->with(['flash_level'=>'warning','flash_message'=>'Bạn không có quyền cập nhật bài viết !']);
    }
    public function postEdit($news_id, Request $r)
    {
        $this->validate($r, [
        'txtTittle' => 'required',
        'txtIntro' => 'required',
        'txtContent'=>'required',
        'txtImage'=>'image',
        ],
        [
        'txtTittle.required'=>'Bạn chưa nhập tiêu đề !',
        'txtIntro.required'=>'Bạn chưa nhập đoạn giới thiệu !',
        'txtContent.required'=>'Bạn chưa nhập nội dung !',
        
        'txtImage.image'=>'File bạn chọn không phải hình ảnh !'
        ]
        );
        $news = news::find($news_id);
        $news->tittle = $r->txtTittle;
        $news->intro = $r->txtIntro;
        $news->content = $r->txtContent;
        $img_current = 'resources/news/'.$r->img_current;
        if(!empty($r->file('txtImage')))
            {
                $file_name= $r->txtImage->getClientOriginalName();
                $news->image=$file_name;
                $r->file('txtImage')->move('resources/news/',$file_name);
                if(file::exists($img_current))
                {
                    file::delete($img_current);
                }
            }
        else
        {
            echo "Không có hình ảnh nào !";
        }
        $news->save();
        return redirect()->route('admin.news.list')->with(['flash_level'=>'success','flash_message'=>'Cập nhật bài viết thành công']);
    }
    public function getTinTuc()
    {
        $news = DB::table('news')->orderBy('created_at','DESC')->paginate(4);
        return view('frontend.pages.news',compact('news'));
    }
    public function getTinTucChiTiet($news_id)
    {
        $detail = DB::table('news')->where('news_id',$news_id)->first();
        return view('frontend.pages.news_detail',compact('detail'));
    }
}
