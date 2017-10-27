<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use Illuminate\Foundation\Auth\AuthenticatesUsers;
use Socialite;
use Auth;
use Exception;
use App\Users;
use App\Http\Controllers\Auth\bcrypt;

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
    // public function redirectToProvider()
    // {
    //     return Socialite::driver('facebook')->redirect();
    // }
    // public function handleProviderCallback()
    // {
    //     try {
    //         $user = Socialite::driver('facebook')->user();
    //     } catch (Exception $e) {
    //         return redirect('auth/facebook');
    //     }
    //     $authUser = $this->findOrCreateUser($user);

    //     Auth::login($authUser, true);

    //     return redirect()->route('/');
    // }
    // private function findOrCreateUser($facebookUser)
    // {
    //     $authUser = User::where('facebook_id', $facebookUser->id)->first();

    //     if ($authUser){
    //         return $authUser;
    //     }

    //     return User::create([
    //         'username' => $facebookUser->name,
    //         'email' => $facebookUser->email,
    //         'facebook_id' => $facebookUser->id,
    //         'thumbnail' => $facebookUser->avatar
    //     ]);
    // }

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
        $findUser = Users::where('email',$user->getEmail())->first();
        if ($findUser){
            Auth::login($findUser);
        }
        else{
        $newUser = new Users;
        $newUser->email = $user->getEmail();
        $newUser->username = $user->getName();
        $newUser->password = bcrypt(123456);
        $newUser->remember_token = $user->token;
        dd($newUser);
        $newUser->save();
        Auth::login($newUser);

    }   
        return redirect('/');
    }
}
    
