<?php $__env->startSection('sectionPrice'); ?>

<?php $__currentLoopData = $sortPrice; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item_pr_cate): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
		<div class="four shop columns">
			<figure class="product">
				<div class="product-discount">Giảm giá</div>
				<div class="mediaholder">
					<a href="<?php echo e(url('chi-tiet-san-pham',[$item_pr_cate->product_id,$item_pr_cate->alias])); ?>">
						<img class="img" alt="" src="<?php echo e(asset('resources/upload/'.$item_pr_cate->image)); ?>"/>
						<div class="cover">
							<img alt="" class="img" src="<?php echo e(asset('resources/upload/'.$item_pr_cate->image)); ?>"/>
						</div>
					</a>
					<a href="<?php echo e(url('chi-tiet-san-pham',[$item_pr_cate->product_id,$item_pr_cate->alias])); ?>" class="product-button"><i class="fa fa-hand-o-right"></i> Xem chi tiết</a>
				</div>

				<a href="<?php echo e(url('chi-tiet-san-pham',[$item_pr_cate->product_id,$item_pr_cate->alias])); ?>">
					<section>
						<span class="product-category"><?php echo e($item_pr_cate->name); ?></span>
						<span class="product-price price-promotion"><?php echo e(number_format($item_pr_cate->price*1.2,0,",",".")); ?></span>
						<span class="product-price "><?php echo e(number_format($item_pr_cate->price,0,",",".")); ?></span>
						
					</section>
				</a>
				
			</figure>
		</div>
		<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
		<div style="position: absolute;bottom: 0;left: 48%;"><?php echo e($sortPrice->links()); ?></div>
<?php $__env->stopSection(); ?>
<?php echo $__env->make('pages.shopcategories', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>