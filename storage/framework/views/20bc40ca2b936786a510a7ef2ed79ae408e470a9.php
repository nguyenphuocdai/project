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
					<h3 class="headline">Đăng nhập</h3><span class="line" style="margin-bottom:20px;"></span><div class="clearfix"></div>
					<form method="post" class="login" action="<?php echo e(route("post-login")); ?>">
					<input type="hidden" name="_token" value="<?php echo e(csrf_token()); ?>">
					<p class="form-row form-row-wide">
						<label for="username">Tài khoản<span class="required">*</span></label>
						<input type="text" class="input-text" name="txtUsername" id="username" value="<?php echo e(old('txtUsername')); ?>" />
					</p>
					<p class="form-row form-row-wide">
						<label for="password">Mật khẩu: <span class="required">*</span></label>
						<input class="input-text" type="password" name="txtPassword" id="password" />
					</p>
					<p class="form-row">
						<input type="submit" class="button" value="Đăng nhập" />
						</p>
						<p class="lost_password">
							<a href="#" >Quên mật khẩu</a>
						</p>
						
					</form>
				</div>
			</div>
		</div>
		<div class="margin-top-50"></div>
		<?php $__env->stopSection(); ?>
<?php echo $__env->make('pages.master', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>