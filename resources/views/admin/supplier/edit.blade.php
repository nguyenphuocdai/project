@extends('admin.master')
@section('content')
<div class="page-wrapper">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header">Loại Sản Phẩm
                            <small>Cập Nhật</small>
                        </h1>
                    </div>
                    <!-- /.col-lg-12 -->
                    <div class="col-lg-7" style="padding-bottom:120px">
                                 @include('admin.danger.danger')
                        <form action="" method="POST">
                        <input type="hidden" name="_token" value="{{csrf_token()}}">
                            <div class="form-group">
                                <label>Tên Loại Sản Phẩm</label>
                                <input class="form-control" name="name" value="{{old('name', isset($data) ? $data['name'] : null )}}" />
                            </div>
                            <div class="form-group">
                                <label>Số điện thoại</label>
                                <input class="form-control" pattern="^(?:0|\(?\+33\)?\s?|0033\s?)[1-79](?:[\.\-\s]?\d\d){4}$" name="phone" value="{{old('phone', isset($data) ? $data['phone'] : null )}}"/>
                            </div>
                            
                            <div class="form-group">
                                <label>Địa chỉ</label>
                                <textarea class="form-control" rows="3" name="address"  placeholder="Nhập mô tả">{{old('address', isset($data) ? $data['address'] : null )}}</textarea>
                            </div>
                            
                            <button type="submit" class="btn btn-primary">Cập Nhật</button>
                            <button type="reset" class="btn btn-warning">Làm Lại</button>
                            <a href="{{URL::route('admin.supplier.list')}}" class="btn btn-danger" style="float: right">Quay lại</a>
                        <form>
                    </div>
                </div>
                <!-- /.row -->
            </div>
            <!-- /.container-fluid -->
        </div>
@endsection
