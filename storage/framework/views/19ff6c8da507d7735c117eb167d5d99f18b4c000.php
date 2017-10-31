<?php $__env->startSection('content'); ?>
<section class="titlebar margin-bottom-0">
<div class="container">
	<div class="sixteen columns">
		<h2>Liên hệ</h2>

		<nav id="breadcrumbs">
			<ul>
				<li><a href="#">Trang Chủ</a></li>
				<li>Liên hệ</li>
			</ul>
		</nav>
	</div>
</div>
</section>


<!-- Content
================================================== -->

<!-- Container -->
<div class="container">
<div class="five columns">

	<!-- Information -->
	<div class="widget margin-top-10">
		<div class="accordion">

			<!-- Section 1 -->
			<h3><span class="ui-accordion-header-icon ui-icon ui-accordion-icon"></span><i class="fa fa-file-text"></i> Thông tin Shop</h3>
			<div>
				<p>CÔNG TY TNHH RECESS 
Giấy CNĐKDN: 0308808576 – Ngày cấp: 06/5/2009, được sửa đổi lần thứ 15 ngày 24/7/2017. 
Cơ quan cấp: Phòng Đăng ký kinh doanh – Sở kế hoạch và Đầu tư TP.HCM </p>
			</div>

			<!-- Section 2 -->
			<h3><span class="ui-accordion-header-icon ui-icon ui-accordion-icon"></span><i class="fa fa-thumb-tack"></i> 
			Địa chỉ</h3>
			<div>
				<ul class="contact-informations margin-top-0">
					<li><span class="address">Tầng 19, Tòa nhà Saigon Centre – Tháp 2, 67 Lê Lợi, Phường Bến Nghé</span></li>
					<li><span class="address"> Quận 1, Tp. Hồ Chí Minh, Việt Nam.</span></li>
				</ul>
			</div>

			<!-- Section 3 -->
			<h3><span class="ui-accordion-header-icon ui-icon ui-accordion-icon"></span><i class="fa fa-user"></i> Liên hệ</h3>
			<div>
				<ul class="contact-informations second">
					<li><i class="fa fa-phone"></i> <p>+84 933 588 295</p></li>
					<li><i class="fa fa-globe"></i> <p>www.lrv.dev</p></li>
					<li><i class="fa fa-envelope"></i> <p class="break-work">hoanghoang360@gmail.com</p></li>
				</ul>
			</div>

		</div>
	</div>

	<!-- Social -->
	<div class="widget">
		<h3 class="headline">Mạng xã hội</h3><span class="line margin-bottom-25"></span><div class="clearfix"></div>
		<ul class="social-icons">
			<li><a class="twitter" href="#"><i class="icon-twitter"></i></a></li>
			<li><a class="dribbble" href="#"><i class="icon-dribbble"></i></a></li>
			<li><a class="facebook" href="#"><i class="icon-facebook"></i></a></li>
			<li><a class="pinterest" href="#"><i class="icon-pinterest"></i></a></li>
			<li><a class="forrst" href="#"><i class="icon-forrst"></i></a></li>
			<li><a class="rss" href="#"><i class="icon-rss"></i></a></li>
		</ul>
		<div class="clearfix"></div>
	<br>
	</div>

</div>

<!-- Contact Form -->
<div class="eleven columns">
		<h3 class="headline">Liên hệ</h3><span class="line margin-bottom-25"></span><div class="clearfix"></div>
		<?php echo $__env->make('admin.danger.danger', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>
		<!-- Contact Form -->	
		<section id="contact">

			<!-- Success Message -->
			<mark id="message"></mark>

			<!-- Form -->
			<form method="POST" action="<?php echo e(url('lien-he')); ?>">
				<input type="hidden" name="_token" value="<?php echo e(csrf_token()); ?>"> 
				<fieldset>

					<div>
						<label>Họ tên:</label>
						<input name="txtName" type="text" id="name" value="<?php echo e(old('txtName')); ?>" />
					</div>
					<div>
						<label>Số điện thoại: <span>*</span></label>
						<input name="txtPhone" type="text" id="name" value="<?php echo e(old('txtPhone')); ?>"/>
					</div>

					<div>
						<label >Email: <span>*</span></label>
						<input name="txtEmail" type="email" id="email" pattern="^[A-Za-z0-9](([_\.\-]?[a-zA-Z0-9]+)*)@([A-Za-z0-9]+)(([\.\-]?[a-zA-Z0-9]+)*)\.([A-Za-z]{2,})$" value="<?php echo e(old('txtEmail')); ?>"/>
					</div>

					<div>
						<label>Lời nhắn: <span>*</span></label>
						<textarea name="txtMessage" cols="40" rows="3" id="comment" spellcheck="true"></textarea>
					</div>

				</fieldset>
				<div id="result"></div>
				<input type="submit" class="submit" id="submit_id" value="Gửi tin nhắn" />
				<div class="clearfix"></div>
			</form>

		</section>
		<!-- Contact Form / End -->
</div>
</div>
<!-- Container / End -->

<div class="margin-top-50"></div>


<?php $__env->stopSection(); ?>
<?php echo $__env->make('pages.master', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>