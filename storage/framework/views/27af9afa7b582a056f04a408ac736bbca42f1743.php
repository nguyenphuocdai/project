<div id="top-bar">
	<div class="container">
		<!-- Top Bar Menu -->
		<div class="ten columns">
			<ul class="top-bar-menu">
				<li><i class="fa fa-phone"></i> 0933 588 295</li>
				<li><i class="fa fa-envelope"></i>hoanghoang360@gmail.com</li>
				<li>
					<div class="top-bar-dropdown" >
						
						
					</div>
				</li>
			</ul>
		</div>
		<!-- Social Icons -->
		<div class="six columns">
			<ul class="social-icons" >
				<form action="<?php echo e(URL::route('language-chooser')); ?>" method="post" accept-charset="utf-8" style="display: inline-flex;margin-top: 10px;">
							<?php echo e(csrf_field()); ?>

							<select name="locale">
								<option value="tv">Tiếng việt</option>
								<option value="en" <?php echo e(Lang::locale() === "en" ? 'selected':''); ?>>English</option>
							</select>
							<input type="submit" name="" value="<?php echo e(Lang::locale() === "en" ? 'Choose':'Chọn'); ?>" style="padding-bottom: 0;font-size: 10px;padding-top: 0;">
						</form>
				<li><a class="github" href="<?php echo url('login/github'); ?>"><i class="icon-github"></i></a></li>
				<li><a class="gplus" href="<?php echo url('login/google'); ?>"><i class="icon-gplus"></i></a></li>
			</ul>
		</div>
	</div>
</div>
<div class="clearfix"></div>
<?php if(Session::has('alert-success')): ?>
                        <div class="alert alert-<?php echo e(Session::get('flash_level')); ?>">
                            <?php echo e(Session::get('alert-success')); ?>

                        </div>
<?php endif; ?>
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
				<li><a href="<?php echo e(route('giohang')); ?>"><?php echo e(Lang::locale() === "en" ? 'Cart':'Giỏ hàng'); ?></a></li>
				<li><a href="<?php echo e(route('dathang')); ?>"><?php echo e(Lang::locale() === "en" ? 'Payment':'Thanh toán'); ?></a></li>
				<li><a href="<?php echo e(url('dang-nhap-khach-hang')); ?>">
					<?php
					
					if(Auth::guard('customers')->check())
					{
					}
					else
					{
					echo Lang::locale() == "en" ? 'Login': 'Đăng nhập';
					}
					
					?>
					
				</a></li>
				<li><a>
					<?php
					if(Auth::guard('customers')->check())
					{
					echo Lang::locale() == "en" ? 'Hello,'.Auth::guard('customers')->user()->name : 'Chào,'.Auth::guard('customers')->user()->name;
					}
					?>
					
				</a></li>
				<li><a href="<?php echo e(url('dang-ky-khach-hang')); ?>"><?php
						if(Auth::guard('customers')->check())
						{
						}
						else
						echo Lang::locale() == "en" ? 'Register': 'Đăng ký';
				?></a></li>
				<li><a href="<?php echo e(url('dang-xuat-khach-hang')); ?>"><?php if(Auth::guard('customers')->check())
						{
						echo Lang::locale() == "en" ? 'Logout': 'Đăng xuất';
				} ?></a></li>
			</ul>
		</div>
	</div>
	<!-- Shopping Cart -->
	<div class="twelve columns">
		<div id="cart">
			<!-- Button -->
			<div class="cart-btn">
				<a href="#" class="button adc"><?php echo e($subtotal); ?> <?php echo e(Lang::locale() == "en" ? '$':'VNĐ'); ?></a>
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
					<a href="<?php echo e(url('gio-hang')); ?>" class="view-cart" ><span data-hover="View Cart"><span><?php echo e(Lang::locale() === "en" ? 'See Cart ':'Xem giỏ hàng'); ?></span></span></a>
					<a href="<?php echo e(route('dathang')); ?>" class="checkout"><span data-hover="Checkout"><?php echo e(Lang::locale() === "en" ? 'Payment':'Thanh toán'); ?></span></a>
				</div>
				<div class="clearfix">
				</div>
			</div>
		</div>
		<!-- Search -->
		<nav class="top-search">
			<form action="<?php echo e(url('tim-kiem')); ?>" method="get">
				<button type="submit"><i class="fa fa-search"></i></button>
				<input class="search-field" type="text" name="key" placeholder="<?php echo e(Lang::locale() === "en" ? 'Search ...':'Tìm kiếm ...'); ?>" value=""/>
			</form>
		</nav>
	</div>
</div>
<div class="container">
	<div class="sixteen columns">
		
		<a href="#menu" class="menu-trigger"><i class="fa fa-bars"></i> Menu</a>
		<nav id="navigation">
			<ul class="menu" id="responsive">
				<li><a href="<?php echo e(url('/')); ?>" class="current homepage" id="current">Home</a></li>
				
				<li class="demo-button">
					<a href="<?php echo e(url('/')); ?>"><?php echo e(Lang::locale() === "en" ? 'Home':'Trang chủ'); ?></a>
				</li>
				<li class="dropdown">
					<a href="#"><?php echo e(Lang::locale() === "en" ? 'Category':'Danh mục sản Phẩm'); ?></a>
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
					<a href="<?php echo e(url('shop')); ?>"><?php echo e(Lang::locale() === "en" ? 'Product':'Sản phẩm'); ?></a>
				</li>
				<li class="demo-button">
					<a href="<?php echo e(url('gioi-thieu')); ?>"><?php echo e(Lang::locale() === "en" ? 'Introduce':'Giới thiệu'); ?></a>
				</li>
				<li class="demo-button">
					<a href="<?php echo e(url('tin-tuc')); ?>"><?php echo e(Lang::locale() === "en" ? 'NEW':'Tin tức'); ?></a>
				</li>
				<li class="dropdown">
					<a href="<?php echo e(url('lien-he')); ?>"><?php echo e(Lang::locale() === "en" ? 'Contact':'Liên hệ'); ?></a>
				</li>
			</ul>
		</nav>
	</div>
</div>