@extends('admin.master')
@section('content')
<div class="page-wrapper">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">Đơn Hàng
                <small>Chờ Duyệt</small>
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
                
                <thead>
                    <tr align="center">
                        
                        <th>STT</th>
                        <th>Tên Khách Hàng</th>
                        <th>Địa chỉ giao hàng</th>
                        <th>Trạng Thái</th>
                        <th>Ngày Đặt Hàng</th>
                        <th>Chi Tiết Đơn Hàng</th>
                        <th>Ghi Chú</th>
                        <th>Xóa</th>
                    </tr>
                </thead>
                <tbody>
                    <?php static $i=1;?>
                    @foreach($order as $item)
                    <tr class="even gradeC" align="center">
                        
                        <td width="10px"><?php echo $i++ ?>
                        </td>
                        <td>
                            <?php
                            $check=DB::table('customers')->where('customer_id',$item->customer_id)->first();
                            echo $check->name;
                            ?>
                        </td>
                        <td>
                            <?php
                            $check=DB::table('orders')->where('order_id',$item->order_id)->first();
                            echo $check->address_receive;
                            ?>
                        </td>
                        <td>
                            <!--<form method= "post" action="">
                                <input type="hidden" name="_token" value="{{csrf_token()}}">
                                <select>
                                    <option value="">Đã Nhận</option>
                                    <option value="{{$item->order_id}}">Đã Giao</option>
                                </select>
                                <button type="submit">Duyệt</button>
                            </form>-->
                            <form method= "post" action="{{url('admin/orders/updateStatus/'.$item->order_id)}}">
                                <input type="hidden" name="_token" value="{{csrf_token()}}">
                                <input type="checkbox" hidden="true" name="ckb"  class="qty" value="{{$item->order_id}}" />
                                <button type="submit" class="btn btn-primary">Duyệt</button>
                            </form>
                        </td>
                        <td>
                            
                            {{$item->created_at->format('d-m-Y H:i')}}
                        </td>
                        <td class="center"><a href="{{route('detail',$item->order_id)}}">Click để xem </a></td>
                        <td>
                            
                        </td>
                        <td class="center"><a href="{{route('admin.orders.delete',$item->order_id)}}" onclick="return xacnhanxoa('Bạn có muốn xóa sản phẩm ?')"><i class="btn btn-warning fa fa-trash"> Xóa</i> </a></td>
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