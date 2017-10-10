<?php

namespace App\Http\Controllers\Auth;
use App\Http\Controllers\Controller;
use Illuminate\Foundation\Auth\AuthenticatesUsers;
use App\Http\Requests\LoginRequest;
use Illuminate\Support\Facades\Auth;
class LoginController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Login Controller
    |--------------------------------------------------------------------------
    |
    | This controller handles authenticating users for the application and
    | redirecting them to your home screen. The controller uses a trait
    | to conveniently provide its functionality to your applications.
    | mia sao ko click dc vo class nhi :)
    */

    use AuthenticatesUsers;


    /**
     * Where to redirect users after login.
     *
     * @var string
     */
    protected $redirectTo = '/';

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {   
      
        $this->middleware('guest', ['except' => 'logout']);
    }
    // public function getLogin()
    // {
    //     return view('admin.login');
    // }

   
    // public function showLoginForm()
    // {
    //     return view('admin.login');
    // }

    // public function postLogin(LoginRequest $r)
    // {
    //     $login = array (
    //         'username'=>$r->txtUsername,
    //         'password'=>$r->txtPassword
            
    //     );
       
    //     if(Auth::attempt($login))
    //     {
    //         return redirect()->route('admin.product.list');
    //     }
    //     else
    //     {
    //          return redirect()->back()->with(['flash_level'=>'warning','flash_message'=>'Sai mật khẩu hoặc tài khoản!']);
    //     }
    // }
}
