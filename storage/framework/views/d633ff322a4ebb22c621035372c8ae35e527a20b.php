<!DOCTYPE html>

<html >
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="author" content="Huynh Anh Quy">
     <meta name="csrf-token" content="<?php echo e(csrf_token()); ?>">
    <title>Lavender - Xu Kha</title>
    <base href="<?php echo e(asset('')); ?>">
    
	 <link href="<?php echo e(url('public/admin/bower_components/datatables-plugins/integration/bootstrap/3/dataTables.bootstrap.css')); ?>" rel="stylesheet">

    <!-- DataTables Responsive CSS -->
    <link href="<?php echo e(url('public/admin/bower_components/datatables-responsive/css/dataTables.responsive.css')); ?>" rel="stylesheet">
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
		<h1>Đơn Hàng</h1> 
	</caption>
	<div class="container">
		<div class="row">
			<div id="nguoilap" style="">Người Lập: <?php echo DB::table('users')->where('user_id',$or->user_id)->first()->username;?>    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Ngày Lập: <?php   $time = DB::table('orders')->where('order_id',$or->order_id)->first()->datesigned;
			$dateTime = new DateTime($time);
			echo $dateTime->format("d-m-Y H:i");
			?>  </div>
			
		</div>
	</div>
	<div class="container">
		<div class="row">
			<div id="hoten">Họ tên khách hàng: <?php echo DB::table('customers')->where('customer_id',$or->customer_id)->first()->name;?> </div>
			<div id="diachi">Địa chỉ nhận hàng: <?php echo DB::table('orders')->where('customer_id',$or->customer_id)->first()->address_receive;?> </div>
			<div id="diachi">Số điện thoại: <?php echo DB::table('customers')->where('customer_id',$or->customer_id)->first()->phone_number; ?> </div>
		</div>
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
		<?php $__currentLoopData = $order; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item): $__env->incrementLoopIndices(); $loop = $__env->getFirstLoop(); ?>
			<tr class="even gradeC" align="center">
				<td><?php echo ++$i ?></td>
				<td><?php $tamp= DB::table('products')->where('product_id',$item->product_id)->first();
				echo $tamp->name; ?></td>
				<td><?php echo e($item->quantity); ?></td>
				<td><?php echo e(number_format($item->price,0,",",".")); ?></td>
				<td><?php echo e(number_format($item->total,0,",",".")); ?></td>
			</tr>
		<?php endforeach; $__env->popLoop(); $loop = $__env->getFirstLoop(); ?>
		</tbody>
		<tr>
			<div id="tongtien">
				Tổng tiền: 
				<?php static $tong =0;?>
                    <?php $__currentLoopData = $order; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item): $__env->incrementLoopIndices(); $loop = $__env->getFirstLoop(); ?>
                    <?php 
                     $tong = $tong + $item->total ;
                     ?>
                    <?php endforeach; $__env->popLoop(); $loop = $__env->getFirstLoop(); ?>
                    <?php  echo number_format($tong,0,",",".")." Đồng";?>
			</div>
		</tr>
	</table>
	  <script src="<?php echo e(url('public/admin/js/myscript.js')); ?>">
    </script>
     <script src="<?php echo e(url('public/admin/bower_components/DataTables/media/js/jquery.dataTables.min.js')); ?>"></script>
</body>
</html>