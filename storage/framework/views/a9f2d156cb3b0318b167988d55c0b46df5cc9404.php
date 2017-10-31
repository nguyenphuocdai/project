<?php $__env->startSection('content'); ?>
<div class="container" style="width: 100%;margin-bottom: 50px">

	<div class="products">
		<?php $__currentLoopData = $pr; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $allpr): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
		<!-- Product #1 -->
		<div class="four columns">
			<figure class="product">
				<div class="mediaholder">
					<a href="<?php echo e(url('chi-tiet-san-pham',[$allpr->product_id,$allpr->alias])); ?>">
						<img alt="" src="<?php echo e(asset('resources/upload/'.$allpr->image)); ?>" style="width: 220px;height: 220px" />
						<div class="cover">
							<?php $coverImage = DB::table('images')->select('product_id','image')->where('product_id',$allpr->product_id)->first();
							if($coverImage == NULL){
							$coverImage = $allpr;
							}
							?>
							<img alt="" src="<?php echo e(asset('resources/upload/'.$coverImage->image)); ?>" style="width: 220px;height:220px"/>
						</div>
					</a>
					<a href="<?php echo e(url('mua-hang',[$allpr->product_id,$allpr->alias])); ?>" class="product-button"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ hàng</a>
				</div>

				<a href="<?php echo e(url('chi-tiet-san-pham',[$allpr->product_id,$allpr->alias])); ?>">
					<section>
						<span class="product-category"><?php echo e($allpr->name); ?></span>
						<span class="product-price"><?php echo e(number_format($allpr->price,0,",",".")); ?></span>
					</section>
				</a>
			</figure>
		</div>
		<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>

		<div class="clearfix"></div>
	<div style="
	margin-top: 50px;
    float: right;
    padding-right: 40px;"><?php echo e($pr->render()); ?></div>
	</div>

</div>
<?php $__env->stopSection(); ?>
<?php echo $__env->make('pages.master', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>