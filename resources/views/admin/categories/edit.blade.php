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
                                <input class="form-control" name="txtCateName" value="{{old('txtCateName', isset($data) ? $data['name'] : null )}}" placeholder="Nhập tên loại sản phẩm" />
                            </div>
                            <div class="form-group">
                                <label>Từ Khóa</label>
                                <input class="form-control" name="txtKeywords" value="{{old('txtKeywords', isset($data) ? $data['keywords'] : null )}}" placeholder="Nhập từ khóa" />
                            </div>
                            
                            <button type="submit" class="btn btn-primary">Cập Nhật</button>
                            <button type="reset" class="btn btn-warning">Làm Lại</button>
                            <a href="{{URL::route('admin.categories.list')}}" class="btn btn-danger" style="float: right">Quay lại</a>
                        <form>
                    </div>
                </div>
                <!-- /.row -->
            </div>
            <!-- /.container-fluid -->
        </div>
@endsection
