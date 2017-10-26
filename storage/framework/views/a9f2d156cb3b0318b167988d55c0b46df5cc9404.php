<?php $__env->startSection('content'); ?>
<div class="container">

	<!-- Content
	================================================== -->

	<div class="sixteen columns full-width">

		<!-- Ordering -->
		<select class="orderby">
			<option>Default Sorting</option>
			<option>Sort by Popularity</option>
			<option>Sort by Newness</option>
		</select>

	</div>

	<!-- Products -->
	<div class="products">
		<?php $__currentLoopData = $pr; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $allpr): $__env->incrementLoopIndices(); $loop = $__env->getFirstLoop(); ?>
		<!-- Product #1 -->
		<div class="four columns">
			<figure class="product">
				<div class="mediaholder">
					<a href="variable-product-page.html">
						<img alt="" src="<?php echo e(asset('resources/upload/'.$allpr->image)); ?>" style="width: 220px;height: 220px" />
						<div class="cover">
							<?php $coverImage = DB::table('images')->select('product_id','image')->where('product_id',$allpr->product_id)->first();?>
							<img alt="" src="<?php echo e(asset('resources/upload/'.$coverImage->image)); ?>" style="width: 220px;height:220px"/>
						</div>
					</a>
					<a href="<?php echo e(url('mua-hang',[$allpr->product_id,$allpr->alias])); ?>" class="product-button"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ hàng</a>
				</div>

				<a href="variable-product-page.html">
					<section>
						<span class="product-category"><?php echo e($allpr->name); ?></span>
						<h5 style="text-decoration: line-through;"><?php echo e(number_format($allpr->price*1.2,0,",",".")); ?></h5>
						<span class="product-price"><?php echo e(number_format($allpr->price,0,",",".")); ?></span>
					</section>
				</a>
			</figure>
		</div>
		<?php endforeach; $__env->popLoop(); $loop = $__env->getFirstLoop(); ?>
		<div class="clearfix"></div>


		<!-- Pagination -->
		<div class="pagination-container">
			<nav class="pagination">
				<ul>
					<li><a href="#" class="current-page">1</a></li>
					<li><a href="#">2</a></li>
					<li><a href="#">3</a></li>
				</ul>
			</nav>

			<nav class="pagination-next-prev full-width">
				<ul>
					<li><a href="#" class="prev"></a></li>
					<li><a href="#" class="next"></a></li>
				</ul>
			</nav>
		</div>

	</div>

</div>
<?php $__env->stopSection(); ?>
<?php echo $__env->make('pages.master', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>