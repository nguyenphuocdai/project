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
				<li><a class="facebook" href="#"><i class="icon-facebook"></i></a></li>
				<li><a class="twitter" href="#"><i class="icon-twitter"></i></a></li>
				<li><a class="dribbble" href="#"><i class="icon-dribbble"></i></a></li>
				<li><a class="gplus" href="#"><i class="icon-gplus"></i></a></li>
				<li><a class="pinterest" href="#"><i class="icon-pinterest"></i></a></li>
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
			<h1><a href="index.html"><img src="{{url('public/pages/images/logo.png')}}" alt="Trizzy" /></a></h1>
		</div>
	</div>
	<!-- Additional Menu -->
	<div class="twelve columns">
		<div id="additional-menu">
			<ul>
				<li><a href="{{ route('giohang') }}">Giỏ hàng</a></li>
				<li><a href="wishlist.html">So sánh <span>(2)</span></a></li>
				<li><a href="{{ route('dathang') }}">Thanh toán</a></li>
				<li><a href="{{ route('show-login') }}"><?php
					if(Auth::guard('customers')->check())
					{
					echo "Chào, ".Auth::guard('customers')->user()->name;
					}
					else
					{
					echo "Đăng Nhập";
					}
					
				?></a></li>
				<li><a href="{{ url('dang-ky-khach-hang') }}"><?php
					if(Auth::guard('customers')->check())
					{
					}
					else
					echo "Đăng Ký";
				?></a></li>
				<li><a href="{{ url('dang-xuat-khach-hang') }}"><?php if(Auth::guard('customers')->check())
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
				<a href="#" class="button adc">$178.00</a>
			</div>
			<div class="cart-list">
				<div class="arrow"></div>
				<div class="cart-amount">
					<span>2 items in the shopping cart</span>
				</div>
				<ul>
					<li>
						<a href="#"><img src="{{url('public/pages/images/small_product_list_08.jpg')}}" alt="" /></a>
						<a href="#">Converse All Star Trainers</a>
						<span>1 x $79.00</span>
						<div class="clearfix"></div>
					</li>
					<li>
						<a href="#"><img src="{{url('public/pages/images/small_product_list_09.jpg')}}" alt="" /></a>
						<a href="#">Tommy Hilfiger <br /> Shirt Beat</a>
						<span>1 x $99.00</span>
						<div class="clearfix"></div>
					</li>
				</ul>
				<div class="cart-buttons button">
					<a href="shopping-cart.html" class="view-cart" ><span data-hover="View Cart"><span>Xem giỏ hàng</span></span></a>
					<a href="checkout-billing-details.html" class="checkout"><span data-hover="Checkout">Thanh toán</span></a>
				</div>
				<div class="clearfix">
				</div>
			</div>
		</div>
		<!-- Search -->
		<nav class="top-search">
			<form action="#" method="get">
				<button><i class="fa fa-search"></i></button>
				<input class="search-field" type="text" placeholder="Tìm kiếm ..." value=""/>
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
					<a href="{{ url('/') }}">Trang chủ</a>
				</li>
				<li class="dropdown">
					<a href="#">Danh mục sản Phẩm</a>
					<ul>
						<?php $menu = DB::table('categories')->get(); ?>
						@foreach($menu as $item_menu)
						<li><a href="{{url('loai-san-pham',[$item_menu->category_id,$item_menu->alias])}}">{{$item_menu->name}}</a></li>
						@endforeach
					</ul>
				</li>
				<li class="demo-button">
					<a href="{{ url('shop') }}">Sản phẩm</a>
				</li>
				<li class="demo-button">
					<a href="{{ url('gioi-thieu') }}">Giới thiệu</a>
				</li>
				<li class="demo-button">
					<a href="#">Tin tức</a>
				</li>
				<li class="dropdown">
					<a href="{{ url('lien-he') }}">Liên hệ</a>
				</li>
			</ul>
		</nav>
	</div>
</div>