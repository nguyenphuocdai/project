@extends('pages.master')
@section('content')
<section class="titlebar">
	<div class="container">
		<div class="sixteen columns">
			<h2>Thanh Toán</h2>
			
			<nav id="breadcrumbs">
				<ul>
					<li><a href="#">Trang Chủ</a></li>
					<li><a href="#">Giỏ hàng</a></li>
					<li><a href="#">Thanh toán</a></li>
					<li>Chi tiết thanh toán</li>
				</ul>
			</nav>
		</div>
	</div>
</section>
<!-- Content
================================================== -->
<!-- Container -->
<form action="{{ url('dat-hang') }}" method="post" accept-charset="utf-8">
	<input type="hidden" name="_token" value="{{csrf_token()}}">
<div class="container">
	
	
<div class="sixteen columns full-width">
	<div class="checkout-section cart check-cart">THÔNG TIN KHÁCH HÀNG</div>
	<ul class="address-review">
		<li><?php if(Auth::guard('customers')->user())
                        {
                          $tamp = Auth::guard('customers')->user();
                          echo "<div>Tài khoản: ".$tamp->username."</div>";
                          
                          echo "<div>Họ và tên: ".$tamp->name."</div>";
                           
                          echo "<div>Số điện thoại: ".$tamp->phone_number."</div>";

                          echo "<div>Địa chỉ nhận hàng: ".$tamp->address."</div>";

                          echo "<div class='address-italic'>Địa chỉ nhận hàng (Trường hợp không dùng địa chỉ đăng ký vui lòng điền vào ô sau):</div> "."<input class='address-italic-input' type='text' name='txtAddresreceive' />";
                        }
                        else{
                        	echo "<strong>Nếu chưa có tài khoản</strong>"." "."<strong><a href=dang-ky-khach-hang>Ấn vào đây </a></strong>";
                        }
                        ?></li>
                       <li><label class="control-label" ><?php if(Auth::guard('customers')->user())
                      echo "";
                      else 
                        echo "Vui lòng đăng nhập để có thể đặt hàng"." "."<strong><a >"."<a href=dang-nhap-khach-hang>Ấn vào đây </a>"."</a></strong>";
                       ?>
                      </label></li>
	</ul>
</div>
</div>
<div class="container">
{{-- <div class="eight columns">
	<!-- Billing Details Content -->
	<div class="checkout-section active"><span>2</span>Chi tiết thanh toán</div>

	<div class="clearfix"></div>
	
</div> --}}
<!-- Billing Details / Enc -->
<!-- Checkout Cart -->
<div class="sixteen columns">
	<div class="checkout-section cart check-cart">GIỎ HÀNG</div>
	<!-- Cart -->
	<table class="checkout cart-table responsive-table">
		<tr>
			<th class="hide-on-mobile">Hình ảnh</th>
			<th>Tên sản phẩm</th>
			<th>Giá</th>
			<th>Số lượng</th>
			<th>Thành tiền</th>
		</tr>
		
		<!-- Item #1 -->
		@foreach($content as $item_content)
		<tr>
			<td class="hide-on-mobile"><img src="{{ asset('resources/upload/'.$item_content->options->img)}}" alt=""/></td>
			<td class="cart-title"><a href="#">{{ $item_content->name }}</a></td>
			<td>{{number_format($item_content->price,0,",",".")}}</td>
			<td class="qty-checkout">{{$item_content->qty}}</td>
			<td class="cart-total">{{number_format($item_content->price*$item_content->qty,0,",",".")}}</td>
		</tr>
		@endforeach
	</table>
	<!-- Apply Coupon Code / Buttons -->
	<table class="cart-table bottom">
		<tr>
			<th class="checkout-totals">
				<div class="checkout-subtotal">
					Tổng tiền: <span>{{ $total }}</span>
				</div>
			</th>
		</tr>
	</table>
	<button type="submit" class="continue button color">THANH TOÁN</button>
</div>
<!-- Checkout Cart / End -->
</div>
</form>
<!-- Container / End -->
<div class="margin-top-50"></div>
@endsection