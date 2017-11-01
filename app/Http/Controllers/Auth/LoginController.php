<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use Illuminate\Foundation\Auth\AuthenticatesUsers;
use Illuminate\Support\Facades\Auth;
use Laravel\Socialite\Facades\Socialite;
use Exception;
use App\Users;
use App\customers;
use App\Http\Controllers\Auth\bcrypt;
use Flashy;

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
        $this->middleware('guest')->except('logout');
    }

//google
    public function redirectToProvider()
    {
        return Socialite::driver('google')->redirect();
    }
    public function handleProviderCallback()
    {
        try {
            $user = Socialite::driver('google')->stateless()->user();

        } catch (Exception $e) {
            return redirect('/');
        }
        $findUser = customers::where('email',$user->getEmail())->first();
        if ($findUser){
        Auth::guard('customers')->loginUsingId($findUser->customer_id, true);
        }
        else{
        $newUser = new customers;
        $newUser->google_id = $user->getId();
        $newUser->email = $user->getEmail();
        $newUser->username = $user->getName();
        $newUser->name = $user->getName();
        $newUser->password = bcrypt(123456);
        $newUser->remember_token = $user->token;
        
        $newUser->save();
        Auth::guard('customers')->loginUsingId($newUser->customer_id, true);


    }   
        Flashy::success('Đăng nhập thành công', 'http://your-awesome-link.com');
        return redirect('/');
    }
    public function redirectToProvider_github()
    {
        return Socialite::driver('github')->redirect();
    }
    public function handleProviderCallback_github()
    {
        try {
            $user = Socialite::driver('github')->stateless()->user();

        } catch (Exception $e) {
            return redirect('/');
        }
        $findUser = customers::where('email',$user->getEmail())->first();
        if ($findUser){
            Auth::guard('customers')->loginUsingId($findUser->customer_id, true);
        }
        else{
        $newUser = new customers;
        $newUser->github_id = $user->getId();
        $newUser->email = $user->getEmail();
        $newUser->name = $user->getNickname();
        $newUser->username = $user->getNickname();
        $newUser->password = bcrypt(123456);
        $newUser->remember_token = $user->token;
        $newUser->save();

        Auth::guard('customers')->loginUsingId($newUser->customer_id, true);

    }   
        return redirect('/');
    }
}
    
