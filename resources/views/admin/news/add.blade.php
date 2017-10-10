@extends('admin.master')
@section('content')
<form action="{{route('admin.news.add')}}" method="POST" enctype="multipart/form-data">
<div class="page-wrapper">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header">Tin Tức
                            <small>Đăng Bài</small>
                        </h1>
                    </div>
                    <!-- /.col-lg-12 -->
                    <div class="col-lg-7" style="padding-bottom:120px">
                         @include('admin.danger.danger')
                        <input type="hidden" name="_token" value="{{csrf_token()}}">
                            
                            <div class="form-group">
                                <i class="fa fa-times-circle" style="color: red"></i> <label>Tiêu Đề </label>
                                <input class="form-control" name="txtTittle" value="{{old('txtTittle')}}" placeholder="Nhập tên tiêu đề" />
                            </div>
                            <div class="form-group">
                            <i class="fa fa-times-circle" style="color: red"></i>
                                 <label>Đoạn giới thiệu ngắn</label>
                                <textarea class="form-control" rows="3" value="{{old('txtIntro')}}" name="txtIntro"></textarea>
                            </div>
                            <div class="form-group">
                            <i class="fa fa-times-circle" style="color: red"></i>
                                <label>Nội Dung</label>
                                <textarea class="form-control" rows="3" value="{{old('txtContent')}}" name="txtContent"></textarea>
                                <script type="text/javascript">ckeditor("txtContent")</script>
                                
                            </div>
                            <div class="form-group">
                                <i class="fa fa-times-circle" style="color: red"></i> <label>Hình Ảnh</label>
                                <input  type="file" name="txtImage" value="{{old('txtImage')}}" />
                            </div>
                            
                            
                            <button type="submit" class="btn btn-primary">Đăng Bài</button>
                            <button type="reset" class="btn btn-warning">Làm Lại</button>
                        
                    </div>
                            
                    </div>
                <!-- /.row -->
            </div>
            <!-- /.container-fluid -->
        </div>
            </form>
@endsection