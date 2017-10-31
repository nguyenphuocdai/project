<?php $__env->startSection('content'); ?>
<div class="container fullwidth-element home-slider container-slider">
	<div class="tp-banner-container">
		<div class="tp-banner">
			<ul>
				<!-- Slide 1  -->
				<li data-transition="fade" data-slotamount="7" data-masterspeed="1000">
					<img src="<?php echo e(url('public/pages/images/banner1.jpg')); ?>"  alt="darkblurbg"  data-bgfit="cover" data-bgposition="left top" data-bgrepeat="no-repeat">
					<div class="caption dark sfb fadeout" data-x="750" data-y="170" data-speed="400" data-start="800"  data-easing="Power4.easeOut">
						<h2>Urban Style</h2>
						<h3><?php echo e(Lang::locale() === "en" ? 'Interior design ':'Thiết kế nội thất'); ?>

						</h3>
						<a href="shop-with-sidebar.html" class="caption-btn"><?php echo e(Lang::locale() === "en" ? 'read more':'Xem thêm'); ?></a>
					</div>
				</li>
				<!-- Slide 2  -->
				<li data-transition="zoomout" data-slotamount="7" data-masterspeed="1500" >
					<img src="<?php echo e(url('public/pages/images/banner2.jpg')); ?>"  alt="slidebg1"  data-bgfit="cover" data-bgposition="left top" data-bgrepeat="no-repeat">
					<div class="caption sfb fadeout" data-x="145" data-y="170" data-speed="400" data-start="800"  data-easing="Power4.easeOut">
						<h2>Dress Sharp</h2>
						<h3><?php echo e(Lang::locale() === "en" ? 'Interior design ':'Thiết kế nội thất'); ?></h3>
						<a href="shop-with-sidebar.html" class="caption-btn">Xem thêm</a>
					</div>
				</li>
				<!-- Slide 3  -->
				<li data-transition="fadetotopfadefrombottom" data-slotamount="7" data-masterspeed="1000">
					<img src="<?php echo e(url('public/pages/images/banner3.jpg')); ?>"  alt="darkblurbg"  data-bgfit="cover" data-bgposition="left top" data-bgrepeat="no-repeat">
					<div class="caption dark sfb fadeout" data-x="850" data-y="170" data-speed="400" data-start="800"  data-easing="Power4.easeOut">
						<h2>New In</h2>
						<h3><?php echo e(Lang::locale() === "en" ? 'Interior Practice ':'Thiết kế nội thất'); ?></h3>
						<a href="shop-with-sidebar.html" class="caption-btn">Xem thêm</a>
					</div>
				</li>
			</ul>
		</div>
	</div>
</div>
<!-- Featured
================================================== -->
<div class="container" >
	<div class="one-third column">
		<a href="<?php echo e(url('shop')); ?>" class="img-caption" >
			<figure>
				<img src="<?php echo e(url('public/pages/images/nhabep1.jpg')); ?>" alt="" />
				<figcaption>
				<h3><?php echo e(Lang::locale() === "en" ? 'Kitchen':'Nhà Bếp'); ?></h3>
				<span><?php echo e(Lang::locale() === "en" ? 'The Kitchen House and Modern Savings':'Nhà bếp hiện đại và tân cổ điển'); ?></span>
				</figcaption>
			</figure>
		</a>
	</div>
	<div class="one-third column">
		<a href="<?php echo e(url('shop')); ?>" class="img-caption" >
			<figure>
				<img src="<?php echo e(url('public/pages/images/phongngu.jpg')); ?>" alt="" />
				<figcaption>
				<h3><?php echo e(Lang::locale() === "en" ? 'Bedroom':'Phòng ngủ'); ?></h3>
				<span><?php echo e(Lang::locale() === "en" ? 'Petalia and Modern Savings':'Phòng ngủ hiện đại và tân cổ điển'); ?>

				</span>
				</figcaption>
			</figure>
		</a>
	</div>
	<div class="one-third column">
		<a href="<?php echo e(url('shop')); ?>" class="img-caption" >
			<figure>
				<img src="<?php echo e(url('public/pages/images/phongkhach.jpg')); ?>" alt="" />
				<figcaption>
				<h3><?php echo e(Lang::locale() === "en" ? 'Living room':'Phòng Khách'); ?> </h3>
				<span><?php echo e(Lang::locale() === "en" ? 'Guest Roomfront and Modern Savings':'Phòng khách hiện đại và tân cổ điển'); ?></span>
				</figcaption>
			</figure>
		</a>
	</div>
