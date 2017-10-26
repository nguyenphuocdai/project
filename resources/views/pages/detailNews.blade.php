@extends('pages.master')
@section('content')
<section class="titlebar">
	<div class="container">
		<div class="sixteen columns">
			<h2>Chi tiết bài viết</h2>
			
			<nav id="breadcrumbs">
				<ul>
					<li><a href="#">Trang chủ</a></li>
					<li><a href="#">Bài viết</a></li>
					<li>Chi tiết bài viết</li>
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
		<div class="extra-padding">
			<!-- Post -->
			<article class="post single">
				<figure class="post-img">
					<a href="images/blog-01-big.jpg" class="mfp-image" title="First Image Title"><img src="images/blog-01.jpg" alt=""/>
						<div class="hover-icon"></div>
					</a>
				</figure>
				<section class="post-content">
					<header class="meta">
						<h2><a href="#">{{$detail->tittle}}</a></h2>
						<span><i class="fa fa-user"></i>By <a href="#">admin</a></span>
						<span><i class="fa fa-tag"></i><a href="#">Travel</a>, <a href="#">Nature</a></span>
						<span><i class="fa fa-comment"></i>With <a href="#">4 Comments</a></span>
					</header>
					<p><?php echo $detail->content; ?></p>
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
			</article>
			<!-- Post / End -->
			<!-- Comments
			================================================== -->
			<h3 class="headline">BÀI VIẾT KHÁC<span class="comments-amount"> (4)</span></h3><span class="line"></span><div class="clearfix"></div>
			
			<!-- Reviews -->
			<section class="comments">
				<ul>
					@foreach($news as $new)
					<li>
						<div class="avatar"><img src="{{ asset('resources/news/'.$new->image)}}" alt="" style="width: 95px;height: 80px;">
						</div>
						<div class="comment-content"><div class="arrow-comment"></div>
						<div class="comment-by"><strong><?php echo DB::table('users')->where('user_id',$new->user_id)->first()->username; ?></strong><span class="date">May 28, 2014</span>
						<span class="reply"><a href="{{url('tin-tuc/chi-tiet/'.$new->news_id)}}"><i class="fa fa-reply"></i> XEM BÀI VIẾT</a></span>
					</div>
					<p>{{ $new->tittle }}</p>
				</div>
			</li>
			@endforeach
		</ul>
	</section>
	<div class="clearfix"></div>
	<br>
	<!-- Add Comment
	================================================== -->
	{{--
	<h3 class="headline">THÊM BÌNH LUẬN</h3><span class="line margin-bottom-35"></span><div class="clearfix"></div>
	
	<!-- Add Comment Form -->
	<form id="add-comment" class="add-comment">
		<fieldset>
			<div>
				<label>LỜI NHẮN: <span>*</span></label>
				<textarea cols="40" rows="3"></textarea>
			</div>
		</fieldset>
		<a href="#" class="button color">GỬI BÌNH LUẬN</a>
		<div class="clearfix"></div>
	</form>
	
</div>
</div>
<!-- Sidebar
================================================== -->
<div class="four columns">
<!-- About -->
<div class="widget margin-top-0">
	<h3 class="headline">About</h3><span class="line"></span><div class="clearfix"></div>
	<p>Malesuada scelerisque dignissim massa lectus, ultricies diam consequat aliquam imperdiet egestas ultrices etiam.</p>
</div>


<!-- Categories -->
<div class="widget">
	<h3 class="headline">Categories</h3><span class="line"></span><div class="clearfix"></div>
	<nav class="categories">
		<ul>
			<li><a href="#">Fashion</a></li>
			<li><a href="#">Lifestyle</a></li>
			<li><a href="#">Entertainment</a></li>
			<li><a href="#">Technology</a></li>
			<li><a href="#">World</a></li>
		</ul>
	</nav>
</div>
<!-- Tabs -->
<div class="widget margin-top-40">
	<ul class="tabs-nav blog">
		<li class="active"><a href="#tab1">Popular</a></li>
		<li><a href="#tab2">Featured</a></li>
		<li><a href="#tab3">Recent</a></li>
	</ul>
	<!-- Tabs Content -->
	<div class="tabs-container">
		<div class="tab-content" id="tab1">
			
			<!-- Recent Posts -->
			<ul class="widget-tabs">
				
				<!-- Post #1 -->
				<li>
					<div class="widget-thumb">
						<a href="blog-single-post.html"><img src="images/blog-widget-01.png" alt="" /></a>
					</div>
					
					<div class="widget-text">
						<h4><a href="blog-single-post.html">How To Read The Symbols on Your Clothing Tags</a></h4>
						<span>16 May 2014</span>
					</div>
					<div class="clearfix"></div>
				</li>
				
				<!-- Post #2 -->
				<li>
					<div class="widget-thumb">
						<a href="blog-single-post.html"><img src="images/blog-widget-02.png" alt="" /></a>
					</div>
					
					<div class="widget-text">
						<h4><a href="blog-single-post.html">How to Choose Size - Does Your Shirt Fit Properly?</a></h4>
						<span>20 April 2014</span>
					</div>
					<div class="clearfix"></div>
				</li>
				
				<!-- Post #3 -->
				<li>
					<div class="widget-thumb">
						<a href="blog-single-post.html"><img src="images/blog-widget-03.png" alt="" /></a>
					</div>
					
					<div class="widget-text">
						<h4><a href="blog-single-post.html">Online Shopping Hit New Highs on Mobile Sales</a></h4>
						<span>10 May 2014</span>
					</div>
					<div class="clearfix"></div>
				</li>
			</ul>
			
		</div>
		<div class="tab-content" id="tab2">
			
			<!-- Featured Posts -->
			<ul class="widget-tabs">
				
				<!-- Post #1 -->
				<li>
					<div class="widget-thumb">
						<a href="blog-single-post.html"><img src="images/blog-widget-04.png" alt="" /></a>
					</div>
					
					<div class="widget-text">
						<h4><a href="blog-single-post.html">New Sugary Drink Rules Complicate Coffee Orders</a></h4>
						<span>19 April 2014</span>
					</div>
					<div class="clearfix"></div>
				</li>
				
				<!-- Post #2 -->
				<li>
					<div class="widget-thumb">
						<a href="blog-single-post.html"><img src="images/blog-widget-01.png" alt="" /></a>
					</div>
					
					<div class="widget-text">
						<h4><a href="blog-single-post.html">How To Download The Google Fonts Catalog</a></h4>
						<span>28 May 2014</span>
					</div>
					<div class="clearfix"></div>
				</li>
				
				<!-- Post #3 -->
				<li>
					<div class="widget-thumb">
						<a href="blog-single-post.html"><img src="images/blog-widget-05.png" alt="" /></a>
					</div>
					
					<div class="widget-text">
						<h4><a href="blog-single-post.html">Mobile Editing Tools For Smartphone Photos</a></h4>
						<span>03 May 2014</span>
					</div>
					<div class="clearfix"></div>
				</li>
			</ul>
		</div>
		<div class="tab-content" id="tab3">
			
			<!-- Recent Posts -->
			<ul class="widget-tabs">
				
				<!-- Post #1 -->
				<li>
					<div class="widget-thumb">
						<a href="blog-single-post.html"><img src="images/blog-widget-06.png" alt="" /></a>
					</div>
					
					<div class="widget-text">
						<h4><a href="blog-single-post.html">Amazon Raises Threshold for Free Shipping</a></h4>
						<span>31 May 2014</span>
					</div>
					<div class="clearfix"></div>
				</li>
				
				<!-- Post #2 -->
				<li>
					<div class="widget-thumb">
						<a href="blog-single-post.html"><img src="images/blog-widget-01.png" alt="" /></a>
					</div>
					
					<div class="widget-text">
						<h4><a href="blog-single-post.html">How To Read The Symbols on Your Clothing Tags</a></h4>
						<span>16 May 2014</span>
					</div>
					<div class="clearfix"></div>
				</li>
				
				<!-- Post #3 -->
				<li>
					<div class="widget-thumb">
						<a href="blog-single-post.html"><img src="images/blog-widget-03.png" alt="" /></a>
					</div>
					
					<div class="widget-text">
						<h4><a href="blog-single-post.html">Online Shopping Hit New Highs on Mobile Sales</a></h4>
						<span>10 May 2014</span>
					</div>
					<div class="clearfix"></div>
				</li>
			</ul>
		</div>
		
	</div>
	
</div>



<!-- Tags -->
<div class="widget margin-top-10">
	<h3 class="headline">Tags</h3><span class="line"></span><div class="clearfix"></div>
	
	<nav class="tags">
		<a href="#">Motivation</a>
		<a href="#">Travel</a>
		<a href="#">Social</a>
		<a href="#">Nature</a>
		<a href="#">Weather</a>
		<a href="#">Fashion</a>
		<a href="#">Electronics</a>
		<a href="#">Fitness</a>
	</nav>
</div>
<br>
<br>
</div>
--}}
</div>
<!-- Container / End -->
<div class="margin-top-40"></div>
@endsection