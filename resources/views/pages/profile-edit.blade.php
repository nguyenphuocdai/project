@extends('pages.master')
@section('content')
<div class="container" style="width: 100%">
  <div class="row">
    <div class="col-md-4 col-md-offset-4">
      <div class="panel panel-primary">
        <div class="panel-heading">CẬP NHẬT THÔNG TIN CÁ NHÂN</div>
        <form method="post" action="">
          <input type="hidden" name="_token" value="{{csrf_token()}}">
          <div class="panel-body">
            <label>Họ & Tên: </label><input type='text' class='form-control'  value="{{ $customer->name }}" name="name" >
            <label>Tài khoản :</label><input type='text' class='form-control'  value="{{ $customer->username }}" name="username">
            <label>Địa chỉ </label><input type='text' class='form-control' name="address"  value="{{ $customer->address }}" required>
            <label>Email :</label><input type='text' class='form-control' name="email"  value="{{ $customer->email }}" >
            <label>Số điện thoại:</label><input type='text' class='form-control' name="phone_number"  value="{{ $customer->phone_number }}" required pattern="^(?:0|\(?\+33\)?\s?|0033\s?)[1-79](?:[\.\-\s]?\d\d){4}$">
            <div align="right" style="margin-top: 25px">
              <a href="{{url('profile')}}" class="btn btn-danger" style="float: left">Quay lại</a>
              <button type="submit" class="btn btn-warning"><span class='glyphicon glyphicon-tasks'></span>&nbsp;&nbsp;HOÀN TẤT</button>
            </div>
          </div>
        </form>
      </div>
    </div>
  </div>
</div>
@endsection