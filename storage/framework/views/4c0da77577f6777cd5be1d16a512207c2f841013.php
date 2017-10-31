<?php $__env->startSection('content'); ?>
<section class="titlebar">
	<div class="container">
		<div class="sixteen columns">
			<h2>Thanh Toán</h2>
			
			<nav id="breadcrumbs">
				<ul>
					<li><a href="#">Trang Chủ</a></li>
					<li><a href="#">Giỏ hàng</a></li>
					<li><a href="#">Thanh toán</a></li>
					<li>Chi tiết thanh toán</li>
				</ul>
			</nav>
		</div>
	</div>
</section>
<!-- Content
================================================== -->
<!-- Container -->
<form action="<?php echo e(url('dat-hang')); ?>" method="post" accept-charset="utf-8">
	<input type="hidden" name="_token" value="<?php echo e(csrf_token()); ?>">
	<div class="container">
		
		
		<div class="sixteen columns full-width">
			<div class="checkout-section cart check-cart">THÔNG TIN KHÁCH HÀNG</div>
			<ul class="address-review">
				<li><?php if(Auth::guard('customers')->user())
							{
								$tamp = Auth::guard('customers')->user();
								echo "<div>Tài khoản: ".$tamp->username."</div>";
							
								echo "<div>Họ và tên: ".$tamp->name."</div>";
								if($tamp->phone_number == ""){
									echo "<div class='address-italic'>Số điện thoại (*)(Trường hợp đăng nhập với tài khoản google hoặc github vui lòng ghi rõ địa chỉ vào ô sau):</div> "."<input class='address-italic-input' type='text' name='phone_social' />";
								}
								else{
									echo "<div>Số điện thoại: ".$tamp->phone_number."</div>";
								}
								if($tamp->address == ""){
									echo "<div class='address-italic'>Địa chỉ nhận hàng (*) (Trường hợp đăng nhập với tài khoản google hoặc github vui lòng ghi rõ địa chỉ vào ô sau):</div> "."<input class='address-italic-input' type='text' name='txtAddresreceive' />";
								}else{
								echo "<div>Địa chỉ nhận hàng: ".$tamp->address."</div>";
								echo "<div class='address-italic'>Địa chỉ nhận hàng khác (Nếu muốn nhận hàng ở địa chỉ khác vui lòng ghi cụ thể vào ô sau):</div> "."<input class='address-italic-input' type='text' name='txtAddresreceive' />";
								}
							}
							else{
								echo "<strong>Nếu chưa có tài khoản</strong>"." "."<a class=color-text href=dang-ky-khach-hang>Ấn vào đây </a>";
							}
				?></li>
				<li><label class="" ><?php if(Auth::guard('customers')->user())
							echo "";
							else
							echo "<strong>Vui lòng đăng nhập để có thể đặt hàng</strong> "."<a class=color-text href=dang-nhap-khach-hang>Ấn vào đây </a>";
					?>
				</label></li>
			</ul>
		</div>
	</div>
	<div class="container">
		<div class="sixteen columns" style="margin-bottom: 45px">
			<!-- Billing Details Content -->
			<div class="checkout-section cart check-cart">
				THANH TOÁN ONLINE
			</div>
			<div><a href="<?php echo e(url('payment')); ?>" ><img src="<?php echo e(url('public/pages/images/paybutton.png')); ?>" style="width: 120px;"></a></div>
			<div></div>
			<div class="clearfix"></div>
			
		</div>
		<!-- Billing Details / Enc -->
		<!-- Checkout Cart -->
		<div class="sixteen columns">
			<div class="checkout-section cart check-cart">KIỂM TRA GIỎ HÀNG</div>
			<!-- Cart -->
			<table class="checkout cart-table responsive-table">
				<tr>
					<th class="hide-on-mobile">HÌNH ẢNH</th>
					<th>TÊN SẢN PHẨM</th>
					<th>SỐ LƯỢNG</th>
					<th>THÀNH TIỀN</th>
				</tr>
				
				<!-- Item #1 -->
				<?php $__currentLoopData = $content; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item_content): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
				<tr>
					<td class="hide-on-mobile"><img class="checkout-image" src="<?php echo e(asset('resources/upload/'.$item_content->options->img)); ?>" alt=""/></td>
					<td class="cart-title"><a><?php echo e($item_content->name); ?></a></td>
					<td class="qty-checkout"><?php echo e($item_content->qty); ?></td>
					<td class="cart-total"><?php echo e($item_content->price); ?></td>
				</tr>
				<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
			</table>
			<!-- Apply Coupon Code / Buttons -->
			<table class="cart-table bottom">
				<tr>
					<th class="checkout-totals">
						<div class="checkout-subtotal">
							TỔNG TIỀN: <span><?php echo e($subtotal); ?></span>
						</div>
					</th>
				</tr>
			</table>
			<button type="submit" class="continue button color">THANH TOÁN</button>
		</div>
		<!-- Checkout Cart / End -->
	</div>
</form>
<!-- Container / End -->
<div class="margin-top-50"></div>
<?php $__env->stopSection(); ?>
<?php echo $__env->make('pages.master', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>