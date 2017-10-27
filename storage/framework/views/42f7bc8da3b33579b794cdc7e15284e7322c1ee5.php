<?php $__env->startSection('content'); ?>
<section class="titlebar">
	<div class="container">
		<div class="sixteen columns">
			<h2>Tài khoản khách hàng</h2>
			
			<nav id="breadcrumbs">
				<ul>
					<li><a href="#">Trang chủ</a></li>
					<li>tài khoản</li>
				</ul>
			</nav>
		</div>
	</div>
</section>
<!-- Content
================================================== -->
<!-- Container -->
	<?php echo $__env->make('admin.danger.danger', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>
	<div class="six columns centered">
		<div class="col-lg-12 six columns centered">
			<?php if(Session::has('flash_message')): ?>
			<div class="success-custom">
				<?php echo e(Session::get('flash_message')); ?>

			</div>
			<?php endif; ?>
		</div>
	</div>
	<br>
<div class="container">
	<div class="six columns centered">
		<div class="tabs-container">
	
				<!-- Register -->
					<h3 class="headline">Đăng ký</h3><span class="line" style="margin-bottom:20px;"></span><div class="clearfix"></div>
					<form method="post" class="register" action="<?php echo e(url('dang-ky-khach-hang')); ?>">
						<input type="hidden" name="_token" value="<?php echo e(csrf_token()); ?>">
						<p class="form-row form-row-wide">
							<label for="txtName">Họ tên:<span class="required">*</span></label>
							<input type="text" class="input-text" name="txtName" id="txtName" value="<?php echo e(old('txtName')); ?>" />
						</p>
						<p class="form-row form-row-wide">
							<label>Email: <span class="required">*</span></label>
							<input name="txtEmail" type="email" id="email" pattern="^[A-Za-z0-9](([_\.\-]?[a-zA-Z0-9]+)*)@([A-Za-z0-9]+)(([\.\-]?[a-zA-Z0-9]+)*)\.([A-Za-z]{2,})$" value="<?php echo e(old('txtEmail')); ?>"/>
						</p>
						<p class="form-row form-row-wide">
							<label for="txtUsername">Tài khoản: <span class="required">*</span></label>
							<input type="text" class="input-text" name="txtUsername" id="txtUsername" value="<?php echo e(old('txtUsername')); ?>" />
						</p>
						<p class="form-row form-row-wide">
							<label for="txtPassword">Mật khẩu: <span class="required">*</span></label>
							<input type="password" class="input-text" name="txtPassword" id="reg_password" />
						</p>
						<p class="form-row form-row-wide">
							<label >Nhập lại mật khẩu: <span class="required">*</span></label>
							<input type="password" class="input-text" name="txtRePassword"  />
						</p>
						
						
						<p class="form-row form-row-wide">
							<label for="txtAddress">Địa chỉ:<span class="required">*</span></label>
							<input type="text" class="input-text" name="txtAddress" id="txtAddress" value="" />
						</p>
						<p class="form-row form-row-wide">
							<label for="txtphone">Số điện thoại:<span class="required">*</span></label>
							<input type="text" class="input-text" name="txtPhone" id="txtPhone" value="" />
						</p>
						
							<p class="form-row">
								<input type="submit" class="button" name="register" value="Đăng ký" />
							</p>
							
						</form>
				</div>
			</div>
		</div>
		<div class="margin-top-50"></div>
		<?php $__env->stopSection(); ?>
<?php echo $__env->make('pages.master', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>