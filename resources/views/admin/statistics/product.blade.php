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
                    <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                    <hr>
                        <thead>
                            <tr align="center">
                                
                                <th>STT</th>
                                
                                <th>Tên sản phẩm</th>
                                <th>Loại sản phẩm</th>
                                <th>Giá</th>
                                <th>Số lượng</th>
                                <th>Hình ảnh</th>
                                
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
                                <td>
                        <?php $cate = DB::table('categories')->where('category_id',$item["category_id"])->first(); ?>
                                    @if(!empty($cate->name))
                                        {!!$cate->name!!}
                                    @endif
                                </td>
                                <td>{{number_format($item->price,'0',',','.')}} VND</td>
                                <td width="15px"><?php if($item->quantity==0)
                                echo "Hết hàng"."<br>"."<a class='import' href='admin/products/nhap-hang/$item->product_id'>Cần nhập hàng</a>";
                                else 
                                echo $item->quantity;
                                 ?>
                                     {{-- <br><a href="{{ route('admin.import.product',$item->product_id) }}" style="color: red !important">Nhập hàng</a> --}}

                                 </td>
                                <td width="80px" >
                                <img width="80px" height="80px" class="" alt="{{$item->name}}" src="resources/upload/{{$item->image}}"/>
                                </td>
                                
                                <td class="center"><i class="fa fa-pencil fa-fw"></i> <a href="{{ url('admin/products/nhap-hang',$item->product_id)}}" style="color:blue !important">Nhập hàng</a></td>
                            </tr>
                            @endforeach
                        </tbody>
                    </table>
                    
                </div>
                <!-- /.row -->
            </div>
        </div>
        
@endsection