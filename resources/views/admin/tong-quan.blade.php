@extends('admin.master')
@section('content')
<div class="container" style="width: 100%">
	<div class="row">
		<div class="col-lg-12">
			<h1 class="page-header">Tổng Quan</h1>
		</div>
		<!-- /.col-lg-12 -->
	</div>
	<div class="col-lg-3 col-md-6">
		<div class="panel panel-primary">
			<div class="panel-heading">
				<div class="row">
					<div class="col-xs-3">
						<i class="fa fa-comments fa-5x"></i>
					</div>
					<div class="col-xs-9 text-right">
						<div class="huge">{{ $cates }}</div>
						<div>Loại sản phẩm</div>
					</div>
				</div>
			</div>
			<a href="{{URL::route('admin.categories.list')}}">
				<div class="panel-footer">
					<span class="pull-left">Xem chi tiết</span>
					<span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
					<div class="clearfix"></div>
				</div>
			</a>
		</div>
	</div>
	<div class="col-lg-3 col-md-6">
		<div class="panel panel-green">
			<div class="panel-heading">
				<div class="row">
					<div class="col-xs-3">
						<i class="fa fa-tasks fa-5x"></i>
					</div>
					<div class="col-xs-9 text-right">
						<div class="huge">{{ $products }}</div>
						<div>Sản phẩm</div>
					</div>
				</div>
			</div>
			<a href="{{URL::route('admin.products.list')}}">
				<div class="panel-footer">
					<span class="pull-left">Xem chi tiết</span>
					<span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
					<div class="clearfix"></div>
				</div>
			</a>
		</div>
	</div>
	<div class="col-lg-3 col-md-6">
		<div class="panel panel-yellow">
			<div class="panel-heading">
				<div class="row">
					<div class="col-xs-3">
						<i class="fa fa-shopping-cart fa-5x"></i>
					</div>
					<div class="col-xs-9 text-right">
						<div class="huge">{{ $orders }}</div>
						<div>Đơn hàng mới</div>
					</div>
				</div>
			</div>
			<a href="{{URL::route('admin.orders.list')}}">
				<div class="panel-footer">
					<span class="pull-left">Xem chi tiết</span>
					<span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
					<div class="clearfix"></div>
				</div>
			</a>
		</div>
	</div>
	<div class="col-lg-3 col-md-6">
		<div class="panel panel-red">
			<div class="panel-heading">
				<div class="row">
					<div class="col-xs-3">
						<i class="fa fa-support fa-5x"></i>
					</div>
					<div class="col-xs-9 text-right">
						<div class="huge">{{ $users }}</div>
						<div>Thành viên quản lý</div>
					</div>
				</div>
			</div>
			<a href="{{URL::route('admin.users.list')}}">
				<div class="panel-footer">
					<span class="pull-left">Xem chi tiết</span>
					<span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
					<div class="clearfix"></div>
				</div>
			</a>
		</div>
	</div>
	<div class="col-lg-3 col-md-6">
		<div class="panel panel-info">
			<div class="panel-heading">
				<div class="row">
					<div class="col-xs-3">
						<i class="fa fa-shopping-cart fa-5x"></i>
					</div>
					<div class="col-xs-9 text-right">
						<div class="huge">{{ $customer }}</div>
						<div>Khách hàng</div>
					</div>
				</div>
			</div>
			<a href="{{URL::route('admin.statistics.customer')}}">
				<div class="panel-footer">
					<span class="pull-left">Xem chi tiết</span>
					<span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
					<div class="clearfix"></div>
				</div>
			</a>
		</div>
	</div>
	<div class="col-lg-3 col-md-6">
		<div class="panel panel-success">
			<div class="panel-heading">
				<div class="row">
					<div class="col-xs-3">
						<i class="fa fa-shopping-cart fa-5x"></i>
					</div>
					<div class="col-xs-9 text-right">
						<div class="huge">{{ $news }}</div>
						<div>Bài viết</div>
					</div>
				</div>
			</div>
			<a href="{{URL::route('admin.news.list')}}">
				<div class="panel-footer">
					<span class="pull-left">Xem chi tiết</span>
					<span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
					<div class="clearfix"></div>
				</div>
			</a>
		</div>
	</div>
	<div class="col-lg-3 col-md-6">
		<div class="panel panel-warning">
			<div class="panel-heading">
				<div class="row">
					<div class="col-xs-3">
						<i class="fa fa-shopping-cart fa-5x"></i>
					</div>
					<div class="col-xs-9 text-right">
						<div class="huge">{{ $coupon }}</div>
						<div>Phiếu nhập</div>
					</div>
				</div>
			</div>
			<a href="{{URL::route('admin.coupon.list')}}">
				<div class="panel-footer">
					<span class="pull-left">Xem chi tiết</span>
					<span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
					<div class="clearfix"></div>
				</div>
			</a>
		</div>
	</div>
</div>
<div class="container" style="width:100%">
	<h1>Biểu đồ thống kê</h1>
	<div class="row">
		{!! $chart->render() !!}
	</div>
	<div class="row">
		{!! $chartCoupon->render() !!}
	</div>
	<div class="row">
		{!! $chartCoupons->render() !!}
	</div>
</div>
<div>
	@endsection