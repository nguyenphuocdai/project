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

<div class="twelve columns">
	<div class="extra-padding">

		<!-- Post -->
		<article class="post single">

			<figure class="post-img">
				<a href="images/blog-01-big.jpg" class="mfp-image" title="First Image Title"><img src="images/blog-01.jpg" alt=""/>
					<div class="hover-icon"></div>
				</a>
			</figure>

			<section class="date">
				<span class="day">31</span>
				<span class="month">May</span>
			</section>

			<section class="post-content">

				<header class="meta">
					<h2><a href="#">Amazon Raises Threshold for Free Shipping</a></h2>
					<span><i class="fa fa-user"></i>By <a href="#">admin</a></span>
					<span><i class="fa fa-tag"></i><a href="#">Travel</a>, <a href="#">Nature</a></span>
					<span><i class="fa fa-comment"></i>With <a href="#">4 Comments</a></span>
				</header>

			<p>Morbi placerat bibendum eget dolor pellentesque sed consectetur pulvinar pellentesque bibendum. Vestibulum varius hendrerit turpis quiseam cursus. Donec bibendum vestibulum gravida. Pellentesque condimentum orci vel leo laoreet accumsan interdum eros vel sapien tincidunt dignissim. Integer mauris lacus consequat.</p>
			<blockquote>Mauris aliquet ultricies ante, non faucibus ante gravida sed. Sed ultrices pellentesque purus, vulputate volutpat ipsum hendrerit sed neque sed sapien rutrum laoreet justo ultrices. In pellentesque lorem condimentum dui morbi pulvinar dui non quam pretium ut lacinia tortor.</blockquote>
			<p>In ut odio libero, at vulputate urna. Nulla tristique mi a massa convallis cursus. Nulla eu mi magna. Etiam suscipit commodo gravida. Cras suscipit, quam vitae adipiscing faucibus, risus nibh laoreet odio, a porttitor metus eros ut enim. Morbi augue velit, tempus mattis dignissim nec, porta sed risus. Donec eget magna eu lorem tristique pellentesque eget eu dui. Fusce lacinia tempor malesuada. Ut lacus sapien, placerat a ornare nec, elementum sit amet felis. Maecenas pretium lorem hendrerit eros sagittis fermentum.</p>
			<p class="margin-reset">Phasellus enim magna, varius et commodo ut, ultricies vitae velit. Ut nulla tellus, eleifend euismod pellentesque vel, sagittis vel justo. In libero urna, venenatis sit amet ornare non, suscipit nec risus. Sed consequat justo non mauris pretium at tempor justo sodales. Quisque tincidunt laoreet malesuada. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Integer vitae ante enim. Fusce sed elit est. Suspendisse sit amet mauris in quam pretium faucibus et aliquam odio. </p>

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
	<h3 class="headline">Comments <span class="comments-amount">(4)</span></h3><span class="line"></span><div class="clearfix"></div>
	
		<!-- Reviews -->
		<section class="comments">

			<ul>
				<li>
					<div class="avatar"><img src="http://www.gravatar.com/avatar/00000000000000000000000000000000?d=mm&amp;s=70" alt="" /></div>
					<div class="comment-content"><div class="arrow-comment"></div>
						<div class="comment-by"><strong>John Doe</strong><span class="date">May 28, 2014</span>
							<span class="reply"><a href="#"><i class="fa fa-reply"></i> Reply</a></span>
						</div>
						<p>Maecenas dignissim euismod nunc, in commodo est luctus eget. Proin in nunc laoreet justo volutpat blandit enim. Sem felis, ullamcorper vel aliquam non, varius eget just.</p>
					</div>

					<!-- Second Level -->
					<ul>
						<li>
							<div class="avatar"><img src="http://www.gravatar.com/avatar/00000000000000000000000000000000?d=mm&amp;s=70" alt="" /></div>
							<div class="comment-content"><div class="arrow-comment"></div>
								<div class="comment-by"><strong>Vasterad</strong><span class="date">May 28, 2014</span>
									<span class="reply"><a href="#"><i class="fa fa-reply"></i> Reply</a></span>
								</div>
								<p>Donec porttitor tortor sit amet tortor egestas, id suscipit magna cursus. Nam facilisis, mi vel elementum porttitor, sapien magna posuere lorem, sed consectetur.</p>
							</div>
						</li>
					</ul>

				</li>

				<li>
					<div class="avatar"><img src="http://www.gravatar.com/avatar/00000000000000000000000000000000?d=mm&amp;s=70" alt="" /></div>
					<div class="comment-content"><div class="arrow-comment"></div>
						<div class="comment-by"><strong>Kathy Brown</strong><span class="date">May 18, 2014</span>
							<span class="reply"><a href="#"><i class="fa fa-reply"></i> Reply</a></span>
						</div>
						<p>Morbi velit eros, sagittis in facilisis non, rhoncus et erat. Nam posuere tristique sem, eu ultricies tortor imperdiet vitae. Curabitur lacinia neque non metus</p>
					</div>
				</li>

				<li>
					<div class="avatar"><img src="http://www.gravatar.com/avatar/00000000000000000000000000000000?d=mm&amp;s=70" alt="" /> </div>
					<div class="comment-content"><div class="arrow-comment"></div>
						<div class="comment-by"><strong>John Doe</strong><span class="date">May 10, 2014</span>
							<span class="reply"><a href="#"><i class="fa fa-reply"></i> Reply</a></span>
						</div>
						<p>Commodo est luctus eget. Proin in nunc laoreet justo volutpat blandit enim. Sem felis, ullamcorper vel aliquam non, varius eget justo. Duis quis nunc tellus sollicitudin mauris.</p>
					</div>

				</li>
			 </ul>

		</section>
		<div class="clearfix"></div>
		<br>


<!-- Add Comment
================================================== -->

	<h3 class="headline">Add Comment</h3><span class="line margin-bottom-35"></span><div class="clearfix"></div>
	
	<!-- Add Comment Form -->
	<form id="add-comment" class="add-comment">
		<fieldset>

			<div>
				<label>Name:</label>
				<input type="text" value=""/>
			</div>
				
			<div>
				<label>Email: <span>*</span></label>
				<input type="text" value=""/>
			</div>

			<div>
				<label>Comment: <span>*</span></label>
				<textarea cols="40" rows="3"></textarea>
			</div>

		</fieldset>

		<a href="#" class="button color">Add Comment</a>
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


</div>
<!-- Container / End -->

<div class="margin-top-40"></div>

@endsection