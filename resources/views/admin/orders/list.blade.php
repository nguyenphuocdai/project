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
                        <th>Ghi Chú</th>
                        <th>Thanh toán</th>
                        <th>Công cụ</th>
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
                            $check = DB::table('customers')->where('customer_id',$item->customer_id)->first();
                            echo $check->name;
                            ?>
                        </td>
                        <td>
                            <?php
                            $customer_receive = DB::table('orders')->where('order_id',$item->order_id)->first();
                            $customer = DB::table('customers')->where('customer_id',$customer_receive->customer_id)->first();
                            if($customer_receive->address_receive == ""){
                            echo $customer->address;
                            }else
                            echo $customer_receive->address_receive;
                            ?>
                        </td>
                        <td>
                            <form method= "post" action="{{url('admin/orders/updateStatus/'.$item->order_id)}}">
                                <input type="hidden" name="_token" value="{{csrf_token()}}">
                                <input type="checkbox" hidden="true" name="ckb"  class="qty" value="{{$item->order_id}}" />
                                <?php
                                $check=DB::table('orders_detail')->where('order_id',$item->order_id)->first();
                                $tamp = DB::table('products')->where('product_id',$check->product_id)->first();
                                if($check->note==0){
                                echo "<button type='submit' class='btn btn-primary'>Duyệt</button>";
                                }else{
                                echo "<p class='text-error'>Cần nhập hàng để giao cho khách</p>";
                                }?>
                            </form>
                        </td>
                        <td>
                            
                            {{$item->created_at->format('H:i d-m-Y ')}}
                        </td>
                        {{--  <td class="center btn btn-success" style="margin-top: 10px;"></td> --}}
                        <td>
                            
                            <?php
                            $check=DB::table('orders_detail')->where('order_id',$item->order_id)->get();
                            foreach($check as $chec){
                            $tamp = DB::table('products')->where('product_id',$chec->product_id)->first();
                            if($chec->note == 0){
                            echo "- Đã đủ số lượng <br>";
                            }
                            else{
                            echo "- Thiếu " .substr($chec->note,1,4)." ".$tamp->name."</br>";
                            }
                            }
                            ?>
                        </td>
                        <td><?php if($item->payment == 1){
                            echo "Đã thanh toán trực tuyến";
                            }
                            else {
                            echo "Thanh toán khi nhận hàng";
                            }
                        ?></td>
                        <td class="center ">
                            <a class="btn btn-warning" href="{{route('admin.orders.delete',$item->order_id)}}" onclick="return xacnhanxoa('Bạn có muốn xóa sản phẩm ?')"><span class="glyphicon glyphicon-trash"></span> Hủy đơn hàng </a><br>
                            <a class="btn btn-info" href="{{route('detail',$item->order_id)}}" style="color: #ffffff !important;margin-top: 5px;width: 131px;"><span class="glyphicon glyphicon-hand-right"></span> Xem chi tiết</a>
                            <br>
                            <form method="post" action="{{ url('admin/orders/noteOrder/'.$item->order_id)}}" style="margin-top: 5px;">
                                <input type="hidden" name="_token" value="{{csrf_token()}}">
                                <input type="checkbox" hidden="true" name="ckb"  class="qty" value="{{$item->order_id}}" />
                                <button type="submit" class="btn btn-primary" style="width: 131px;"> <span class="glyphicon glyphicon-shopping-cart"></span> Nhập hàng</button>
                            </form>
                        </td>
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