<!DOCTYPE html>
<html >
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<meta name="author" content="Huynh Anh Quy">
		<meta name="csrf-token" content="{{ csrf_token() }}">
		<title>Trizzy - Shop</title>
		<base href="{{asset('')}}">
		
		<link href="{{ url('public/admin/bower_components/datatables-plugins/integration/bootstrap/3/dataTables.bootstrap.css') }}" rel="stylesheet">
		<!-- DataTables Responsive CSS -->
		<link href="{{ url('public/admin/bower_components/datatables-responsive/css/dataTables.responsive.css') }}" rel="stylesheet">
		<style type="text/css">
			table{
				width: 85%;
				margin:  0 auto;
				border: 1px solid;
				font-family: DejaVu Sans;
				margin-top: 10px;
				margin-bottom: 10px;
			}
			caption{
				font-family: DejaVu Sans;
			}
			#hoten{
				font-family: DejaVu Sans;
			}
			#diachi{
				font-family: DejaVu Sans;
			}
			#nguoilap{
				font-family: DejaVu Sans;
			}
			#ngaylap{
				font-family: DejaVu Sans;
			}
			#tongtien{
				float: right;
				font-family: DejaVu Sans;
				font-weight: bold;
			}
			
		</style>
	</head>
	<body>
		<caption>
		<h2>HÓA ĐƠN ĐƠN HÀNG</h2>
		</caption>
		<div class="container">
			<div class="row">
				<div id="nguoilap" style="">NGƯỜI LẬP: <?php echo DB::table('users')->where('user_id',$or->user_id)->first()->username;?>    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;NGÀY LẬP: <?php   $time = DB::table('orders')->where('order_id',$or->order_id)->first()->datesigned;
					$dateTime = new DateTime($time);
					echo $dateTime->format("d-m-Y");
				?>  </div>
				
			</div>
		</div>
		<div class="container">
			<div class="row">
				<div id="hoten">TÊN KHÁCH HÀNG: <?php echo DB::table('customers')->where('customer_id',$or->customer_id)->first()->name;?> </div>
				<div id="diachi">ĐỊA CHỈ NHẬN HÀNG: <?php $tamp = DB::table('orders')->where('customer_id',$or->customer_id)->first();
							$temp = DB::table('customers')->where('customer_id',$or->customer_id)->first();
							if($tamp->address_receive == null){
								echo $temp->address;
							}
							else{
								echo $tamp->address_receive;
							}
					?>
				</div>
				<div id="diachi">SỐ ĐIỆN THOẠI: <?php echo DB::table('customers')->where('customer_id',$or->customer_id)->first()->phone_number; ?> </div>
				<div style="font-family: DejaVu Sans;">TÌNH TRẠNG ĐƠN HÀNG: <?php if($tamp->payment == 1){
					echo "<span style='color: #4267b2'>"."Đã thanh toán"."</span>";
				}
				else{
					echo "<span style='color: red'>"."Thanh toán khi nhận hàng"."</span>";
				}
				?>	
				</div>
			</div>
			<br>
			<table>
				
			</div>
			<thead>
				<tr align="center">
					<th>STT</th>
					<th>Sản Phẩm</th>
					<th>Số Lượng</th>
					<th>Đơn Giá</th>
					<th>Thành Tiền</th>
				</tr>
			</thead>
			<tbody>
				<?php static $i=0; ?>
				@foreach($order as $item)
				<tr class="even gradeC" align="center">
					<td><?php echo ++$i ?></td>
					<td><?php $tamp= DB::table('products')->where('product_id',$item->product_id)->first();
					echo $tamp->name; ?></td>
					<td>{{$item->quantity}}</td>
					<td>{{number_format($item->price,0,",",".")}} đ</td>
					<td>{{number_format($item->total,0,",",".")}} đ</td>
				</tr>
				@endforeach
			</tbody>
			<br>
			<tr>
				<div id="tongtien">
					Tổng tiền:
					<?php static $tong =0;?>
					@foreach($order as $item)
					<?php
					$tong = $tong + $item->total ;
					?>
					@endforeach
					<?php  echo number_format($tong,0,",",".")." Đồng";?>
				</div>
			</tr>
		</table>

		<script src="{{ url('public/admin/js/myscript.js') }}">
		</script>
		<script src="{{ url('public/admin/bower_components/DataTables/media/js/jquery.dataTables.min.js') }}"></script>
	</body>
</html>