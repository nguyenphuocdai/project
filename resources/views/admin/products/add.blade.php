@extends('admin.master')
@section('content')
<form action="{{route('admin.products.add')}}" method="POST" enctype="multipart/form-data">
<div class="page-wrapper">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header">Sản Phẩm
                            <small>Thêm mới</small>
                        </h1>
                    </div>
                    <!-- /.col-lg-12 -->
                    <div class="col-lg-7" style="padding-bottom:120px">
                         @include('admin.danger.danger')
                        <input type="hidden" name="_token" value="{{csrf_token()}}">
                            <div class="form-group">
                                <h6>(Có dấu <i class="fa fa-times-circle" style="color: red"></i> là bắt buộc nhập)</h6><br>
                                <i class="fa fa-times-circle" style="color: red"></i> <label>Loại Sản Phẩm</label>
                                <select class="form-control" name="selectFK">
                                    <option value="">--Chọn Loại Sản Phẩm--</option>
                                   <?php cate_parent($cate,old('selectFK')); ?>
                                    
                                </select>
                            </div>
                            <div class="form-group">
                                <i class="fa fa-times-circle" style="color: red"></i> <label>Tên Sản Phẩm</label>
                                <input class="form-control" name="txtProductName" value="{{old('txtProductName')}}" placeholder="Nhập tên sản phẩm" />
                            </div>
                            <div class="form-group">
                                <i class="fa fa-times-circle" style="color: red"></i> <label>Giá bán</label>
                                <input class="form-control" name="txtPrice" value="{{old('txtPrice')}}" placeholder="Nhập giá" />
                            </div>
                            {{-- <div class="form-group">
                                <i class="fa fa-times-circle" style="color: red"></i> <label>Số Lượng</label>
                                <input class="form-control" name="txtQuantity" value="{{old('txtQuantity')}}" placeholder="Nhập số lượng" />
                            </div> --}}
                            <div class="form-group">
                                <i class="fa fa-times-circle" style="color: red"></i> <label>Xuất Xứ</label>
                                <input class="form-control" name="txtOrigin" value="{{old('txtOrigin')}}" placeholder="Nhập xuất xứ" />
                            </div>
                            <!--<div class="form-group">
                                <label>Giảm Giá (%)</label>
                                <input class="form-control" name="txtDiscount" value="{{old('txtDiscount')}}" placeholder="Nhập giảm giá"/>
                            </div>-->
                            <div class="form-group">
                                <i class="fa fa-times-circle" style="color: red"></i> <label>Hình Ảnh</label>
                                <input  type="file" name="txtImage" value="{{old('txtImage')}}" />
                            </div>
                            <div class="form-group">
                                <label>Từ Khóa</label>
                                <input class="form-control" name="txtKeywords" value="{{old('txtKeywords')}}" placeholder="Nhập từ khóa" />
                            </div>

                            <div class="form-group">
                                <label>Mô tả tổng quan</label>
                                <textarea class="form-control" rows="3" value="{{old('highlight')}}" name="highlight">{{old('highlight')}}</textarea>
                                <script type="text/javascript">ckeditor("highlight")</script>
                                
                            </div>
                            
                            <div class="form-group">
                                <label>Mô tả chi tiết</label>
                                <textarea class="form-control" rows="3" value="{{old('txtDescribe')}}" name="txtDescribe">{{old('txtDescribe')}}</textarea>
                                <script type="text/javascript">ckeditor("txtDescribe")</script>
                                
                            </div>
                            
                            <button type="submit" class="btn btn-primary">Thêm Mới</button>
                            <button type="reset" class="btn btn-warning">Làm Lại</button>
                        
                    </div>

                            <div class="col-md-5" style="margin-top: 55px;">
                             @for($i=1; $i<=4; $i++)
                                <div class="form-group">
                                    
                                    <label>Ảnh chi tiết {{$i}}</label>
                                    <input type="file" name="fProductDetail[]">
                                </div>
                             @endfor
                            </div>
                    </div>
                <!-- /.row -->
            </div>
            <!-- /.container-fluid -->
        </div>
            </form>
@endsection