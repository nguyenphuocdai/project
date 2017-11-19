@extends('admin.master')
@section('content')

<div class="page-wrapper">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header">Nhà cung cấp
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
                        <form action="{{route('admin.supplier.add')}}" method="POST">
                        <input type="hidden" name="_token" value="{{csrf_token()}}">
    
                            <div class="form-group">
                             <label>(Có dấu <i class="fa fa-times-circle" style="color: red"></i> là bắt buộc nhập)</label><br>
                               <i class="fa fa-times-circle" style="color: red"></i>  <label>Tên nhà cung cấp</label>
                                <input class="form-control" name="name" placeholder="Nhập tên nhà cung cấp" required />
                            </div>
                            
                            <div class="form-group">
                              <i class="fa fa-times-circle" style="color: red"></i><label>Số điện thoại</label>
                                 <input class="form-control" name="phone" placeholder="Nhập số điện thoại" required pattern="^(?:0|\(?\+33\)?\s?|0033\s?)[1-79](?:[\.\-\s]?\d\d){4}$" />
                            </div>
                            <div class="form-group">
                               <i class="fa fa-times-circle" style="color: red"></i>  <label>Địa chỉ</label>
                               <textarea class="form-control" name="address" rows="3" required></textarea>
                            </div>
                            <button type="submit" class="btn btn-primary">Thêm Mới</button>
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