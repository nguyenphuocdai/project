@extends('pages.master')
@section('content')
	
	<section class="titlebar">
<div class="container">
	<div class="sixteen columns">
		<h2>THANH TOÁN THÀNH CÔNG</h2>
		
		<nav id="breadcrumbs">
			<ul>
				<li><a href="#">Trang chủ</a></li>
				<li>Kết quả thanh toán</li>
			</ul>
		</nav>
	</div>
</div>
</section>


<!-- Content
================================================== -->

<!-- Container -->
<div class="container">

	<div class="sixteen columns">
		@if ($message = Session::get('success'))
			<div class="custom-alerts alert alert-success fade in">
				<button type="button" class="close" data-dismiss="alert" aria-hidden="true"></button>
				{!! $message !!}
			</div>
			<?php Session::forget('success');?>
			@endif
			@if ($message = Session::get('error'))
			<div class="custom-alerts alert alert-danger fade in">
				<button type="button" class="close" data-dismiss="alert" aria-hidden="true"></button>
				{!! $message !!}
			</div>
			<?php Session::forget('error');?>
			@endif
		<section id="not-found">
			<h2><i class="fa fa-check-square"></i></h2>
			<p>Cám ơn bạn đã quan tâm.</p>
			<p>Trizzy-Shop sẽ giao hàng đến bạn sớm nhất có thể.</p>
			<a href="{{ url('shop') }}" class="button color cart-btns proceed" style="float: right; margin-top: 40px;">tiếp tục mua sắm</a>
		</section>
	</div>

</div>
<!-- Container / End -->

<div class="margin-top-50"></div>

@endsection