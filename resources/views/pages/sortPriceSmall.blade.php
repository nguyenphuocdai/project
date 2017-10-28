@extends('pages.shopcategories')
@section('sectionPrice')

@foreach($sortPriceSmall as $item_pr_cate)
		<div class="four shop columns">
			<figure class="product">
				<div class="product-discount">Giảm giá</div>
				<div class="mediaholder">
					<a href="{{url('chi-tiet-san-pham',[$item_pr_cate->product_id,$item_pr_cate->alias])}}">
						<img class="img" alt="" src="{{ asset('resources/upload/'.$item_pr_cate->image)}}"/>
						<div class="cover">
							<img alt="" class="img" src="{{ asset('resources/upload/'.$item_pr_cate->image)}}"/>
						</div>
					</a>
					<a href="{{url('chi-tiet-san-pham',[$item_pr_cate->product_id,$item_pr_cate->alias])}}" class="product-button"><i class="fa fa-hand-o-right"></i> Xem chi tiết</a>
				</div>

				<a href="{{url('chi-tiet-san-pham',[$item_pr_cate->product_id,$item_pr_cate->alias])}}">
					<section>
						<span class="product-category">{{$item_pr_cate->name}}</span>
						<span class="product-price ">{{number_format($item_pr_cate->price,0,",",".") }}</span>
						
					</section>
				</a>
				
			</figure>
		</div>
		@endforeach
		<div style="position: absolute;bottom: 0;left: 48%;">{{ $sortPriceSmall->links() }}</div>
@endsection