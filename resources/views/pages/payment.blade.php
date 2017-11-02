@extends('pages.master')
@section('content')
<div class="container" style="width: 100%;">
	<form class="form-horizontal" role="form" action="{{ url('payment') }}" method="post">
		{{ csrf_field() }}
		<fieldset>
			<legend>THANH TOÁN</legend>
			@if ($message = Session::get('success'))
			<div class="custom-alerts alert alert-success fade in">
				<button type="button" class="close" data-dismiss="alert" aria-hidden="true"></button>
				{!! $message !!}
			</div>
			<?php Session::forget('success');?>
			@endif
			@if ($message = Session::get('error'))
			<div class="custom-alerts alert alert-danger fade in">
				<button type="button" class="close" data-dismiss="alert" aria-hidden="true"></button>
				{!! $message !!}
			</div>
			<?php Session::forget('error');?>
			@endif
			<p style="text-align: center;font-style: italic">Vui lòng nhập thông tin thẻ của bạn và ấn "THANH TOÁN" để hoàn thành thanh toán.</p>
			<div class="form-group" style="margin-top: 30px;">
				<label class="col-sm-4 control-label" for="card_no">Số thẻ</label>
				<div class="col-sm-4">
					<input type="text" class="form-control in" name="card_no" value="{{ old('card_no') }}" id="card_no" placeholder="Nhập số thẻ" data-inputmask="'mask': '9999 9999 9999 9999'">
					@if ($errors->has('card_no'))
					<span class="help-block">
						<strong>{{ $errors->first('card_no') }}</strong>
					</span>
					@endif
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-4 control-label" for="exp_month">Tháng hết hạn</label>
				<div class="col-sm-4">
					<input type="text" id="exp_month" class="form-control" name="exp_month" value="{{ old('exp_year') }}" placeholder="Tháng hết hạn" maxlength="2">
					@if ($errors->has('exp_month'))
					<span class="help-block">
						<strong>{{ $errors->first('exp_month') }}</strong>
					</span>
					@endif
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-4 control-label" for="exp_year">Năm hết hạn</label>
				<div class="col-sm-4">
					<input type="text" id="exp_year" class="form-control" name="exp_year" value="{{ old('exp_year') }}" placeholder="Năm hết hạn" maxlength="4">
					@if ($errors->has('exp_year'))
					<span class="help-block">
						<strong>{{ $errors->first('exp_year') }}</strong>
					</span>
					@endif
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-4 control-label" for="cvv">Mã bảo mật</label>
				<div class="col-sm-4">
					<input type="text" class="form-control" name="cvv_no" id="cvv" value="{{ old('cvv_no') }}" placeholder="Mã bảo mật" maxlength="3">
					@if ($errors->has('cvv_no'))
					<span class="help-block">
						<strong>{{ $errors->first('cvv_no') }}</strong>
					</span>
					@endif
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-4 control-label" for="amount_order">Tổng tiền</label>
				<div class="col-sm-4">
					<input type="text" class="form-control" name="amount_order" value="{{ number_format($convertTotal,0,",",".") }}" id="amount_order" placeholder="Tổng tiền hóa đơn" disabled="disabled">
					
					@if ($errors->has('amount_order'))
					<span class="help-block">
						<strong>{{ $errors->first('amount_order') }}</strong>
					</span>
					@endif
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-4 control-label" for="amount_order"></label>
				<div class="col-sm-4">
					<p style="font-size: 12px;font-style: italic;">Lưu ý: 23.000 VNĐ = 1$</p>
				</div>
			</div>
			
			<div class="form-group" style="margin-top: 20px; margin-bottom: 50px">
				<div class="col-sm-offset-4 col-sm-9">
					<button type="submit" class="btn btn-success">THANH TOÁN</button>
				</div>
			</div>
		</fieldset>
	</form>
</div>
@endsection
@section('script')
<script type="text/javascript" src="{{url('public/pages/scripts/jquery.maskedinput.min.js')}}"></script>
<script type="text/javascript">
		$(".in").mask("9999-9999-9999-9999");
</script>
@stop