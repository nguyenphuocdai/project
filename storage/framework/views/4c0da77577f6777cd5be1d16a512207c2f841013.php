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
                           
                          echo "<div>Số điện thoại: ".$tamp->phone_number."</div>";

                          echo "<div>Địa chỉ nhận hàng: ".$tamp->address."</div>";

                          echo "<div class='address-italic'>Địa chỉ nhận hàng (Trường hợp không dùng địa chỉ đăng ký vui lòng điền vào ô sau):</div> "."<input class='address-italic-input' type='text' name='txtAddresreceive' />";
                        }
                        else{
                        	echo "<strong>Nếu chưa có tài khoản</strong>"." "."<strong><a href=dang-ky-khach-hang>Ấn vào đây </a></strong>";
                        }
                        ?></li>
                       <li><label class="control-label" ><?php if(Auth::guard('customers')->user())
                      echo "";
                      else 
                        echo "Vui lòng đăng nhập để có thể đặt hàng"." "."<strong><a >"."<a href=dang-nhap-khach-hang>Ấn vào đây </a>"."</a></strong>";
                       ?>
                      </label></li>
	</ul>
</div>
</div>
<div class="container">

<!-- Billing Details / Enc -->
<!-- Checkout Cart -->
<div class="sixteen columns">
	<div class="checkout-section cart check-cart">GIỎ HÀNG</div>
	<!-- Cart -->
	<table class="checkout cart-table responsive-table">
		<tr>
			<th class="hide-on-mobile">Hình ảnh</th>
			<th>Tên sản phẩm</th>
			<th>Giá</th>
			<th>Số lượng</th>
			<th>Thành tiền</th>
		</tr>
		
		<!-- Item #1 -->
		<?php $__currentLoopData = $content; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item_content): $__env->incrementLoopIndices(); $loop = $__env->getFirstLoop(); ?>
		<tr>
			<td class="hide-on-mobile"><img src="<?php echo e(asset('resources/upload/'.$item_content->options->img)); ?>" alt=""/></td>
			<td class="cart-title"><a href="#"><?php echo e($item_content->name); ?></a></td>
			<td><?php echo e(number_format($item_content->price,0,",",".")); ?></td>
			<td class="qty-checkout"><?php echo e($item_content->qty); ?></td>
			<td class="cart-total"><?php echo e(number_format($item_content->price*$item_content->qty,0,",",".")); ?></td>
		</tr>
		<?php endforeach; $__env->popLoop(); $loop = $__env->getFirstLoop(); ?>
	</table>
	<!-- Apply Coupon Code / Buttons -->
	<table class="cart-table bottom">
		<tr>
			<th class="checkout-totals">
				<div class="checkout-subtotal">
					Tổng tiền: <span><?php echo e($total); ?></span>
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