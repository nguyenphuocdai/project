@extends('pages.master')
@section('content')
	<section class="titlebar">
<div class="container">
	<div class="sixteen columns">
		<h2>Giỏ hàng</h2>
		
		<nav id="breadcrumbs">
			<ul>
				<li><a href="#">Trang Chủ</a></li>
				<li>Giỏ hàng</li>
			</ul>
		</nav>
	</div>
</div>
</section>

@include('admin.danger.danger')
                 <div class="row">
                    <div class="col-lg-12">
                    @if(Session::has('flash_message'))
                        <div class="alert alert-{{Session::get('flash_level')}}">
                            {{Session::get('flash_message')}}
                        </div>
                    @endif
                    </div>
                </div>
<div class="container cart">

	<div class="sixteen columns">

		<!-- Cart -->
		<table class="cart-table responsive-table">

			<tr>
				<th>Hình ảnh</th>
				<th>Tên sản phẩm</th>
				<th>Giá bán</th>
				<th>Số lượng</th>
				<th>Tổng tiền</th>
				<th></th>
			</tr>
					
			<!-- Item #1 -->
			@foreach($content as $item_content)
			<tr>
				<td><img class="image-cart" src="{{ asset('resources/upload/'.$item_content->options->img)}}" width="50" height="50" alt=""/></td>
				<td class="cart-title"><a href="#">{{ $item_content->name }}</a></td>
				<td>{{number_format($item_content->price,0,",",".")}}</td>
				<td>
					<form action='#'>
						<div class="qtyminus"></div>
						<input type='text' name="quantity" value='1' class="qty" value='{{$item_content->qty}}'  />
						<div class="qtyplus"></div>
					</form>
				</td>
				<td class="cart-total">$79.00</td>
				<td><a href="{{ url('xoa-san-pham',['id'=>$item_content->rowId]) }}" class="cart-remove"></a></td>
			</tr>
			@endforeach

			<!-- Item #2 -->

			</table>

			<!-- Apply Coupon Code / Buttons -->
			<table class="cart-table bottom">

				<tr>
				<th>
					{{-- <form action="#" method="get" class="apply-coupon">
						<input class="search-field" type="text" placeholder="Coupon Code" value=""/>
						<a href="#" class="button gray">Áp dụng mã giảm giá</a>
					</form> --}}

					<div class="cart-btns">
						<a href="{{ route('dathang') }}" class="button color cart-btns proceed">Thanh toán</a>
						<a href="#" class="button gray cart-btns" >Cập nhật giỏ hàng</a>
						<a href="#" class="button gray cart-btns" >Tiếp tục mua sắm</a>
					</div>
				</th>
				</tr>

			</table>
	</div>


	<!-- Cart Totals -->
	<div class="eight columns cart-totals">
		<h3 class="headline">Giỏ hàng thanh toán</h3><span class="line"></span><div class="clearfix"></div>

		<table class="cart-table margin-top-5">

			<tr>
				<th>Tổng cộng</th>
				<td><strong></strong></td>
			</tr>

			<tr>
				<th>Phí vận chuyển</th>
				<td>Free Shipping</td>
			</tr>

			<tr>
				<th>Tổng cộng hóa đơn</th>
				<td><strong>{{$total}}</strong></td>
			</tr>

		</table>
		<br>
		<!-- <a href="#" class="calculate-shipping"><i class="fa fa-arrow-circle-down"></i> Calculate Shipping</a> -->
	</div>

</div>

<div class="margin-top-40"></div>
@endsection