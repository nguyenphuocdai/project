<div id="top-bar">
	<div class="container">
		<!-- Top Bar Menu -->
		<div class="ten columns">
			<ul class="top-bar-menu">
				<li><i class="fa fa-phone"></i> 0933 588 295</li>
				<li><i class="fa fa-envelope"></i>hoanghoang360@gmail.com</li>
				<li>
					<div class="top-bar-dropdown" >
						{{-- <span>Tiếng Việt</span>
						<ul class="options">
							<li><div class="arrow"></div></li>
							<li><a href="" id="languageSwitcher" value="en">English</a></li>
							<li><a href="#">Polish</a></li>
							<li><a href="#">Deutsch</a></li>
						</ul> --}}
						
					</div>
				</li>
			</ul>
		</div>
		<!-- Social Icons -->
		<div class="six columns">
			<ul class="social-icons" >
				<form action="{{ URL::route('language-chooser') }}" method="post" accept-charset="utf-8" style="display: inline-flex;margin-top: 10px;">
							{{ csrf_field() }}
							<select name="locale">
								<option value="tv">Tiếng việt</option>
								<option value="en" {{ Lang::locale() === "en" ? 'selected':'' }}>English</option>
							</select>
							<input type="submit" name="" value="{{ Lang::locale() === "en" ? 'Choose':'Chọn' }}" style="padding-bottom: 0;font-size: 10px;padding-top: 0;">
						</form>
				<li><a class="github" href="{!! url('login/github') !!}"><i class="icon-github"></i></a></li>
				<li><a class="gplus" href="{!! url('login/google') !!}"><i class="icon-gplus"></i></a></li>
			</ul>
		</div>
	</div>
</div>
<div class="clearfix"></div>
@if(Session::has('alert-success'))
                        <div class="alert alert-{{Session::get('flash_level')}}">
                            {{Session::get('alert-success')}}
                        </div>
@endif
<!-- Header
================================================== -->
<div class="container">
	<!-- Logo -->
	<div class="four columns">
		<div id="logo">
			<h1><a href="{{ url('/') }}"><img src="{{url('public/pages/images/logo.png')}}" alt="Trizzy" /></a></h1>
		</div>
	</div>
	<!-- Additional Menu -->
	<div class="twelve columns">
		<div id="additional-menu">
			<ul>
				<li><a href="{{ route('giohang') }}">{{ Lang::locale() === "en" ? 'Cart':'Giỏ hàng' }}</a></li>
				<li><a href="{{ route('dathang') }}">{{ Lang::locale() === "en" ? 'Payment':'Thanh toán' }}</a></li>
				<li><a href="{{ url('dang-nhap-khach-hang') }}">
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
				<li><a href="{{ url('dang-ky-khach-hang') }}"><?php
						if(Auth::guard('customers')->check())
						{
						}
						else
						echo Lang::locale() == "en" ? 'Register': 'Đăng ký';
				?></a></li>
				<li><a href="{{ url('dang-xuat-khach-hang') }}"><?php if(Auth::guard('customers')->check())
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
				<a href="#" class="button adc">{{ $subtotal }} {{ Lang::locale() == "en" ? '$':'VNĐ' }}</a>
			</div>	
			<div class="cart-list">
				<div class="arrow"></div>
				<div class="cart-amount">
					<span>Sản phẩm được chọn ({{Cart::content()->groupBy('id')->count() }}) </span>
				</div>
				<ul>
					@foreach(Cart::Content() as $cart)
					<li>
						<a href="{{ url('gio-hang') }}"><img src="{{ asset('resources/upload/product_image/'.$cart->options->img)}}" alt="" /></a>
						<a href="{{ url('gio-hang') }}">{{ $cart->name }}</a>
						<span>{{ $cart->qty  }} x {{ number_format($cart->price,0,",",".") }} đ</span>
						<div class="clearfix"></div>
					</li>
					@endforeach
				</ul>
				<div class="cart-buttons button">
					<a href="{{ url('gio-hang') }}" class="view-cart" ><span data-hover="View Cart"><span>{{ Lang::locale() === "en" ? 'See Cart ':'Xem giỏ hàng' }}</span></span></a>
					<a href="{{ route('dathang') }}" class="checkout"><span data-hover="Checkout">{{ Lang::locale() === "en" ? 'Payment':'Thanh toán' }}</span></a>
				</div>
				<div class="clearfix">
				</div>
			</div>
		</div>
		<!-- Search -->
		<nav class="top-search">
			<form action="{{ url('tim-kiem') }}" method="get">
				<button type="submit"><i class="fa fa-search"></i></button>
				<input class="search-field" type="text" name="key" placeholder="{{ Lang::locale() === "en" ? 'Search ...':'Tìm kiếm ...' }}" value=""/>
			</form>
		</nav>
	</div>
</div>
<div class="container">
	<div class="sixteen columns">
		
		<a href="#menu" class="menu-trigger"><i class="fa fa-bars"></i> Menu</a>
		<nav id="navigation">
			<ul class="menu" id="responsive">
				<li><a href="{{ url('/') }}" class="current homepage" id="current">Home</a></li>
				
				<li class="demo-button">
					<a href="{{ url('/') }}">{{ Lang::locale() === "en" ? 'Home':'Trang chủ' }}</a>
				</li>
				<li class="dropdown">
					<a href="#">{{ Lang::locale() === "en" ? 'Category':'Danh mục sản Phẩm' }}</a>
					<ul>
						<?php $menu = DB::table('categories')->get(); ?>
						@foreach($menu as $item_menu)
						<li style="min-width: 206px"><a href="{{url('loai-san-pham',[$item_menu->category_id,$item_menu->alias])}}"
							style="text-transform: uppercase;"
						>{{$item_menu->name}}</a></li>
						@endforeach
					</ul>
				</li>
				<li class="demo-button">
					<a href="{{ url('shop') }}">{{ Lang::locale() === "en" ? 'Product':'Sản phẩm' }}</a>
				</li>
				<li class="demo-button">
					<a href="{{ url('gioi-thieu') }}">{{ Lang::locale() === "en" ? 'Introduce':'Giới thiệu' }}</a>
				</li>
				<li class="demo-button">
					<a href="{{ url('tin-tuc') }}">{{ Lang::locale() === "en" ? 'NEW':'Tin tức' }}</a>
				</li>
				<li class="dropdown">
					<a href="{{ url('lien-he') }}">{{ Lang::locale() === "en" ? 'Contact':'Liên hệ' }}</a>
				</li>
			</ul>
		</nav>
	</div>
</div>