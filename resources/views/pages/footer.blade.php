<div id="footer">
	<!-- Container -->
	<div class="container">
		<div class="four columns">
			<img src="{{url('public/pages/images/logo-footer.png')}}" alt="" class="margin-top-10"/>
			<p class="margin-top-15">{{ Lang::locale() === "en" ? '
				Address: Floor 19, Saigon Center Building - Tower 2, 67 Le Loi Street, Ben Nghe Ward, District 1, Ho Chi Minh City, Vietnam.':'Địa chỉ: Tầng 19, Tòa nhà Saigon Centre – Tháp 2, 67 Lê Lợi, Phường Bến Nghé, Quận 1, Tp. Hồ Chí Minh, Việt Nam.' }}
			</p>
		</div>
		<div class="four columns">
			<!-- Headline -->
			<h3 class="headline footer">Liên kết nhanh</h3>
			<span class="line"></span>
			<div class="clearfix"></div>
			<ul class="footer-links">
				<li><a href="#">{{ Lang::locale() === "en" ? 'Order Status':'Trạng thái đơn hàng' }}</a></li>
				<li><a href="#">{{ Lang::locale() === "en" ? '
				Payment methods':'Phương thức thanh toán' }}</a></li>
				<li><a href="#">{{ Lang::locale() === "en" ? 'Delivery and delivery':'Giao hàng và trả hàng' }}</a></li>
				<li><a href="#">{{ Lang::locale() === "en" ? '
				Privacy Policy':'Chính sách bảo mật' }}</a></li>
				<li><a href="#">{{ Lang::locale() === "en" ? 'Terms and conditions':'Điều khoản và điều kiện' }}</a></li>
			</ul>
		</div>
		<div class="four columns">
			<!-- Headline -->
			<h3 class="headline footer">{{ Lang::locale() === "en" ? 'My Account':'Tài khoản của bạn' }}</h3>
			<span class="line"></span>
			<div class="clearfix"></div>
			<ul class="footer-links">
				<li><a href="#">{{ Lang::locale() === "en" ? 'Login/Register':'Đăng nhập/ Đăng ký' }}</a></li>
				<li><a href="#">{{ Lang::locale() === "en" ? 'OrderHistory':'Xem lịch sử mua hàng' }}Xem lịch sử mua hàng</a></li>
				<li><a href="#">{{ Lang::locale() === "en" ? 'CompareProduct':'So sánh sản phẩm' }}So sánh sản phẩm</a></li>
			</ul>
		</div>
		<div class="four columns">
			<!-- Headline -->
			<h3 class="headline footer">Bản tin</h3>
			<span class="line"></span>
			<div class="clearfix"></div>
			<p>{{ Lang::locale() === "en" ? 'Subscribe to receive email updates about new product announcements, gift ideas, special offers, sales and more.':'Đăng ký để nhận thông tin cập nhật qua email về thông báo sản phẩm mới, ý tưởng tặng quà, khuyến mại đặc biệt, bán hàng và nhiều hơn nữa.' }}</p>
			<form action="#" method="get">
				<button class="newsletter-btn" type="submit">{{ Lang::locale() === "en" ? 'Send':'Gửi' }}</button>
				<input class="newsletter" type="text" placeholder="mail@example.com" value=""/>
			</form>
		</div>
	</div>
	<!-- Container / End -->
</div>
<div id="footer-bottom">
	<!-- Container -->
	<div class="container">
		<div class="eight columns">© Copyright 2017 by <a href="#">Nguyễn Phước Đại.</a></div>
		<div class="eight columns">
			<ul class="payment-icons">
				<li><img src="{{url('public/pages/images/visa.png')}}" alt="" /></li>
				<li><img src="{{url('public/pages/images/mastercard.png')}}" alt="" /></li>
				<li><img src="{{url('public/pages/images/skrill.png')}}" alt="" /></li>
				<li><img src="{{url('public/pages/images/moneybookers.png')}}" alt="" /></li>
				<li><img src="{{url('public/pages/images/paypal.png')}}" alt="" /></li>
			</ul>
		</div>
	</div>
	<!-- Container / End -->
</div>