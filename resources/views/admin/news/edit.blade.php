@extends('admin.master')
@section('content')
<form action="" method="POST" enctype="multipart/form-data">
<div class="page-wrapper">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header">Tin Tức
                            <small>Chỉnh sửa bài viết</small>
                        </h1>
                    </div>
                    <!-- /.col-lg-12 -->
                    <div class="col-lg-7" style="padding-bottom:120px">
                         @include('admin.danger.danger')
                        <input type="hidden" name="_token" value="{{csrf_token()}}">
                            
                            <div class="form-group">
                                <i class="fa fa-times-circle" style="color: red"></i> <label>Tiêu Đề </label>
                                <input class="form-control" name="txtTittle" value="{{$news->tittle}}" placeholder="Nhập tên tiêu đề" />
                            </div>
                            <div class="form-group">
                                 <label>Đoạn giới thiệu ngắn</label>
                                <textarea class="form-control" rows="3" value="{{old('txtIntro')}}" name="txtIntro">{{$news->intro}}</textarea>
                            </div>
                            <div class="form-group">
                                <label>Nội Dung</label>
                                <textarea class="form-control" rows="3" value="{{old('txtContent')}}" name="txtContent">{{$news->content}}</textarea>
                                <script type="text/javascript">ckeditor("txtContent")</script>
                                
                            </div>
                             <div class="form-group">
                                <label>Hình ảnh hiện tại</label>
                                <img width="80px" height="80px"  src="{{asset('resources/news/'.$news->image)}}" class="image_style" >
                                <input type="hidden" name="img_current" value="{{$news->image}}">
                            </div>
                            <div class="form-group">
                                <label>Cập nhật hình ảnh</label>
                                <input type="file" name="txtImage">
                            </div>
                            
                            
                            <button type="submit" class="btn btn-primary">Cập Nhật</button>
                            <button type="reset" class="btn btn-warning">Làm Lại</button>
                        
                    </div>
                            
                    </div>
                <!-- /.row -->
            </div>
            <!-- /.container-fluid -->
        </div>
            </form>
@endsection