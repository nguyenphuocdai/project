<?php $__env->startSection('content'); ?>
<!-- Titlebar
================================================== -->
<section class="titlebar">
	<div class="container">
		<div class="sixteen columns">
			<h2>Shop</h2>
			
			<nav id="breadcrumbs">
				<ul>
					<li><a href="#">Trang chủ</a></li>
					<?php $pr = DB::table('categories')->select('name','category_id')->where('category_id',$pr_detail->category_id)->first(); ?>
					<li><a href="#"><?php echo e($pr->name); ?></a></li>
					<li><?php echo e($pr_detail->name); ?></li>
				</ul>
			</nav>
		</div>
	</div>
</section>
<div class="container">
	<!-- Slider
	================================================== -->
	<div class="eight columns" >
		<div class="slider-padding">
			<div id="product-slider" class="">
				<?php $__currentLoopData = $img; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $detail): $__env->incrementLoopIndices(); $loop = $__env->getFirstLoop(); ?>
				<img class="" src="<?php echo e(asset('resources/upload/product_image/'.$detail->image)); ?>">
				<?php endforeach; $__env->popLoop(); $loop = $__env->getFirstLoop(); ?>
				
			</div>
			<div style="display: inline-flex;">
				<?php $__currentLoopData = $img; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $detail): $__env->incrementLoopIndices(); $loop = $__env->getFirstLoop(); ?>
				<img class="" src="<?php echo e(asset('resources/upload/product_image/'.$detail->image)); ?>" style="width: 100px;height: 100px">
				<?php endforeach; $__env->popLoop(); $loop = $__env->getFirstLoop(); ?>
			</div>
			
			<div class="clearfix"></div>
		</div>
	</div>
	<!-- Content
	================================================== -->
	<div class="eight columns">
		<div class="product-page">
			
			<!-- Headline -->
			<section class="title">
				<h2><?php echo e($pr_detail->name); ?></h2>
				<span class="product-price-discount"><?php echo e(number_format($pr_detail->price*1.2,0,",",".")); ?><i><?php echo e(number_format($pr_detail->price,0,",",".")); ?></i></span>
				<div class="reviews-counter">
					<div class="rating five-stars">
						<div class="star-rating"></div>
						<div class="star-bg"></div>
					</div>
					<span>3 Đánh giá</span>
				</div>
			</section>
			<!-- Text Parapgraph -->
			<section>
				<p class="margin-reset"><?php echo $pr_detail->describe;   ?></p>
				<!-- Share Buttons -->
				<div class="share-buttons">
					<ul>
						<li><a href="#">Share</a></li>
						<li class="share-facebook"><a href="#">Facebook</a></li>
						<li class="share-twitter"><a href="#">Twitter</a></li>
						<li class="share-gplus"><a href="#">Google Plus</a></li>
						<li class="share-pinit"><a href="#">Pin It</a></li>
					</ul>
				</div>
				<div class="clearfix"></div>
			</section>
			<section class="linking">
				<a href="<?php echo e(url('mua-hang',[$pr_detail->product_id,$pr_detail->alias])); ?>"  style="margin-left: 0;" class="button adc">Thêm vào giỏ hàng</a>
			</section>
		</div>
	</div>
</div>
<div class="container">
	<div class="sixteen columns">
		<!-- Tabs Navigation -->
		<ul class="tabs-nav">
			<li class="active"><a href="#tab1">Mô tả sản phẩm</a></li>
			
			<li><a href="#tab3">Đánh giá <span class="tab-reviews">(3)</span></a></li>
		</ul>
		<!-- Tabs Content -->
		<div class="tabs-container">
			<div class="tab-content" id="tab1">
				<p><?php echo $pr_detail->describe;   ?></p>
			</div>
			<div class="tab-content" id="tab3">
				<!-- Reviews -->
				<section class="comments">
					<ul>
						<?php  $t= DB::table('comments')->where('product_id',$pr_detail->product_id)->orderBy('created_at','desc')->get(); ?>
						<?php $__currentLoopData = $t; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $tcm): $__env->incrementLoopIndices(); $loop = $__env->getFirstLoop(); ?>
						<li>
							<div class="avatar"><img src="http://www.gravatar.com/avatar/00000000000000000000000000000000?d=mm&amp;s=70" alt="" /></div>
							<div class="comment-content"><div class="arrow-comment"></div>
							<div class="comment-by"><strong><?php echo DB::table('customers')->where('customer_id',$tcm->customer_id)->first()->name." : "; ?></strong><span class="date"><?php echo " ( ".DB::table('customers')->where('customer_id',$tcm->customer_id)->first()->created_at." )"; ?></span>
							
						</div>
						<p><?php echo e($tcm->comment); ?></p>
					</div>
				</li>
				<?php endforeach; $__env->popLoop(); $loop = $__env->getFirstLoop(); ?>
			</ul>
			<a href="#small-dialog" class="popup-with-zoom-anim button color">Viết bình luận</a>
			<div id="small-dialog" class="zoom-anim-dialog mfp-hide">
				<h3 class="headline">Viết bình luận</h3><span class="line margin-bottom-25"></span><div class="clearfix"></div>
				<!-- Form -->
				<form id="add-comment" class="add-comment" method="post" action="<?php echo e(url('comment/'.$pr_detail->product_id)); ?>">
					<input type="hidden" name="_token" value="<?php echo e(csrf_token()); ?>">
					<fieldset>
						<div>
							<label>Bình luận: <span>*</span></label>
							<textarea cols="40" rows="3" value="<?php echo e(old('txtComment')); ?>" name="txtComment"></textarea>
						</div>
					</fieldset>
					<button type="submit" class="btn-primary">Bình luận</button>
					<div class="clearfix"></div>
				</form>
			</div>
		</section>
	</div>
</div>
</div>
</div>
<!-- Related Products -->
<div class="container margin-top-5">
<!-- Headline -->
<div class="sixteen columns">
<h3 class="headline">Sản phẩm tương tự</h3>
<span class="line margin-bottom-0"></span>
</div>
<!-- Products -->
<div class="products">
<!-- Product #1 -->
<?php $__currentLoopData = $pr_relate; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $pr): $__env->incrementLoopIndices(); $loop = $__env->getFirstLoop(); ?>
<div class="four columns">
	<figure class="product">
		<div class="mediaholder">
			<a href="#">
				<img alt="" src="<?php echo e(asset('resources/upload/product_image/'.$pr->image)); ?>"/>
				<div class="cover">
					<?php $__currentLoopData = $img; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $detail): $__env->incrementLoopIndices(); $loop = $__env->getFirstLoop(); ?>
					<img class="" src="<?php echo e(asset('resources/upload/product_image/'.$pr->image)); ?>">
					<?php endforeach; $__env->popLoop(); $loop = $__env->getFirstLoop(); ?>
				</div>
			</a>
			<a href="#" class="product-button"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ hàng</a>
		</div>
		<a href="#">
			<section>
				<span class="product-category"><?php echo e($pr->name); ?></span>
				<span class="product-price"><?php echo e(number_format($pr->price,0,",",".")); ?></span>
			</section>
		</a>
	</figure>
</div>
<?php endforeach; $__env->popLoop(); $loop = $__env->getFirstLoop(); ?>
</div>
</div>
<div class="margin-top-50"></div>
<?php $__env->stopSection(); ?>
<?php echo $__env->make('pages.master', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>