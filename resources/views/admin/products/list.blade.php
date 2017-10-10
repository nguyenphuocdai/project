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
                                <th>Tên sản phẩm</th>
                                <th>Giá</th>
                                <th>Số lượng</th>
                                <th>Hình ảnh</th>
                                <th>Loại sản phẩm</th>
                                <th>Người Đăng</th>
                                <!--<th>Ngày đăng</th>-->
                                <th>Xóa</th>
                                <th>Cập nhật</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php static $i=1;?>
                            @foreach($data as $item)
                            <tr class="even gradeC" align="center">
                               
                                <td width="10px"><?php echo $i++ ?>
                                </td>
                                <td>{{$item->name}}</td>
                                <!-- số 0 là lấy số chữ số 0 sau cùng, chuyển ,->. -->
                                <td>{{number_format($item->price,'0',',','.')}} VND</td>
                                <td width="15px"><?php if($item->quantity==0)
                                echo "Hết hàng";
                                else 
                                echo $item->quantity;
                                 ?></td>
                                <td width="80px" >
                                <img width="80px" height="80px" class="" alt="{{$item->name}}" src="resources/upload/{{$item->image}}"/>
                                </td>
                                <td>
                        <?php $cate = DB::table('categories')->where('category_id',$item["category_id"])->first(); ?>
                                    @if(!empty($cate->name))
                                        {!!$cate->name!!}
                                    @endif
                                </td>
                                <td>
                                    <?php
                                    $user_up = DB::table('users')->where('user_id',$item->user_id)->first();
                                    ?>
                                    @if(!empty($user_up->username))
                                    {{$user_up->username}}
                                    @endif
                                </td>
                                <!--<td>
                                    <?php
                                    echo \Carbon\Carbon::createFromTimeStamp(strtotime($item["created_at"]))->diffForHumans()
                                    ?>
                                </td>-->
                                <td class="center"><i class="fa fa-trash-o  fa-fw"></i><a href="{{ URL::route('admin.products.delete',$item['product_id']) }} " onclick="return xacnhanxoa('Bạn có muốn xóa sản phẩm ?')"> Xóa</a></td>
                               
                                <td class="center"><i class="fa fa-pencil fa-fw"></i> <a href="{{ URL::route('admin.products.edit',$item->product_id)}}">Cập nhật</a></td>
                            </tr>
                            @endforeach
                        </tbody>
                    </table>
                    
                </div>
                <!-- /.row -->
            </div>
            <!-- /.container-fluid -->
        </div>
        
@endsection