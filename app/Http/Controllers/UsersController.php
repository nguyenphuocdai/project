<?php

namespace App\Http\Controllers;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Http\Requests\UsersRequest;
use App\Http\Requests\UserEditRequest;
use App\Users;
use App\products;
use Hash;
use DB;
use App\Http\Requests\LoginRequest;
use Illuminate\Support\Facades\Auth;
use Session;
use Illuminate\Support\Facades\Password;
class UsersController extends Controller
{
    public function getList()
    {   
        $user = users::select('user_id','username','level','email')->orderBy('user_id','DESC')->get();
        return view('admin.users.list',compact('user'));
    }
    public function getAdd()
    {
        if(Auth::user()->level == 1)
        {
    	   return view('admin.users.add');
        }
        else
            return redirect()->back()->with(['flash_level'=>'danger','flash_message'=>'Bạn không có quyền!']);
    
    }
    public function postAdd(UsersRequest $r)
    {
        $user = new Users();
        $user->username = $r->txtUser;
        $user->password = Hash::make($r->txtPassword);
        $user->email =$r->txtEmail;
        $user->phone_number =$r->txtPhone;
        $user->level =$r->rdoLevel;
        $user->remember_token =$r->_token;
        $user->save();
        return redirect()->route('admin.users.list');
    }
    public function getDangNhap(){

    	return view('admin.login');
    }
    public function postDangNhap(LoginRequest $request)
    {
      
        $login = array (
            'username'=>$request->txtUsername,
            'password'=>$request->txtPassword
    
                );
        // if(DB::table('users')->where($login)->count() > 0 )
      
        if(Auth::attempt($login))
        {
            echo "ok";
            return redirect()->route('admin.products.list');
        }
        else
        {
            echo 
                        "<script>
                            alert('Kiểm tra lại tài khoản hoặc mật khẩu !');
                            window.location='".url('dangnhap')."';
                        </script>";
            return redirect('dangnhap')->with(['flash_level'=>'danger','flash_message'=>'Vui lòng kiểm tra lại tài khoản hoặc mật khẩu !']);
        }
    }

    public function getDangXuat(){
            Auth::logout();
            return redirect('dangnhap');
        }
    public function getEdit($user_id)
    {   
        $data = users::find($user_id);
        //xét quyền
        if((Auth::user()->level == 0 && Auth::user()->user_id != $user_id ) || ($data->level == 1 && Auth::user()->user_id != $user_id))
        {
             return redirect()->route('admin.users.list')->with(['flash_level'=>'danger','flash_message'=>'Bạn không có quyền !!']);
        }
        return view('admin.users.edit',compact('data'));
    }
    public function postEdit($user_id,UserEditRequest $r)
    {
            
            $user = Users::find($user_id);
            $user->password = Hash::make($r->txtPassword);
            
            $user->phone_number = $r->txtPhone;
            $user->save();
            return redirect()->route('admin.users.list')->with(['flash_level'=>'success','flash_message'=>'Cập nhật thành công!']);

    }
    public function getDelete($user_id)
    {
        $user_current = Auth::user()->level;
        //ko được xóa chính họ
        $user = users::find($user_id);
        // dd($user);
        //nếu user có đăng trong bảng product thi ko được xóa.
        $user_pr = DB::table('products')->where('user_id',$user_id)->get();

        if($user_current == 0 || $user->level == 1 || ($user->level == 0 && count($user_pr)>0))
        {
            return redirect()->route('admin.users.list')->with(['flash_level'=>'danger','flash_message'=>'Bạn không có quyền xóa !']);
        }
        else
        {
            $user->delete($user_id);
            return redirect()->route('admin.users.list')->with(['flash_level'=>'success','flash_message'=>'Xóa thành công!']);
        }
    }
    public function getResetPassword()
    {
        return view('auth.passwords.email');
    }
     
}