</div>
<div class="clearfix"></div>
<!-- New Arrivals
================================================== -->
<div class="container">
	<!-- Headline -->
	<div class="sixteen columns">
		<h3 class="headline"><?php echo e(Lang::locale() === "en" ? 'New product':'Sản phẩm mới'); ?> </h3>
		<span class="line margin-bottom-0"></span>
	</div>
	<!-- Carousel -->
	<div id="new-arrivals" class="showbiz-container sixteen columns" >
		<div class="clearfix"></div>
		<!-- Products -->
		<div class="showbiz" data-left="#showbiz_left_1" data-right="#showbiz_right_1" data-play="#showbiz_play_1" >
			<div class="overflowholder">
				<ul>
					<?php $__currentLoopData = $pr_new; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $new): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
					<li>
						<figure class="product">
							<div class="mediaholder">
								<a href="<?php echo e(url('chi-tiet-san-pham',[$new->product_id,$new->alias])); ?>">
									<img alt="" src="<?php echo e(asset('resources/upload/product_image/'.$new->image)); ?>" style="width: 220px;height: 220px" />
									<div class="cover">
										<?php $coverImage = DB::table('images')->select('product_id','image')->where('product_id',$new->product_id)->first();
										if($coverImage == NULL){
											$coverImage = $new;
										}
										?>
										<img alt="" src="<?php echo e(asset('resources/upload/product_image/'.$coverImage->image)); ?>" style="width: 220px;height: 220px"/>
									</div>
								</a>
								<a href="<?php echo e(url('mua-hang',[$new->product_id,$new->alias])); ?>" class="product-button"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ hàng</a>
							</div>
							<a href="variable-product-page.html">
								<section>
									<span class="product-category"><?php echo e($new->name); ?></span>
									<span class="product-price"><?php echo e(number_format($new->price,0,",",".")); ?></span>
								</section>
							</a>
						</figure>
					</li>
					<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
				</ul>
				<div class="clearfix"></div>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>
</div>
<!-- Parallax Banner
================================================== -->
<div class="parallax-banner fullwidth-element"  data-background="#000" data-opacity="0.45" data-height="200">
	<img src="<?php echo e(url('public/pages/images/parallax.jpg')); ?>" alt="" />
	<div class="parallax-overlay"></div>
	<div class="parallax-title"><?php echo e(Lang::locale() === "en" ? 'DISCOUNT TO THE SUMMER':'Giảm giá đến hết mùa hè'); ?><span><?php echo e(Lang::locale() === "en" ? 'UP TO 35% FOR NEW CUSTOMERS':'Lên đến 35% cho khách hàng mới'); ?></span></div>
</div>
<!-- Product Lists
UP TO 35% FOR NEW CUSTOMERS
================================================== -->
<div class="container margin-bottom-25">
	<!-- Best Sellers -->
	<div class="one-third column">
		<!-- Headline -->
		<h3 class="headline"><?php echo e(Lang::locale() === "en" ? 'Product Available':'Sản phẩm có sẵn'); ?> </h3>
		<span class="line margin-bottom-0"></span>
		<div class="clearfix"></div>
		<ul class="product-list">
			<?php $__currentLoopData = $pr_quantity; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $pr): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
			<li><a href="<?php echo e(url('chi-tiet-san-pham',[$pr->product_id,$pr->alias])); ?>">
				<img src="<?php echo e(asset('resources/upload/product_image/'.$pr->image)); ?>" alt="" style="width: 95px;height: 80px" />
				<div class="product-list-desc"><?php echo e($pr->name); ?><i><?php echo e(number_format($pr->price,0,",",".")); ?></i></div>
			</a></li>
			<li><div class="clearfix"></div></li>
			<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
		</ul>
	</div>
	<!-- Weekly Sales -->
	<div class="one-third column">
		<!-- Headline -->
		<h3 class="headline"><?php echo e(Lang::locale() === "en" ? 'Most viewed products':'Sản phẩm xem nhiều nhất '); ?>

		</h3>
		<span class="line margin-bottom-0"></span>
		<div class="clearfix"></div>
		<ul class="product-list discount">
			<?php $__currentLoopData = $pr_view; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $view): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
			<li><a href="<?php echo e(url('chi-tiet-san-pham',[$view->product_id,$view->alias])); ?>">
				<img src="<?php echo e(asset('resources/upload/product_image/'.$view->image)); ?>" alt="" style="width: 95px;height: 80px;" />
				<div class="product-list-desc"><?php echo e($view->name); ?><i><b><?php echo e(number_format($view->price,0,",",".")); ?></b></i></div>
			</a></li>
			<li><div class="clearfix"></div></li>
			<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
		</ul>
	</div>
</div>
<div class="clearfix"></div>
<!-- Latest Articles
================================================== -->
<div class="container" >
	<!-- Headline -->
	<div class="sixteen columns" >
		<h3 class="headline"><?php echo e(Lang::locale() === "en" ? 'LATEST ARTICLES':'Các bài viết mới nhất'); ?></h3>
		<span class="line margin-bottom-30"></span>
	</div>
	<?php $news = DB::table('news')->paginate(4); ?>
	<?php $__currentLoopData = $news; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $n): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
	<!-- Post #1 -->
	<div class="four columns">
		
		<article class="from-the-blog">
			<figure class="from-the-blog-image">
				<a href="<?php echo e(url('tin-tuc/chi-tiet/'.$n->news_id )); ?>"><img src="<?php echo e(asset('resources/news/'.$n->image)); ?>" alt="" style="width: 220px;height: 180px;" /></a>
			</figure>
			<section class="from-the-blog-content">
				<a href="blog-single-post.html"><h5><?php echo e($n->tittle); ?></h5></a>
				<i><?php echo e($n->created_at); ?></i>
				<span style="text-transform: lowercase;"><?php echo e(str_limit($n->intro, $limit = 60, $end = ' ...')); ?></span>
				<a href="<?php echo e(url('tin-tuc/chi-tiet/'.$n->news_id )); ?>" class="button" style="width: 100%;text-align: center"><?php echo e(Lang::locale() === "en" ? 'READ MORE':'XEM BÀI VIẾT'); ?></a>
			</section>
		</article>
		
	</div>
	<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
</div>
<div class="margin-top-50"></div>
<?php $__env->stopSection(); ?>
<?php echo $__env->make('pages.master', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>