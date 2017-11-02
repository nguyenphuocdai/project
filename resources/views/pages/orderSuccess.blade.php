@extends('pages.master')
@section('content')
	
	<section class="titlebar">
<div class="container">
	<div class="sixteen columns">
		<h2>ĐẶT HÀNG THÀNH CÔNG</h2>
		
		<nav id="breadcrumbs">
			<ul>
				<li><a href="#">Trang chủ</a></li>
				<li>Kết quả đặt hàng</li>
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

		</section>
	</div>

</div>
<!-- Container / End -->

<div class="margin-top-50"></div>

@endsection