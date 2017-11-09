@extends('pages.shopcategories')
@section('sectionPrice')

@foreach($cate3 as $item_pr_cate)
		<div class="four shop columns">
			<figure class="product">
				<div class="product-discount">NEW</div>
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
		<div style="float: right;">{{ $cate3->links() }}</div>
@endsection