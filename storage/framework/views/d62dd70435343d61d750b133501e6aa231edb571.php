<?php $__env->startSection('content'); ?>
<section class="parallax-titlebar fullwidth-element"  data-background="#000" data-opacity="0.45" data-height="160">
	<img src="<?php echo e(url('public/pages/images/titlebar_bg_01.jpg')); ?>" alt="" />
	<div class="parallax-overlay"></div>
	<div class="parallax-content">
		<h2>Shop <span>Vận chuyển toàn quốc</span></h2>
		<nav id="breadcrumbs">
			<ul>
				<li><a href="<?php echo e(url('/')); ?>">Trang chủ</a></li>
				<li>Shop</li>
			</ul>
		</nav>
	</div>
</section>
<div class="container">
	<!-- Sidebar
	================================================== -->
	<div class="four columns">
		<!-- Categories -->
		<div class="widget margin-top-0">
			<h3 class="headline">Loại sản phẩm</h3><span class="line"></span><div class="clearfix"></div>
			<ul id="categories">
				<?php $menu = DB::table('categories')->get(); ?>
				<?php $__currentLoopData = $menu; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item_menu): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
				<li><a href="<?php echo e(url('loai-san-pham',[$item_menu->category_id,$item_menu->alias])); ?>" style="text-transform: uppercase;"><?php echo e($item_menu->name); ?></a>
				<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
				<div class="clearfix"></div>
			</div>
			<div class="widget margin-top-0">
				<h3 class="headline">Sản phẩm theo giá</h3><span class="line"></span><div class="clearfix"></div>
				<ul id="categories">
					<li><a href="<?php echo e(url('theo-gia-cate1')); ?>">< 2.000.000</a>
					<li><a href="<?php echo e(url('theo-gia-cate2')); ?>">2.000.000 - 5.000.000</a>
					<li><a href="<?php echo e(url('theo-gia-cate3')); ?>">5.000.000 - 10.000.000</a>
					<li><a href="<?php echo e(url('theo-gia-cate4')); ?>">10.000.000 - 15.000.000</a>
					<li><a href="<?php echo e(url('theo-gia-cate5')); ?>"> > 15.000.000</a>
					<div class="clearfix"></div>
				</div>
			</div>
			<!-- Content
			================================================== -->
			<!-- Products -->
			<div class="twelve columns products">
				
				
				<?php echo $__env->yieldContent('sectionPrice'); ?>
			</div>
		</div>
		<div class="margin-top-15"></div>
		<?php $__env->stopSection(); ?>
<?php echo $__env->make('pages.master', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>