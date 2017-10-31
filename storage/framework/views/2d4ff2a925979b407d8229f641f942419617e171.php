<?php $__env->startSection('content'); ?>
	
	<section class="titlebar">
<div class="container">
	<div class="sixteen columns">
		<h2>Rất tiếc, Vui lòng quay lại sau.</h2>
		
		<nav id="breadcrumbs">
			<ul>
				<li><a href="#">Trang chủ</a></li>
				<li>Có lỗi xảy ra</li>
			</ul>
		</nav>
	</div>
</div>
</section>


<!-- Content
================================================== -->

<!-- Container -->
<div class="container">

	<div class="sixteen columns">
		<?php if($message = Session::get('success')): ?>
			<div class="custom-alerts alert alert-success fade in">
				<button type="button" class="close" data-dismiss="alert" aria-hidden="true"></button>
				<?php echo $message; ?>

			</div>
			<?php Session::forget('success');?>
			<?php endif; ?>
			<?php if($message = Session::get('error')): ?>
			<div class="custom-alerts alert alert-danger fade in">
				<button type="button" class="close" data-dismiss="alert" aria-hidden="true"></button>
				<?php echo $message; ?>

			</div>
			<?php Session::forget('error');?>
			<?php endif; ?>
		<section id="not-found">
			<h2><i class="fa fa-question-circle"></i></h2>
			<p>Rất tiếc, có lỗi xảy ra.</p>

		</section>
	</div>

</div>
<!-- Container / End -->

<div class="margin-top-50"></div>

<?php $__env->stopSection(); ?>
<?php echo $__env->make('pages.master', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>