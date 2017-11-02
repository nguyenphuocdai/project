@extends('pages.master')
@section('content')
<div class="container" style="width: 100%;min-height: 450px">
	<div style="margin-left: 10px;margin-bottom: 40px">
		<h3>CHI TIẾT ĐƠN HÀNG</h3>
	</div>
	<div class="row" style="padding-left: 25px;
		padding-right: 55px;">
		<div class="table-responsive" style="margin-bottom: 20px">
			<table class="table table-bordered">
				<thead>
					<tr>
						<th>MÃ ĐƠN HÀNG</th>
						<th>SỐ LƯỢNG</th>
						<th>ĐƠN GIÁ</th>
						<th>TỔNG TIỀN</th>
						<th>THỜI GIAN ĐẶT HÀNG</th>
					</tr>
				</thead>
				<tbody>
					@foreach($orderDetail as $order)
					<tr>
						<td style="text-align: center">{{ $order->order_id }}</td>
						<td style="text-align: center">{{ $order->quantity }}</td>
						<td>{{ number_format($order->price,0,",",".") }}</td>
						<td>{{ number_format($order->total,0,",",".") }}</td>
						<td>{{ $order->created_at }}</td>						
					</tr>
					@endforeach
				</tbody>
			</table>
		</div>
		<a href="{{ url('history-order') }}" data-original-title="Remove this user" data-toggle="tooltip" type="button" class="btn btn-sm btn-danger"><i class="fa fa-hand-o-left"></i></a>
	</div>
</div>
@endsection