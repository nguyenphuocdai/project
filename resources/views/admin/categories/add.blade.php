@extends('admin.master')
@section('content')

<div class="page-wrapper">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header">Loại Sản Phẩm
                            <small>Thêm</small>
                        </h1>
                    </div>
                    <!-- /.col-lg-12 -->
                    <div class="col-lg-7" style="padding-bottom:120px">
                                @if(count($errors)>0)
                                
                                    <div class="alert alert-danger">
                                        <ul>
                                            @foreach($errors->all() as $errors )
                                                <li>{{ $errors }}</li>
                                            @endforeach
                                            
                                        </ul>
                                    </div>
                                @endif
                        <form action="{{route('admin.categories.add')}}" method="POST">
                        <input type="hidden" name="_token" value="{{csrf_token()}}">
    
                            <div class="form-group">
                             <label>(Có dấu <i class="fa fa-times-circle" style="color: red"></i> là bắt buộc nhập)</label><br>
                               <i class="fa fa-times-circle" style="color: red"></i>  <label>Tên Loại Sản Phẩm</label>
                                <input class="form-control" name="txtName" placeholder="Nhập Tên Loại Sản Phẩm"/>
                            </div>
                            <div class="form-group">
                               <i class="fa fa-times-circle" style="color: red"></i>  <label>Từ Khóa</label>
                                <input class="form-control" name="txtKeywords" placeholder="Nhập Từ Khóa" />
                            </div>
                  {{--           <div class="form-group">
                              <i class="fa fa-times-circle" style="color: red"></i>   <label>Mô Tả</label>
                                <textarea class="form-control" name="txtDescribe" rows="3"></textarea>
                            </div> --}}
                            
                            <button type="submit" class="btn btn-primary">Thêm Mới</button>
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