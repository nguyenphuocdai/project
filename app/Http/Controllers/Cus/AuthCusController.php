<?php

namespace App\Http\Controllers\Cus;
use App\Http\Controllers\Controller;
use Illuminate\Foundation\Auth\AuthenticatesUsers;
use App\Http\Requests\LoginRequest;
use Auth;
use Cart;use View;
class AuthCusController extends Controller
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

    // moot vai phim tat
    // alt+shrit+f  => formatt code
    // clt+h  => thay thees code hanfg loat
    // clt+p tim kiem file

    public function showLoginForm()
    {
        $content = Cart::content();
        $subtotal = Cart::subtotal(0,",",".");
        return view('pages.login-customer',compact('content','subtotal'));
    }

    public function postLogin(LoginRequest $r)
    {
        $login = array (
            'username'=>$r->txtUsername,
            'password'=>$r->txtPassword
        );
        if(Auth::guard("customers")->attempt($login))
        {
            return redirect('/');
        }
        else
        {
            return redirect()->back()->with(['flash_level'=>'warning','flash_message'=>'Đăng nhập thất bại, vui lòng kiểm tra lại ! ']);;
        }
    }
     public function getDangXuat()
    {
        Auth::guard('customers')->logout();
        return redirect('/');
    }
    
}




