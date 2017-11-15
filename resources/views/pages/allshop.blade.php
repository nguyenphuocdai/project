@extends('pages.master')
@section('content')
<div class="container" style="width: 100%;margin-bottom: 50px">

	<div class="products">
		@foreach($pr as $allpr)
		<!-- Product #1 -->
		<div class="four columns">
			<figure class="product">
				<div class="mediaholder">
					<a href="{{url('chi-tiet-san-pham',[$allpr->product_id,$allpr->alias])}}">
						<img alt="" src="{{ asset('resources/upload/'.$allpr->image)}}" style="width: 220px;height: 220px" />
						<div class="cover">
							<?php $coverImage = DB::table('images')->select('product_id','image')->where('product_id',$allpr->product_id)->first();
							if($coverImage == NULL){
							$coverImage = $allpr;
							}
							?>
							<img alt="" src="{{ asset('resources/upload/product_image/'.$coverImage->image)}}" style="width: 220px;height:220px"/>
						</div>
					</a>
					<a href="{{url('mua-hang',[$allpr->product_id,$allpr->alias])}}" class="product-button"><i class="fa fa-shopping-cart" style="color: #ffffff !important"></i>Thêm vào giỏ hàng</a>
				</div>

				<a href="{{url('chi-tiet-san-pham',[$allpr->product_id,$allpr->alias])}}">
					<section>
						<span class="product-category">{{ $allpr->name }}</span>
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
    padding-right: 40px;">{{ $pr->render() }}</div>
	</div>

</div>
@endsection