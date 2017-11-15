@extends('admin.master')
@section('content')
<div class="page-wrapper">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header">Chi Tiết Hóa Đơn
                            <small>Các sản phẩm khách hàng đặt</small>
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
                                <th>Số Lượng</th>
                                <th>Đơn Giá</th>
                                <th>Thành Tiền</th>
                               
                            </tr>
                        </thead>
                        <tbody>
                            <?php static $i=1;?>
                            @foreach($orders_detail as $item)
                            <tr class="even gradeC" align="center">
                                <td width="10px"><?php echo $i++ ?></td>
                                <td>
                                <?php 
                                     $name = DB::table('products')->where('product_id',$item->product_id)->first();
                                echo $name->name;
                                ?>
                                
                                 </td>
                               
                                <td>
                                 {{$item->quantity}}
                                </td>
                                <td>{{number_format($item->price,0,",",".")}}</td>

                                <td class="center">{{number_format($item->total,0,",",".")}}</td>
                               
                               
                            </tr>
                            @endforeach
                         
                        </tbody>
                       
                    </table>
                      <div class="pagination pull-right">
                      <!--phân trang-->
                    <h3>Tổng tiền hóa đơn:  
                    <?php static $tong =0;?>
                    @foreach($orders_detail as $item)
                    <?php 
                     $tong = $tong + $item->total ;
                     ?>
                    @endforeach
                    <?php  echo number_format($tong,0,",",".")." Đồng";?>
                    </h3>
                    <a href="{{URL::route('admin.orders.list')}}" class="btn btn-danger" style="float: right">Quay lại</a>
                  </div>

                    
                </div>
                <!-- /.row -->
            </div>
            <!-- /.container-fluid -->
        </div>
        
@endsection