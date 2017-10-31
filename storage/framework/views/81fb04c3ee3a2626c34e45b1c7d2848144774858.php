<?php $__env->startSection('sectionPrice'); ?>

<?php $__currentLoopData = $pr_cate; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item_pr_cate): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
		<div class="four shop columns">
			<figure class="product">
				<div class="product-discount">SALE</div>
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
						<span class="product-price "><?php echo e(number_format($item_pr_cate->price,0,",",".")); ?></span>
						
					</section>
				</a>
				
			</figure>
		</div>
		<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>

		<?php $__env->stopSection(); ?>
<?php echo $__env->make('pages.shopcategories', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>