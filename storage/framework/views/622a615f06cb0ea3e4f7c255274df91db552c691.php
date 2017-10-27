<?php $__env->startSection('content'); ?>
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
<?php echo $__env->make('admin.danger.danger', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>
<div class="row">
	<div class="col-lg-12">
		<?php if(Session::has('flash_message')): ?>
		<div class="alert alert-<?php echo e(Session::get('flash_level')); ?>">
			<?php echo e(Session::get('flash_message')); ?>

		</div>
		<?php endif; ?>
	</div>
</div>
<div class="container cart">
	<div class="sixteen columns">
		<!-- Cart -->
		<table class="table table-responsive">
			<tr>
				<th>Hình ảnh</th>
				<th>Tên sản phẩm</th>
				<th>Giá bán</th>
				<th>Số lượng</th>
				<th>Công cụ</th>
				<th>Tổng tiền</th>
			</tr>
			<form method="post" action="">
				<input type="hidden" name="_token" value="<?php echo e(csrf_token()); ?>">
				<!-- Item #1 -->
				<?php $__currentLoopData = $content; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item_content): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
				<tr>
					<td><img class="image-cart" src="<?php echo e(asset('resources/upload/'.$item_content->options->img)); ?>" width="50" height="50" alt=""/></td>
					<td class="cart-title"><a href="#"><?php echo e($item_content->name); ?></a></td>
					<td class="cart-price"><?php echo e(number_format($item_content->price,0,",",".")); ?></td>


					<td class="quantity"><input style="width: 60px!important" id="so-luong-<?php echo e($item_content->rowId); ?>" class="span1 qty" type="number" min="1" size="1" value="<?php echo e($item_content->qty); ?>" name="quantity"/></td>


					<td><a href="<?php echo e(url('xoa-san-pham',['id'=>$item_content->rowId])); ?>" class="cart-remove"></a>
						<button onclick="capnhat('<?php echo e($item_content->rowId); ?>')" type="button" class="cart-update update-button" id="<?php echo e($item_content->rowId); ?>">
							<img class="tooltip-test" data-original-title="Update" src="public/frontend/img/updatenew.png" alt="">
						</button>
					</td>
					<td class="cart-total" ><span id="thanh-tien-<?php echo e($item_content->rowId); ?>"><?php echo e(number_format($item_content->price*$item_content->qty,0,",",".")); ?></span></td>
				</tr>
				<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
			</form>
		</table>
		<table class="cart-table bottom">
			<tr>
				<th>
					<div class="cart-btns" style="width: 100%">
						<a href="<?php echo e(route('dathang')); ?>" class="button color cart-btns proceed">Thanh toán</a>

						<a href="<?php echo e(url('shop')); ?>" class="button color cart-btns proceed left">tiếp tục mua sắm</a>
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
				<th>Tổng cộng</th>
				<td><strong></strong></td>
			</tr>
			<tr>
				<th>Phí vận chuyển</th>
				<td>Free Shipping</td>
			</tr>
			<tr>
				<th>Tổng cộng hóa đơn</th>
				<td><strong id="tongtien"><?php echo e($total); ?></strong></td>
			</tr>
		</table>
		<br>
		<!-- <a href="#" class="calculate-shipping"><i class="fa fa-arrow-circle-down"></i> Calculate Shipping</a> -->
	</div>
</div>
<div class="margin-top-40"></div>

<?php $__env->stopSection(); ?>

<?php $__env->startSection('script'); ?>
<script>

	function capnhat(rowid) {
		var soluong = parseInt($('#so-luong-' + rowid).val());
		    // alert($('input[name=_token]').val());
		    // return false;
		    $.ajax({
		    	url: '<?php echo e(url('cap-nhat')); ?>',
		    	type: 'post',
		    	data: {
		    		'rowId': rowid,
		    		'qty': soluong,
		    		'_token': $('input[name=_token]').val(),
		    	},
		    	dataType: 'text',
		    	success: function (response) {
		    		// console.log(response);
		    		if (response != 'Không đủ') {

		    			gh = JSON.parse(response);
		    			// console.log(gh);
		    			$("#thanh-tien-" + rowid).html(gh.thanhtien + ' <u>đ</u>');
						$("#tongtien").html(gh.tongtien + ' <u>đ</u>');

		    		}
		    	}


		    });

		}
	</script>
	<?php $__env->stopSection(); ?>


<?php echo $__env->make('pages.master', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>