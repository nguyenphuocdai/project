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
			{{-- <div class="alert alert-{{Session::get('flash_level')}}" >
                            {{Session::get('flash_message')}}
            </div> --}}
			@if(Session::has('flash_level'))
			<div class="alert alert-{{Session::get('flash_level')}} success-custom">
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
					<h3 class="headline">Đăng nhập</h3><span class="line" style="margin-bottom:20px;"></span><div class="clearfix"></div>
					<form method="post" class="login" action="{{ route("post-login") }}">
					<input type="hidden" name="_token" value="{{csrf_token()}}">
					<p class="form-row form-row-wide">
						<label for="username">Tài khoản<span class="required">*</span></label>
						<input type="text" class="input-text" name="txtUsername" id="username" value="{{old('txtUsername')}}" required />
					</p>
					<p class="form-row form-row-wide">
						<label for="password">Mật khẩu: <span class="required">*</span></label>
						<input class="input-text" type="password" name="txtPassword" id="password" required/>
					</p>
					<p class="form-row">
						<input type="submit" class="button" value="Đăng nhập" />
						</p>						
					</form>
				</div>
			</div>
		</div>
		<div class="margin-top-50"></div>
		@endsection