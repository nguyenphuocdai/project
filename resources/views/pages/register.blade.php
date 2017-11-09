@extends('pages.master')
@section('content')
<section class="titlebar">
	<div class="container">
		<div class="sixteen columns">
			<h2>Tài khoản khách hàng</h2>
			
			<nav id="breadcrumbs">
				<ul>
					<li><a href="#">Trang chủ</a></li>
					<li>tài khoản</li>
				</ul>
			</nav>
		</div>
	</div>
</section>
<!-- Content
================================================== -->
<!-- Container -->
	@include('admin.danger.danger')
	<div class="six columns centered">
		<div class="col-lg-12 six columns centered">
			@if(Session::has('flash_message'))
			<div class="success-custom">
				{{Session::get('flash_message')}}
			</div>
			@endif
		</div>
	</div>
	<br>
<div class="container">
	<div class="six columns centered">
		<div class="tabs-container">
	
				<!-- Register -->
					<h3 class="headline">Đăng ký</h3><span class="line" style="margin-bottom:20px;"></span><div class="clearfix"></div>
					<form method="post" class="register" action="{{url('dang-ky-khach-hang')}}">
						<input type="hidden" name="_token" value="{{csrf_token()}}">
						<p class="form-row form-row-wide">
							<label for="txtName">Họ tên:<span class="required">*</span></label>
							<input type="text" class="input-text" name="txtName" id="txtName" value="{{old('txtName')}}" />
						</p>
						<p class="form-row form-row-wide">
							<label>Email: <span class="required">*</span></label>
							<input name="txtEmail" type="email" id="email" pattern="^[A-Za-z0-9](([_\.\-]?[a-zA-Z0-9]+)*)@([A-Za-z0-9]+)(([\.\-]?[a-zA-Z0-9]+)*)\.([A-Za-z]{2,})$" value="{{old('txtEmail')}}"/>
						</p>
						<p class="form-row form-row-wide">
							<label for="txtUsername">Tài khoản: <span class="required">*</span></label>
							<input type="text" class="input-text" name="txtUsername" id="txtUsername" value="{{old('txtUsername')}}" />
						</p>
						<p class="form-row form-row-wide">
							<label for="txtPassword">Mật khẩu: <span class="required">*</span></label>
							<input type="password" class="input-text" name="txtPassword" id="reg_password" />
						</p>
						<p class="form-row form-row-wide">
							<label >Nhập lại mật khẩu: <span class="required">*</span></label>
							<input type="password" class="input-text" name="txtRePassword"  />
						</p>
						
						
						<p class="form-row form-row-wide">
							<label for="txtAddress">Địa chỉ:<span class="required">*</span></label>
							<input type="text" class="input-text" name="txtAddress" id="txtAddress" value="" />
						</p>
						<p class="form-row form-row-wide">
							<label for="txtphone">Số điện thoại:<span class="required">*</span></label>
							<input type="text" class="input-text" name="txtPhone" id="txtPhone" value="" maxlength="12" />
						</p>
						{{-- <p class="form-row">
							<label for="rememberme" class="rememberme">
								<input name="rememberme" type="checkbox" id="rememberme" value="forever" />Đồng ý với các điều khoản của Trizzy-Shop</label>
							</p>	 --}}
							<p class="form-row">
								<input type="submit" class="button" name="register" value="Đăng ký" />
							</p>
							
						</form>
				</div>
			</div>
		</div>
		<div class="margin-top-50"></div>
		@endsection