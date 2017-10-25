@extends('pages.master')
@section('content')
<section class="parallax-titlebar fullwidth-element"  data-background="#000" data-opacity="0.45" data-height="160">
	<img src="{{url('public/pages/images/titlebar_bg_01.jpg')}}" alt="" />
	<div class="parallax-overlay"></div>
	<div class="parallax-content">
		<h2>Shop <span>Vận chuyển toàn quốc</span></h2>
		<nav id="breadcrumbs">
			<ul>
				<li><a href="{{url('/')}}">Trang chủ</a></li>
				<li>Shop</li>
			</ul>
		</nav>
	</div>
</section>
<div class="container">
	<!-- Sidebar
	================================================== -->
	<div class="four columns">
		<!-- Categories -->
		<div class="widget margin-top-0">
			<h3 class="headline">Loại sản phẩm</h3><span class="line"></span><div class="clearfix"></div>
			<ul id="categories">
				<?php $menu = DB::table('categories')->get(); ?>
				@foreach($menu as $item_menu)
				<li><a href="{{url('loai-san-pham',[$item_menu->category_id,$item_menu->alias])}}" style="text-transform: uppercase;">{{$item_menu->name}}</a>
				@endforeach
				<div class="clearfix"></div>
			</div>
			<div class="widget margin-top-0">
				<h3 class="headline">Sản phẩm theo giá</h3><span class="line"></span><div class="clearfix"></div>
				<ul id="categories">
					<li><a href="{{ url('theo-gia-cate1') }}">< 2.000.000</a>
					<li><a href="{{ url('theo-gia-cate2') }}">2.000.000 - 5.000.000</a>
					<li><a href="{{ url('theo-gia-cate3') }}">5.000.000 - 10.000.000</a>
					<li><a href="{{ url('theo-gia-cate4') }}">10.000.000 - 15.000.000</a>
					<li><a href="{{ url('theo-gia-cate5') }}"> > 15.000.000</a>
					<div class="clearfix"></div>
				</div>
			</div>
			<!-- Content
			================================================== -->
			<div class="twelve columns" style="display: inline-flex;">
				<div ><a class="caption-btn" style="    margin-left: 20px;
				background-color: #eee;" href="{{ url('sortPrice') }}">Sắp xếp theo giá cao</a></div>
				<div ><a class="caption-btn" style="    margin-left: 20px;
				background-color: #eee;" href="{{ url('sortPriceSmall') }}">Sắp xếp theo giá thấp</a></div>
			</div>
			<!-- Products -->
			<div class="twelve columns products">
				
				{{-- content product--}}
				@yield('sectionPrice')
			</div>
		</div>
		<div class="margin-top-15"></div>
		@endsection