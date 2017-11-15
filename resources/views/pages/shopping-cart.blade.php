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
		<table class="table table-responsive">
			<tr>
				<th>{{ Lang::locale() === "en" ? 'Image' : 'Hình ảnh' }}</th>
				<th>{{ Lang::locale() === "en" ? 'Item Name' : 'Tên sản phẩm' }}</th>
				<th>{{ Lang::locale() === "en" ? 'Price' : 'Giá bán' }}</th>
				<th>{{ Lang::locale() === "en" ? 'Quantity' : 'Số lượng' }}</th>
				<th style="text-align: center">{{ Lang::locale() === "en" ? 'Tool' : 'Công cụ' }}</th>
				<th>{{ Lang::locale() === "en" ? 'Total' : 'Tổng tiền' }}</th>
			</tr>
			<form method="post" action="">
				<input type="hidden" name="_token" value="{{csrf_token()}}">
				<!-- Item #1 -->
				@foreach($content as $item_content)
				<tr>
					<td><img class="image-cart" src="{{ asset('resources/upload/'.$item_content->options->img)}}" width="50" height="50" alt=""/></td>
					<td class="cart-title"><a>{{ $item_content->name }}</a></td>
					<td class="cart-price">{{ Lang::locale() === "en" ? substr(($item_content->price)/23000,0,5) : number_format($item_content->price,0,",",".") }} {{ Lang::locale() === "en" ? '$':'VNĐ' }} </td>
					<td class="quantity"><input style="width: 80px!important;border: 1px solid !important;" id="so-luong-{{ $item_content->rowId }}" class="span1 qty" type="number" min="1" size="1" value="{{$item_content->qty}}" name="quantity"/></td>
					<td>
						<button onclick="capnhat('{{ $item_content->rowId }}')" type="button" class="cart-update update-button" id="{{$item_content->rowId}}">
						<i class="fa fa-refresh" aria-hidden="true"></i>
						</button>
						<a href="{{ url('xoa-san-pham',['id'=>$item_content->rowId]) }}" class="cart-remove" style="float:right"></a>
					</td>
					<td class="cart-total" ><span id="thanh-tien-{{ $item_content->rowId }}">{{ Lang::locale() === "en" ? $totalEnglishSub : number_format($item_content->price*$item_content->qty,0,",",".") }} {{ Lang::locale() === "en" ? '$':'VNĐ' }}</span></td>
				</tr>
				@endforeach
			</form>
		</table>
		<table class="cart-table bottom">
			<tr>
				<th>
					<div class="cart-btns" style="width: 100%">
						<a href="{{ route('dathang') }}" class="button color cart-btns proceed">Thanh toán</a>
						<a href="{{ url('shop') }}" class="button color cart-btns proceed left">tiếp tục mua sắm</a>
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
				<th>Tổng cộng đơn hàng</th>
				<td><strong id="tongtien">{{ Lang::locale() === "en" ? $totalEnglishSub : $subtotal }} {{ Lang::locale() === "en" ? '$':'VNĐ' }}</strong></td>
			</tr>
		</table>
		<br>
	</div>
</div>
<div class="margin-top-40"></div>
@endsection
@section('script')
<script>
	function capnhat(rowid) {
		var soluong = parseInt($('#so-luong-' + rowid).val());
		$.ajax({
			url: '{{ url('cap-nhat') }}',
			type: 'post',
			data: {
				'rowId': rowid,
				'qty': soluong,
				'_token': $('input[name=_token]').val(),
			},
			dataType: 'text',
			success: function (response) {
				if (response != 'Không đủ') {
					gh = JSON.parse(response);
					$("#thanh-tien-" + rowid).html(gh.thanhtien + ' VNĐ');
						$("#tongtien").html(gh.tongtien + ' VNĐ');
				}
			}
		});
		}
</script>
@endsection