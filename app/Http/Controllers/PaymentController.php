<?php

namespace App\Http\Controllers;

use Cart;
use Auth;
use App\Http\Requests;
use Illuminate\Http\Request;
use Validator;
use URL;
use Session;
use Redirect;
use Input;
use App\Users;
use Cartalyst\Stripe\Laravel\Facades\Stripe;
use Stripe\Error\Card;

class PaymentController extends Controller
{
    public function index(){
        if(Auth::guard('customers')->check())
        {
    	$total = Cart::subtotal(0);
        $convertTotal = str_replace(',', '', $total);
    	return view('pages.payment',compact('convertTotal'));
    }   else {
        echo "
            <script>
                alert('Vui lòng đăng nhập trước khi thanh toán online');
                window.location='".url('dat-hang')."';
            </script>";
    }
    }

    public function payment(Request $request){
      	$total = Cart::total(0);
        $convertTotal = str_replace(',', '', $total);
     	$validator = Validator::make($request->all(),[
    		'card_no' => 'required',
    		'exp_year' =>'required',
    		'exp_month' =>'required',
    		'cvv_no' => 'required',
    	]);
    	$input = $request->all();
    	if($validator->passes()){
    		
    		$input = array_except($input,array('_token')); 

            $stripe = Stripe::make('sk_test_NHwuPHxgDl3SoiqvnmjDVTY1');
            try {
                $token = $stripe->tokens()->create([
                    'card' => [
                        'number'    => $request->get('card_no'),
                        'exp_month' => $request->get('exp_month'),
                        'exp_year'  => $request->get('exp_year'),
                        'cvc'       => $request->get('cvv_no'),
                    ],
                ]);

                if (!isset($token['id'])) {
                    \Session::put('error','The Stripe Token was not generated correctly');
                     return redirect('payment');
                }
                $charge = $stripe->charges()->create([
                    'card' => $token['id'],
                    'currency' => 'VND',
                    'amount'   => $convertTotal,
                    'description' => 'Payment form Trizzy-Shopping',
                ]);
               
                if($charge['status'] == 'succeeded') {
                    /**
                    * Write Here Your Database insert logic.
                    */
                    \Session::put('success','Thanh toán thành công, Cám ơn bạn đã quan tâm Shop.');
                     return redirect('payment');
                } else {
                    \Session::put('error','Số tiền trong tài khoản bạn không đủ.');
                     return redirect('payment');
                }
            } catch (Exception $e) {
                \Session::put('error',$e->getMessage());
                 return redirect('payment');
            } catch(\Cartalyst\Stripe\Exception\CardErrorException $e) {
                \Session::put('error',$e->getMessage());
                 return redirect('payment');
            } catch(\Cartalyst\Stripe\Exception\MissingParameterException $e) {
                \Session::put('error',$e->getMessage());
                 return redirect('payment');
            }
    	}
    	\Session::put('error','All fields are required!!');
        return redirect('payment');
    }
}
