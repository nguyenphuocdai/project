<div id="top-bar">
	<div class="container">
		<!-- Top Bar Menu -->
		<div class="ten columns">
			<ul class="top-bar-menu">
				<li><i class="fa fa-phone"></i> 0933 588 295</li>
				<li><i class="fa fa-envelope"></i>hoanghoang360@gmail.com</li>
				<li>
					<div class="top-bar-dropdown">
						<span>Tiếng Việt</span>
						<ul class="options">
							<li><div class="arrow"></div></li>
							<li><a href="#">English</a></li>
							<li><a href="#">Polish</a></li>
							<li><a href="#">Deutsch</a></li>
						</ul>
					</div>
				</li>
			</ul>
		</div>
		<!-- Social Icons -->
		<div class="six columns">
			<ul class="social-icons">
				<li><a class="facebook" href="<?php echo url('login/facebook'); ?>"><i class="icon-facebook"></i></a></li>
				<li><a class="github" href="<?php echo url('login/github'); ?>"><i class="icon-github"></i></a></li>
				<li><a class="gplus" href="<?php echo url('login/google'); ?>"><i class="icon-gplus"></i></a></li>
			</ul>
		</div>
	</div>
</div>
<div class="clearfix"></div>
<!-- Header
================================================== -->
<div class="container">
	<!-- Logo -->
	<div class="four columns">
		<div id="logo">
			<h1><a href="<?php echo e(url('/')); ?>"><img src="<?php echo e(url('public/pages/images/logo.png')); ?>" alt="Trizzy" /></a></h1>
		</div>
	</div>
	<!-- Additional Menu -->
	<div class="twelve columns">
		<div id="additional-menu">
			<ul>
				<li><a href="<?php echo e(route('giohang')); ?>">Giỏ hàng</a></li>
				<li><a href="wishlist.html">So sánh <span>(2)</span></a></li>
				<li><a href="<?php echo e(route('dathang')); ?>">Thanh toán</a></li>
				<li><a href="<?php echo e(url('dang-nhap-khach-hang')); ?>">
					<?php
					
					if(Auth::guard('customers')->check())
					{
					}
					else
					{
					echo "Đăng Nhập";
					}
					
					?>
					
				</a></li>
				<li><a>
					<?php
					if(Auth::guard('customers')->check())
					{
					echo "Chào, ".Auth::guard('customers')->user()->name;
					}
					?>
					
				</a></li>
				<li><a href="<?php echo e(url('dang-ky-khach-hang')); ?>"><?php
					if(Auth::guard('customers')->check())
					{
					}
					else
					echo "Đăng Ký";
				?></a></li>
				<li><a href="<?php echo e(url('dang-xuat-khach-hang')); ?>"><?php if(Auth::guard('customers')->check())
					{
					echo "Đăng Xuất";
				} ?></a></li>
			</ul>
		</div>
	</div>
	<!-- Shopping Cart -->
	<div class="twelve columns">
		<div id="cart">
			<!-- Button -->
			<div class="cart-btn">
				<a href="#" class="button adc"><?php echo e(Cart::total(0,",",".")); ?></a>
			</div>
			<div class="cart-list">
				<div class="arrow"></div>
				<div class="cart-amount">
					<span>Sản phẩm được chọn (<?php echo e(Cart::content()->groupBy('id')->count()); ?>) </span>

				</div>
				<ul>
					<?php $__currentLoopData = Cart::Content(); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $cart): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
					<li>
						<a href="<?php echo e(url('gio-hang')); ?>"><img src="<?php echo e(asset('resources/upload/product_image/'.$cart->options->img)); ?>" alt="" /></a>
						<a href="<?php echo e(url('gio-hang')); ?>"><?php echo e($cart->name); ?></a>
						<span><?php echo e($cart->qty); ?> x <?php echo e(number_format($cart->price,0,",",".")); ?> đ</span>
						<div class="clearfix"></div>
					</li>
					<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
				</ul>
				<div class="cart-buttons button">
					<a href="<?php echo e(url('gio-hang')); ?>" class="view-cart" ><span data-hover="View Cart"><span>Xem giỏ hàng</span></span></a>
					<a href="<?php echo e(route('dathang')); ?>" class="checkout"><span data-hover="Checkout">Thanh toán</span></a>
				</div>
				<div class="clearfix">
				</div>
			</div>
		</div>
		<!-- Search -->
		<nav class="top-search">
			<form action="<?php echo e(url('tim-kiem')); ?>" method="get">
				<button type="submit"><i class="fa fa-search"></i></button>
				<input class="search-field" type="text" name="key" placeholder="Tìm kiếm ..." value=""/>
			</form>
		</nav>
	</div>
</div>
<div class="container">
	<div class="sixteen columns">
		
		<a href="#menu" class="menu-trigger"><i class="fa fa-bars"></i> Menu</a>
		<nav id="navigation">
			<ul class="menu" id="responsive">
				<li><a href="index.html" class="current homepage" id="current">Home</a></li>
				
				<li class="demo-button">
					<a href="<?php echo e(url('/')); ?>">Trang chủ</a>
				</li>
				<li class="dropdown">
					<a href="#">Danh mục sản Phẩm</a>
					<ul>
						<?php $menu = DB::table('categories')->get(); ?>
						<?php $__currentLoopData = $menu; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item_menu): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
						<li style="min-width: 206px"><a href="<?php echo e(url('loai-san-pham',[$item_menu->category_id,$item_menu->alias])); ?>"
							style="text-transform: uppercase;"
							><?php echo e($item_menu->name); ?></a></li>
						<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
					</ul>
				</li>
				<li class="demo-button">
					<a href="<?php echo e(url('shop')); ?>">Sản phẩm</a>
				</li>
				<li class="demo-button">
					<a href="<?php echo e(url('gioi-thieu')); ?>">Giới thiệu</a>
				</li>
				<li class="demo-button">
					<a href="<?php echo e(url('tin-tuc')); ?>">Tin tức</a>
				</li>
				<li class="dropdown">
					<a href="<?php echo e(url('lien-he')); ?>">Liên hệ</a>
				</li>
			</ul>
		</nav>
	</div>
</div>