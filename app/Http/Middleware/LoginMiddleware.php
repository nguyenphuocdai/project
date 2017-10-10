<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Support\Facades\Auth;
use App\Users;
class LoginMiddleware
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next, $guard = null)
    {
        // if(Auth::check())
        // {
        //     //lấy người dùng đang đăng nhập
        //     $user = Auth::users();
        //     dd($user);
        //     if($user->level == 1)
        //         return $next($request);   
        // }
        // else
        //     return redirect ('dangnhap');
        if (Auth::guard($guard)->check()) 
        {
            // $user = Auth::user();
            return $next($request);
        }
            else 
                return redirect('/dangnhap')->with(['flash_level'=>'danger','flash_message'=>'Vui lòng kiểm tra lại tài khoản hoặc mật khẩu !']);
        }
        
       
    }
    

