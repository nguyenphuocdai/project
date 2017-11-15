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
                        <h1 class="page-header">Sản phẩm
                            <small>Nhập hàng</small>
                        </h1>
                    </div>
                     <form action="" method="POST" name="fEditProduct"  enctype="multipart/form-data">
                    <!-- /.col-lg-12 -->
                    <div class="col-lg-7" style="padding-bottom:120px">
                    @include('admin.danger.danger')
                        <input type="hidden" name="_token" value="{{csrf_token()}}"> 
                            <div class="form-group">
                                <label>Tên sản phẩm</label>
                                 <input class="form-control" value="{{ $prod->name }}" disabled="disabled" />
                            </div>
                            <div class="form-group">
                                <label>Giá hiện tại</label>
                                <input class="form-control" placeholder="" value="{{old('txtPrice',isset($product)?$product['price'] : null)}}" disabled="disabled" />
                            </div>
                            <div class="form-group">
                                <label>Giá bán</label>
                                <input class="form-control" name="txtPrice" placeholder="<?php if($prod->price == null){echo "Hàng mới về chưa nhập giá";}?>" value="{{old('txtPrice',isset($product)?$product['price'] : null)}}" />
                            </div>
                            <div class="form-group">
                                <label>Số lượng hiện tại</label>
                                <input class="form-control" name="" placeholder="<?php if($prod->quantity == null){echo "Hàng mới về chưa nhập số lượng";}?>" value="{{old('txtQuantity',isset($product)?$product['quantity'] : null)}}"  disabled="disabled" />
                            </div>
                            <div class="form-group">
                                <label>Số lượng nhập thêm</label>
                                <input class="form-control" name="txtQuantity" placeholder="Nhập số lượng" value="" />
                            </div>
                            
                            <button type="submit" class="btn btn-primary">Nhập hàng</button>
                            <button type="reset" class="btn btn-warning">Làm Lại</button>
                            <a href="{{URL::route('admin.products.list')}}" class="btn btn-danger" style="float: right">Quay lại</a>
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
