@extends('pages.master')
@section('content')
<div class="container" style="width: 100%;margin-bottom:  50px">
	<div class="sixteen columns">
		<h3 class="headline"><?php if(isset($msg)) { echo $msg;} else {?> Features Item <?php } ?></h3>
		<span class="line margin-bottom-0"></span>
	</div>
	<div class="products">
		
		@foreach($products as $allpr)
		<!-- Product #1 -->
		<div class="four columns">
			<figure class="product">
				<div class="mediaholder">
					<a href="{{url('chi-tiet-san-pham',[$allpr->product_id,$allpr->alias])}}">
						<img alt="" src="{{ asset('resources/upload/'.$allpr->image)}}" style="width: 220px;height: 220px" />
						<div class="cover">
							<?php $coverImage = DB::table('images')->select('product_id','image')->where('product_id',$allpr->product_id)->first();?>
							<img alt="" src="{{ asset('resources/upload/product_image/'.$coverImage->image)}}" style="width: 220px;height:220px"/>
						</div>
					</a>
					<a href="{{url('mua-hang',[$allpr->product_id,$allpr->alias])}}" class="product-button"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ hàng</a>
				</div>
				<a href="variable-product-page.html">
					<section>
						<span class="product-category">{{ $allpr->name }}</span>
						<h5 style="text-decoration: line-through;">{{number_format($allpr->price*1.2,0,",",".") }}</h5>
						<span class="product-price">{{number_format($allpr->price,0,",",".") }}</span>
					</section>
				</a>
			</figure>
		</div>
		@endforeach
		
		<div class="clearfix"></div>
		<div style="
			margin-top: 50px;
			float: right;
		padding-right: 40px;">{{ $products->links() }}</div>
	</div>
	<div style="text-align: center;"><?php if($products->isEmpty()) {?>
		Rất tiếc, sản phẩm bạn tìm shop chưa có hoặc đã hết.
		<?php } else {?>
		<?php }?>
	</div>
</div>
@endsection