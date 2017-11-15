@extends('admin.master')
@section('content')
<style type="text/css">

    .image_style{
        width: 100px;
    }
    .image_detail
    {
        width: 200px;
        margin-bottom: 20px;
        height: 160px;
    }
    .icon_del
    {
        position: relative;
        top: -80px;
        left: -20px;
    }
    #insert
    {
        margin-top: 20px;
    }

</style>
<div class="page-wrapper">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header">Sản Phẩm
                            <small>Cập Nhật</small>
                        </h1>
                    </div>
                     <form action="" method="POST" name="fEditProduct"  enctype="multipart/form-data">
                    <!-- /.col-lg-12 -->
                    <div class="col-lg-7" style="padding-bottom:120px">
                    @include('admin.danger.danger')
                        <input type="hidden" name="_token" value="{{csrf_token()}}"> 
                            <div class="form-group">
                                <label>Loại sản phẩm</label>
                                <select class="form-control" name="selectFK">
                                 <option value="">--Chọn Loại Sản Phẩm--</option>
                                   <?php cate_parent($cate,$product['category_id']); ?>
                                </select>
                            </div>
                            <div class="form-group">
                                <label>Tên sản phẩm</label>
                                <input class="form-control" name="txtProductName" placeholder="Nhập tên sản phẩm" value="{{old('txtProductName',isset($product)?$product['name'] : null)}}" />
                            </div>
                            <div class="form-group">
                                <label>Xuất xứ</label>
                                <input class="form-control" name="txtOrigin" placeholder="Nhập xuất xứ" value="{{old('txtOrigin',isset($product)?$product['origin'] : null)}}" />
                            </div>
                            <div class="form-group">
                                <label>Từ khóa</label>
                                <input class="form-control" name="txtKeywords" placeholder="Nhập từ khóa" value="{{old('txtKeywords',isset($product)?$product['keywords'] : null)}}" />
                            </div>

                            <div class="form-group">
                                <label>Hình ảnh hiện tại</label>
                                <img   src="{{asset('resources/upload/'.$product['image'])}}" class="image_style" >
                                <input type="hidden" name="img_current" value="{{$product['image']}}">
                            </div>
                            <div class="form-group">
                                <label>Hình ảnh</label>
                                <input type="file" name="fImage">
                            </div>
                            <div class="form-group">
                                <label>Mô tả tổng quan</label>
                                <textarea class="form-control" value="{{old('highlight',isset($product)?$product['highlight'] : null)}}" name="highlight" rows="3">{{$product['highlight']}}</textarea>
                                <script type="text/javascript">ckeditor('highlight')</script>
                            </div>
                            <div class="form-group">
                                <label>Mô tả chi tiết</label>
                                <textarea class="form-control" value="{{old('txtDescribe',isset($product)?$product['txtDescribe'] : null)}}" name="txtDescribe" rows="3">{{$product['describe']}}</textarea>
                                <script type="text/javascript">ckeditor('txtDescribe')</script>
                            </div>
                            
                            <button type="submit" class="btn btn-primary">Cập Nhật</button>
                            <button type="reset" class="btn btn-warning">Làm Lại</button>
                            <a href="{{URL::route('admin.products.list')}}" class="btn btn-danger" style="float: right">Quay lại</a>
                             </div>
                                <div class="col-md-1"></div>

                                <div class="col-md-4">
                                        @foreach($product_image as $key => $item)
                                        <div class="form-group" id="del">
                                            <img src="{{ asset('resources/upload/product_image/'.$item['image']) }}" id="del" class="image_detail">

                                              <a href="javascript:void(0)" id="del_image" data-id="{{$item->image_id}}" data-url="{{route('deleteImageProduct')}}" type="button" class="btn btn-danger btn-circle icon_del"><i class="fa fa-times"></i></a>
                                            <input type="file" name="fEditDetail[]">
                                        </div>
                                        @endforeach
                                            <button type="button" class="btn btn-primary"  id="addImages">Thêm ảnh</button>
                                        <div id="insert">
                                        </div>
                                        
                                </div>
                            </div>
                     
                    </div>
                       </form>
                </div>
                <!-- /.row -->
            </div>
            <!-- /.container-fluid -->
        </div>
        
@endsection
