@extends('pages.master')
@section('content')
	<div class="container" style="width: 100%;min-height: 450px">
		<div style="margin-left: 10px;margin-bottom: 40px">
		<h3>LỊCH SỬ ĐẶT HÀNG</h3>
		</div>
    <p style="text-align: center;"><?php if($count <= 0){
      echo "Bạn không có lịch sử đơn hàng nào.";
    }
    ?></p>
	<div class="row" style="padding-left: 25px;
    padding-right: 55px;">
		<div class="table-responsive" style="margin-bottom: 20px">
      <table class="table table-bordered">
        <thead>
          <tr>
            <th><strong>MÃ ĐƠN HÀNG</strong></th>
            <th><strong>TÊN KHÁCH HÀNG</strong></th>
            <th><strong>SỐ ĐIỆN THOẠI</strong></th>
            <th><strong>ĐỊA CHỈ NHẬN HÀNG</strong></th>
            <th><strong>THỜI GIAN ĐẶT HÀNG</strong></th>
            <th><strong>PHƯƠNG THỨC THANH TOÁN</strong></th>
            <th><strong>CHI TIẾT</strong></th>
            <th><strong>TRẠNG THÁI</strong></th>
          </tr>
        </thead>
        <tbody>
          @foreach($orderStatus as $order)
          <tr>
            <td style="text-align: center">{{ $order->order_id }}</td>
            <td><a>{{ $customer->name }}</a></td>
            <td>{{ $customer->phone_number }}</td>
            <td>{{ $customer->address }}</td>
            <td>{{ $order->created_at }}</td>
            <td><?php
              if($order->payment == 1){
              echo "Đã thanh toán";
            }
            else {
              echo "Thanh toán khi nhận hàng";
            }
            ?>

            </td>
            <td><a href="{{ url('history-detail',$order->order_id) }}"><span class="label label-info">Xem chi tiết</span></a></td>
            <td><span class="label label-success">
            	<?php if($order->status == 0){
            		echo "Đang xử lý";
            		}else{
            	echo "Đã được gửi đi";
           		 }
            ?></span></td>
          </tr>
          @endforeach
        </tbody>
      </table>
    </div>
    <a href="{{ url('profile') }}" data-original-title="Remove this user" data-toggle="tooltip" type="button" class="btn btn-sm btn-danger"><i class="fa fa-hand-o-left" style="color:#ffffff !important"></i></a>
	</div>
</div>
@endsection