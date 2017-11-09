@extends('pages.master')
@section('content')
<section class="titlebar">
	<div class="container">
		<div class="sixteen columns">
			<h2>Tin tức/ Bài viết</h2>
			
			<nav id="breadcrumbs">
				<ul>
					<li><a href="#">Trang chủ</a></li>
					<li><a href="#">Tin Tức</a></li>
					<li>Tổng quát</li>
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
			@foreach($news as $n)
			<article class="post">
				<figure class="post-img">
					<a href="{{url('tin-tuc/chi-tiet/'.$n->news_id)}}"><img src="{{ asset('resources/news/'.$n->image)}}" alt="" style="  width: 100%;
						height: 250px;"/>
						<div class="hover-icon"></div>
					</a>
				</figure>
				<section class="post-content">
					<header class="meta">
						<h2><a href="{{url('tin-tuc/chi-tiet/'.$n->news_id)}}">{{$n->tittle}}</a></h2>
						<span><i class="fa fa-user"></i><a href="#">Đăng bởi: <?php echo DB::table('users')->where('user_id',$n->user_id)->first()->username; ?></a></span>
						<span><i class="fa fa-comment"></i>Thời gian:  <a href="#">{{ $n->created_at }}</a></span>
					</header>
					<p>{{ $n->intro }}</p>
					<a href="{{url('tin-tuc/chi-tiet/'.$n->news_id)}}" class="button color">XEM CHI TIẾT</a>
				</section>
			</article>
			@endforeach
			<div >{{ $news->links() }}</div>
			<!-- Post / End -->
			<div class="clearfix"></div>
			<!-- Pagination -->
		</div>
	</div>
	<!-- Sidebar
	================================================== -->
	<div class="four columns">
		<!-- About -->
		<div class="widget margin-top-0">
			<h3 class="headline">Thông tin</h3><span class="line"></span><div class="clearfix"></div>
			<p>Đồ nội thất hay vật dụng/thiết bị nội thất đôi khi được gọi gọn là nội thất là thuật ngữ chỉ về những loại tài sản (thường là động sản) và các vật dụng khác được bố trí, trang trí bên trong một không gian nội thất như căn nhà, căn phòng hay cả tòa nhà nhằm mục đích hỗ trợ cho các hoạt động khác nhau của con người trong ...</p>
		</div>
		<!-- Tags -->
		<div class="widget margin-top-10">
			<h3 class="headline">Tags</h3><span class="line"></span><div class="clearfix"></div>
			
			<nav class="tags">
				<?php $writer = DB::table('users')->get(); ?>
				@foreach($writer as $wri)
					<a href="#">{{ $wri->username }}</a>
					@endforeach
			</nav>
		</div>
		
		<br>
		<br>
	</div>
</div>
@endsection