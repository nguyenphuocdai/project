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
					<a href="images/blog-01-big.jpg" class="mfp-image" title="First Image Title"><img src="{{ asset('resources/news/'.$detail->image)}}" alt=""/>
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

</div>
<!-- Container / End -->
<div class="margin-top-40"></div>
@endsection