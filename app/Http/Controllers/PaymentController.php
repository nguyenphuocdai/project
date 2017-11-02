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
use View;
use App\customers;
use App\orders;
use App\orders_detail;
use App\products;
use App\Users;
use DB;
use Cartalyst\Stripe\Laravel\Facades\Stripe;
use Stripe\Error\Card;
use Mail;
use Debugbar;


class PaymentController extends Controller
{
    public function index(){

        $subtotal = Cart::subtotal(0,",",".");
        View::share('subtotal', $subtotal);
        $total = Cart::subtotal(0);
        $convertTotal = str_replace(',', '', $total);
        if(Auth::guard('customers')->check())
        {
            if(count(Cart::content())<1)
            {
                 echo 
                        "<script>
                            alert('Giỏ hàng rỗng !');
                            window.location='".url('dat-hang')."';
                        </script>";
            }else{
               return view('pages.payment',compact('convertTotal'));
            }
        }   
        else {
        echo "
            <script>
                alert('Vui lòng đăng nhập trước khi thanh toán online');
                window.location='".url('dat-hang')."';
            </script>";
    }
    }

    public function payment(Request $request){
      	$total = Cart::subtotal(0);
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
                
                $cus = Auth::guard('customers')->user();
                $order = new orders();
                $order->customer_id= $cus->customer_id;
                $order->address_receive = $cus->address;
                $order->payment = 1;
                $order->phone_social = $cus->phone_number;
                $order->datesigned = $cus->created_at;
                $order->save();

                $content= Cart::content();
                        foreach($content as $item)
                        {
                            // dd($item->qty);
                            $t=DB::table('products')->where('product_id',$item->id)->first()->quantity;
                            if($item->qty*1 <= $t)
                            {
                                    $order_detail = new orders_detail();
                                    $order_detail->order_id=$order->order_id;

                                    $order_detail->product_id = $item->id;

                                    $order_detail->quantity = $item->qty;

                                    $order_detail->price = $item->price;

                                    $order_detail->total =$item->qty*$item->price;
                                    $tamp = $item->rowId;
                                    DB::table('products')->where('product_id',$item->id)->decrement('quantity',$item->qty);
                                    $order_detail->save();
                                     $data=[];
                                     Mail::send('orderSuccess', $data, function ($message) 
                                    {
                                        $message->from('hoanghoang360@gmail.com', 'Trizzy-Shop'); 

                                        $message->to(Auth::guard("customers")->user()->email,'Khách Hàng')->subject('Thông báo mua hàng từ Trizzy-Shop');
                                    });
                                
 
                            }
                            else{
                                    $order_detail = new orders_detail();
                                    $order_detail->order_id=$order->order_id;

                                    $order_detail->product_id = $item->id;

                                    $order_detail->quantity = $item->qty;

                                    $order_detail->price = $item->price;

                                    $order_detail->total =$item->qty*$item->price;
                                    $order_detail->note = $t-$item->qty*1;
                                    $tamp = $item->rowId;
                                    DB::table('products')->where('product_id',$item->id)->update(['quantity' => 0]);;


                                    $order_detail->save();
                                    //số lượng nhỏ hơn db phải gởi mail !
                                    $data=['note'=> $order_detail->note,'product_id'=>$order_detail->product_id];
                                     Mail::send('notificationMail', $data, function ($message) 
                                    {
                                        $message->from('hoanghoang360@gmail.com', 'Trizzy-Shop'); 

                                        $message->to(Auth::guard("customers")->user()->email,'Khách Hàng')->subject('Thông báo mua hàng từ Trizzy-Shop');
                                    });
                            }
                        }


                    \Session::put('success','Thanh toán thành công, Cám ơn bạn đã quan tâm Shop.');
                     Cart::remove($tamp);
                     return redirect('success');
                     
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
        return redirect('pages.404');
    }

    public function _404(){
        $content = Cart::content();
        $subtotal = Cart::subtotal(0,",",".");
        return view('pages.404',compact('content','subtotal'));
    }
    public function success(){
        $content = Cart::content();
        $subtotal = Cart::subtotal(0,",",".");
        return view('pages.success',compact('content','subtotal'));
    }
}
