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
						<th>THỜI GIAN ĐẶT HÀNG</th>
						<th>ĐƠN GIÁ</th>
						<th>THÀNH TIỀN</th>
					</tr>
				</thead>
				<tbody>
					@foreach($orderDetail as $orderdt)
					<tr>
						<td style="text-align: center">{{ $orderdt->order_id }}</td>
						<td style="text-align: center">{{ $orderdt->quantity }}</td>
						<td>{{ $orderdt->created_at }}</td>	
						<td>{{ number_format($orderdt->price,0,",",".") }}</td>
						<td>{{ number_format($orderdt->total,0,",",".") }}</td>				
					</tr>
					@endforeach
				</tbody>
				
			</table>
			<div class="total-history"><span>TỔNG TIỀN: 
				<?php static $tong =0;?>
                    @foreach($orderDetail as $item)
                    <?php 
                     $tong = $tong + $item->total ;
                     ?>
                    @endforeach
                    <?php  echo number_format($tong,0,",",".")." Đồng";?>
			</span>
				</div>
		</div>
		<a href="{{ url('history-order') }}" data-original-title="Remove this user" data-toggle="tooltip" type="button" class="btn btn-sm btn-danger"><i class="fa fa-hand-o-left"></i></a>
	</div>
</div>
@endsection