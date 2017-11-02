@extends('pages.master')
@section('content')
	<div class="container" style="width: 100%;min-height: 450px">
		<div style="margin-left: 10px;margin-bottom: 40px">
		<h3>LỊCH SỬ ĐẶT HÀNG</h3>
		</div>
	<div class="row" style="padding-left: 25px;
    padding-right: 55px;">
		<div class="table-responsive" style="margin-bottom: 20px">
      <table class="table table-bordered">
        <thead>
          <tr>
            <th>MÃ ĐƠN HÀNG</th>
            <th>TÊN KHÁCH HÀNG</th>
            <th>SỐ ĐIỆN THOẠI</th>
            <th>ĐỊA CHỈ NHẬN HÀNG</th>
            <th>THỜI GIAN ĐẶT HÀNG</th>
            <th>CHI TIẾT</th>
            <th>TRẠNG THÁI</th>
          </tr>
        </thead>
        <tbody>
          <tr>
            <td style="text-align: center">{{ $customer->customer_id }}</td>
            <td><a>{{ $customer->name }}</a></td>
            <td>{{ $customer->phone_number }}</td>
            <td>{{ $customer->address }}</td>
            <td>{{ $customer->created_at }}</td>
            <td><a href="{{ url('history-detail') }}"><span class="label label-info">Xem</span></a></td>
            <td><span class="label label-success">
            	<?php if($orderStatus->status == 0){
            		echo "Đang chờ xác nhận";
            		}else{
            	echo "Đang vận chuyển";
           		 }
            ?></span></td>
          </tr>
        </tbody>
      </table>
    </div>
    <a href="{{ url('profile') }}" data-original-title="Remove this user" data-toggle="tooltip" type="button" class="btn btn-sm btn-danger"><i class="fa fa-hand-o-left"></i></a>
	</div>
</div>
@endsection