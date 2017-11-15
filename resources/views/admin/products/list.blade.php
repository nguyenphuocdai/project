@extends('admin.master')
@section('content')
<div class="page-wrapper">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">Sản Phẩm
                <small>Danh sách</small>
                </h1>
            </div>
            <!-- /.col-lg-12 -->
            <div class="row">
                <div class="col-lg-12">
                    @if(Session::has('flash_message'))
                    <div class="alert alert-{{Session::get('flash_level')}}">
                        {{Session::get('flash_message')}}
                    </div>
                    @endif
                </div>
            </div>
            <a href="{{URL::route('admin.products.add')}}"><button type="button" style="margin-left: 15px;" class="btn btn-primary" >Thêm Mới</button></a>
            <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                <hr>
                <thead>
                    <tr align="center">
                        
                        <th>STT</th>
                        <th>Loại sản phẩm</th>
                        <th>Tên sản phẩm</th>
                        <th>Giá</th>
                        <th>Số lượng</th>
                        <th>Hình ảnh</th>
                        <th>Người Đăng</th>
                        <th>Công cụ</th>
                    </tr>
                </thead>
                <tbody>
                    <?php static $i=1;?>
                    @foreach($data as $item)
                    <tr class="even gradeC" align="center">
                        
                        <td width="10px"><?php echo $i++ ?>
                        </td>
                        <td>
                            <?php $cate = DB::table('categories')->where('category_id',$item["category_id"])->first(); ?>
                            @if(!empty($cate->name))
                            {!!$cate->name!!}
                            @endif
                        </td>
                        <td>{{$item->name}}</td>
                        <td>{{number_format($item->price,'0',',','.')}} VND</td>
                        <td width="15px"><?php if($item->quantity==0)
                            echo "Hết hàng"."<br>"."<a class='import' href='admin/products/nhap-hang/$item->product_id'>Cần nhập hàng</a>";
                            else
                            echo $item->quantity;
                            ?>
                        </td>
                        <td width="80px" >
                            <img width="80px" height="80px" class="" alt="{{$item->name}}" src="resources/upload/{{$item->image}}"/>
                        </td>
                        <td>
                            <?php
                            $user_up = DB::table('users')->where('user_id',$item->user_id)->first();
                            if($user_up->level == "1"){
                            echo "Quản lý";
                            }
                            else{
                            echo "Nhân viên";
                            }
                            ?>
                            
                        </td>
                    </td>
                    <td>
                        <i class="fa fa-database" aria-hidden="true"></i> <a class="" href="{{ URL::route('admin.import.product',$item->product_id)}}" style="color:orange !important">Nhập hàng</a>
                        <br>
                        <i class="fa fa-pencil fa-fw"></i> <a href="{{ URL::route('admin.products.edit',$item->product_id)}}" style="color:blue !important">Cập nhật</a>
                        <br>
                        <i class="fa fa-trash-o  fa-fw"></i><a href="{{ URL::route('admin.products.delete',$item['product_id']) }} " onclick="return xacnhanxoa('Bạn có muốn xóa sản phẩm ?')" style="color:red !important"> Xóa</a>
                        
                    </td>
                </tr>
                @endforeach
            </tbody>
        </table>
        
    </div>
    <!-- /.row -->
</div>
</div>
@endsection