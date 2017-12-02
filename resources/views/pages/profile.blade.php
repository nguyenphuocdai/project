@extends('pages.master')
@section('content')
<div class="container" style="width: 100%">
	<div class="row">
		<div class="col-sm-6 col-sm-offset-3">
			@if(Session::has('flash_message'))
			<div class="success-custom alert alert-success" style="background-color: #3acf87 !important;color: #ffffff !important">
				{{Session::get('flash_message')}}
			</div>
			@endif
		</div>
		<div class="col-xs-12 col-sm-12 col-md-6 col-lg-6 col-xs-offset-0 col-sm-offset-0 col-md-offset-3 col-lg-offset-3 toppad" >
			<div class="panel panel-info">
				<div class="panel-heading">
					<h3 class="panel-title">THÔNG TIN CÁ NHÂN</h3>
				</div>
				<div class="panel-body">
					<div class="row">
						<div class="col-md-3 col-lg-3 " align="center"> <img alt="User Pic" src="{{ url('public/pages/images/avatar.png') }}" class="img-circle img-responsive"> </div>
						<div class=" col-md-9 col-lg-9 ">
							<table class="table table-user-information">
								<tbody>
									<tr>
										<td>Họ & Tên:</td>
										<td><?php
												if(Auth::guard('customers')->check())
												{
												echo Lang::locale() == "en" ? Auth::guard('customers')->user()->name :Auth::guard('customers')->user()->name;
												}
										?></td>
									</tr>
									<tr>
										<td>Tài khoản:</td>
										<td><?php echo Auth::guard('customers')->user()->username;									?></td>
									</tr>
									<tr>
										<tr>
											<td>Địa chỉ</td>
											<td><?php echo Auth::guard('customers')->user()->address;?></td>
										</tr>
										<tr>
											<td>Email</td>
											<td><a href="mailto:info@support.com"><?php echo Auth::guard('customers')->user()->email;?></a></td>
										</tr>
										<td>Số điện thoại</td>
										<td><?php echo Auth::guard('customers')->user()->phone_number;?>
										</td>										
									</tr>
									
								</tbody>
							</table>
						</div>
					</div>
				</div>
				<div class="panel-footer">
					<a href="{{ url('history-order') }}" data-original-title="Broadcast Message" data-toggle="tooltip" type="button" class="btn btn-sm btn-primary"><i class="fa fa-history" style="color:#ffffff !important"></i></a>
					<span class="pull-right">
						<a href="{{ url('profile-edit',Auth::guard('customers')->user()->customer_id) }}" data-original-title="Edit this user" data-toggle="tooltip" type="button" class="btn btn-sm btn-warning"><i class="glyphicon glyphicon-edit"></i></a>
					</span>
				</div>
				
			</div>
		</div>
	</div>
</div>
@endsection