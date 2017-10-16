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
					<?php $__currentLoopData = $menu; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item_menu): $__env->incrementLoopIndices(); $loop = $__env->getFirstLoop(); ?>
				<li><a href="#"><?php echo e($item_menu->name); ?><span>(*)</span></a>
					<?php endforeach; $__env->popLoop(); $loop = $__env->getFirstLoop(); ?>
			<div class="clearfix"></div>

		</div>

		<div class="widget margin-top-0">
			<h3 class="headline">Sản phẩm theo giá</h3><span class="line"></span><div class="clearfix"></div>

			<ul id="categories">
				<li><a href="#">< 2.000.000</a>
				<li><a href="#">2.000.000 - 5.000.000</a>
				<li><a href="#">5.000.000 - 10.000.000</a>
				<li><a href="#">10.000.000 - 15.000.000</a>
				<li><a href="#"> > 15.000.000</a>
			<div class="clearfix"></div>

		</div>

	</div>


	<!-- Content
	================================================== -->
	<div class="twelve columns">

		<!-- Ordering -->
		<select class="orderby">
			<option>Default Sorting</option>
			<option>Sắp xếp theo giá</option>
		</select>

	</div>

	<!-- Products -->
	<div class="twelve columns products">

		<!-- Product #1 --><?php $__currentLoopData = $pr_cate; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item_pr_cate): $__env->incrementLoopIndices(); $loop = $__env->getFirstLoop(); ?>
		<div class="four shop columns">
			<figure class="product">
				
				<div class="mediaholder">
					<a href="<?php echo e(url('chi-tiet-san-pham',[$item_pr_cate->product_id,$item_pr_cate->alias])); ?>">
						<img class="img" alt="" src="<?php echo e(asset('resources/upload/'.$item_pr_cate->image)); ?>"/>
						<div class="cover">
							<img alt="" class="img" src="<?php echo e(asset('resources/upload/'.$item_pr_cate->image)); ?>"/>
						</div>
					</a>
					<a href="<?php echo e(url('chi-tiet-san-pham',[$item_pr_cate->product_id,$item_pr_cate->alias])); ?>" class="product-button"><i class="fa fa-hand-o-right"></i> Xem chi tiết</a>
				</div>

				<a href="variable-product-page.html">
					<section>
						<span class="product-category"><?php echo e($item_pr_cate->name); ?></span>
						<span class="product-price price-promotion"><?php echo e(number_format($item_pr_cate->price*1.2,0,",",".")); ?></span>
						<span class="product-price "><?php echo e(number_format($item_pr_cate->price,0,",",".")); ?></span>
						
					</section>
				</a>
				
			</figure>
		</div>
		<?php endforeach; $__env->popLoop(); $loop = $__env->getFirstLoop(); ?>
		<!-- Pagination -->
		<!-- <div class="pagination-container">
			<nav class="pagination">
				<ul>
					<li><a href="#" class="current-page">1</a></li>
					<li><a href="#">2</a></li>
					<li><a href="#">3</a></li>
				</ul>
			</nav>

			<nav class="pagination-next-prev">
				<ul>
					<li><a href="#" class="prev"></a></li>
					<li><a href="#" class="next"></a></li>
				</ul>
			</nav>
		</div> -->

	</div>

</div>

<div class="margin-top-15"></div>
<?php $__env->stopSection(); ?>
<?php echo $__env->make('pages.master', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>