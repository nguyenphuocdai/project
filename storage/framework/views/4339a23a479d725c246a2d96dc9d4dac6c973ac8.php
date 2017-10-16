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
		<table class="cart-table responsive-table">

			<tr>
				<th>Hình ảnh</th>
				<th>Tên sản phẩm</th>
				<th>Giá bán</th>
				<th>Số lượng</th>
				<th>Tổng tiền</th>
				<th></th>
			</tr>
					
			<!-- Item #1 -->
			<?php $__currentLoopData = $content; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item_content): $__env->incrementLoopIndices(); $loop = $__env->getFirstLoop(); ?>
			<tr>
				<td><img class="image-cart" src="<?php echo e(asset('resources/upload/'.$item_content->options->img)); ?>" width="50" height="50" alt=""/></td>
				<td class="cart-title"><a href="#"><?php echo e($item_content->name); ?></a></td>
				<td><?php echo e(number_format($item_content->price,0,",",".")); ?></td>
				<td>
					<form action='#'>
						<div class="qtyminus"></div>
						<input type='text' name="quantity" value='1' class="qty" value='<?php echo e($item_content->qty); ?>'  />
						<div class="qtyplus"></div>
					</form>
				</td>
				<td class="cart-total">$79.00</td>
				<td><a href="<?php echo e(url('xoa-san-pham',['id'=>$item_content->rowId])); ?>" class="cart-remove"></a></td>
			</tr>
			<?php endforeach; $__env->popLoop(); $loop = $__env->getFirstLoop(); ?>

			<!-- Item #2 -->

			</table>

			<!-- Apply Coupon Code / Buttons -->
			<table class="cart-table bottom">

				<tr>
				<th>
					

					<div class="cart-btns">
						<a href="<?php echo e(route('dathang')); ?>" class="button color cart-btns proceed">Thanh toán</a>
						<a href="#" class="button gray cart-btns" >Cập nhật giỏ hàng</a>
						<a href="#" class="button gray cart-btns" >Tiếp tục mua sắm</a>
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
				<td><strong><?php echo e($total); ?></strong></td>
			</tr>

		</table>
		<br>
		<!-- <a href="#" class="calculate-shipping"><i class="fa fa-arrow-circle-down"></i> Calculate Shipping</a> -->
	</div>

</div>

<div class="margin-top-40"></div>
<?php $__env->stopSection(); ?>
<?php echo $__env->make('pages.master', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>