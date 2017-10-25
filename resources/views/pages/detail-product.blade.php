@extends('pages.master')
@section('content')
<!-- Titlebar
================================================== -->
<section class="titlebar">
	<div class="container">
		<div class="sixteen columns">
			<h2>Shop</h2>
			
			<nav id="breadcrumbs">
				<ul>
					<li><a href="#">Trang chủ</a></li>
					<?php $pr = DB::table('categories')->select('name','category_id')->where('category_id',$pr_detail->category_id)->first(); ?>
					<li><a href="#">{{ $pr->name }}</a></li>
					<li>{{$pr_detail->name}}</li>
				</ul>
			</nav>
		</div>
	</div>
</section>
<div class="container">
	<!-- Slider
	================================================== -->
	<div class="eight columns" >
		<div class="slider-padding">
			<div id="product-slider" class="">
				@foreach ($img as $detail)
				<img class="" src="{{ asset('resources/upload/product_image/'.$detail->image)}}">
				@endforeach
				{{-- <img class="rsImg" src="{{ asset('resources/upload/'.$pr_detail->image)}}"/> --}}
			</div>
			<div style="display: inline-flex;">
				@foreach ($img as $detail)
				<img class="" src="{{ asset('resources/upload/product_image/'.$detail->image)}}" style="width: 100px;height: 100px">
				@endforeach
			</div>
			
			<div class="clearfix"></div>
		</div>
	</div>
	<!-- Content
	================================================== -->
	<div class="eight columns">
		<div class="product-page">
			
			<!-- Headline -->
			<section class="title">
				<h2>{{$pr_detail->name}}</h2>
				<span class="product-price-discount">{{number_format($pr_detail->price*1.2,0,",",".") }}<i>{{number_format($pr_detail->price,0,",",".") }}</i></span>
				<div class="reviews-counter">
					<div class="rating five-stars">
						<div class="star-rating"></div>
						<div class="star-bg"></div>
					</div>
					<span>3 Đánh giá</span>
				</div>
			</section>
			<!-- Text Parapgraph -->
			<section>
				<p class="margin-reset"><?php echo $pr_detail->describe;   ?></p>
				<!-- Share Buttons -->
				<div class="share-buttons">
					<ul>
						<li><a href="#">Share</a></li>
						<li class="share-facebook"><a href="#">Facebook</a></li>
						<li class="share-twitter"><a href="#">Twitter</a></li>
						<li class="share-gplus"><a href="#">Google Plus</a></li>
						<li class="share-pinit"><a href="#">Pin It</a></li>
					</ul>
				</div>
				<div class="clearfix"></div>
			</section>
			<section class="linking">
				<a href="{{url('mua-hang',[$pr_detail->product_id,$pr_detail->alias])}}" class="button adc">Thêm vào giỏ hàng</a>
			</section>
		</div>
	</div>
</div>
<div class="container">
	<div class="sixteen columns">
		<!-- Tabs Navigation -->
		<ul class="tabs-nav">
			<li class="active"><a href="#tab1">Mô tả sản phẩm</a></li>
			{{-- <li><a href="#tab2">Thông tin bổ sung</a></li> --}}
			<li><a href="#tab3">Đánh giá <span class="tab-reviews">(3)</span></a></li>
		</ul>
		<!-- Tabs Content -->
		<div class="tabs-container">
			<div class="tab-content" id="tab1">
				<p><?php echo $pr_detail->describe;   ?></p>
			</div>
			{{-- <div class="tab-content" id="tab2">
				<table class="basic-table">
					<tr>
						<th>Size</th>
						<td>Small, Medium, Largem, Extra Large</td>
					</tr>
					<tr>
						<th>Colors</th>
						<td>Blue, color, Red</td>
					</tr>
					<tr>
						<th>Material</th>
						<td>75% Cotton, 25% Polyester</td>
					</tr>
					<tr>
						<th>Weight</th>
						<td>N/A</td>
					</tr>
				</table>
			</div> --}}
			<div class="tab-content" id="tab3">
				<!-- Reviews -->
				<section class="comments">
					<ul>
						<?php  $t= DB::table('comments')->where('product_id',$pr_detail->product_id)->orderBy('created_at','desc')->get(); ?>
						@foreach($t as $tcm)
						<li>
							<div class="avatar"><img src="http://www.gravatar.com/avatar/00000000000000000000000000000000?d=mm&amp;s=70" alt="" /></div>
							<div class="comment-content"><div class="arrow-comment"></div>
							<div class="comment-by"><strong><?php echo DB::table('customers')->where('customer_id',$tcm->customer_id)->first()->name." : "; ?></strong><span class="date"><?php echo " ( ".DB::table('customers')->where('customer_id',$tcm->customer_id)->first()->created_at." )"; ?></span>
							{{-- <div class="rating five-stars"><div class="star-rating"></div><div class="star-bg"></div></div> --}}
						</div>
						<p>{{$tcm->comment}}</p>
					</div>
				</li>
				@endforeach
			</ul>
			<a href="#small-dialog" class="popup-with-zoom-anim button color">Viết bình luận</a>
			<div id="small-dialog" class="zoom-anim-dialog mfp-hide">
				<h3 class="headline">Viết bình luận</h3><span class="line margin-bottom-25"></span><div class="clearfix"></div>
				<!-- Form -->
				<form id="add-comment" class="add-comment" method="post" action="{{url('comment/'.$pr_detail->product_id)}}">
					<input type="hidden" name="_token" value="{{csrf_token()}}">
					<fieldset>
						<div>
							<label>Bình luận: <span>*</span></label>
							<textarea cols="40" rows="3" value="{{old('txtComment')}}" name="txtComment"></textarea>
						</div>
					</fieldset>
					<button type="submit" class="btn-primary">Bình luận</button>
					<div class="clearfix"></div>
				</form>
			</div>
		</section>
	</div>
</div>
</div>
</div>
<!-- Related Products -->
<div class="container margin-top-5">
<!-- Headline -->
<div class="sixteen columns">
<h3 class="headline">Sản phẩm tương tự</h3>
<span class="line margin-bottom-0"></span>
</div>
<!-- Products -->
<div class="products">
<!-- Product #1 -->
@foreach($pr_relate as $pr)
<div class="four columns">
	<figure class="product">
		<div class="mediaholder">
			<a href="#">
				<img alt="" src="{{ asset('resources/upload/product_image/'.$pr->image)}}"/>
				<div class="cover">
					@foreach ($img as $detail)
					<img class="" src="{{ asset('resources/upload/product_image/'.$pr->image)}}">
					@endforeach
				</div>
			</a>
			<a href="#" class="product-button"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ hàng</a>
		</div>
		<a href="#">
			<section>
				<span class="product-category">{{ $pr->name }}</span>
				<span class="product-price">{{ number_format($pr->price,0,",",".") }}</span>
			</section>
		</a>
	</figure>
</div>
@endforeach
</div>
</div>
<div class="margin-top-50"></div>
@endsection