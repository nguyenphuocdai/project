@extends('admin.master')
@section('content')
</style>
<div class="page-wrapper">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header">Đơn Hàng
                            <small>Đã Duyệt</small>
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
                                <th>Người Duyệt</th>
                                <th>Ngày Duyệt</th>
                                <th>Chi Tiết Đơn Hàng</th>
                                <th>Xuất File</th>
                               
                              
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
                                    $check=DB::table('customers')->where('customer_id',$item->customer_id)->first(); 
                                    echo $check->address;               
                                    ?>
                                 </td>
                                <td>
                                Đã Duyệt
                                </td>
                                <td><?php 
                                $tamp= DB::table('users')->where('user_id',$item->user_id)->first();
                                echo $tamp->username;
                                ?>
                                </td>

                                <td>
                                 <?php
                                    // echo \Carbon\Carbon::createFromTimeStamp(strtotime($item["datesigned"]))->diffForHumans()
                                   
                                        $dateTime = new DateTime($item->datesigned);
                                         echo $dateTime->format('d-m-Y H:i');
                                    ?>
                                </td>

                                <td class="center"><a href="{{route('detail',$item->order_id)}}">Click để xem</a></td>
                               <td><a href="{{route('admin.orders.getPDF',$item->order_id)}}"><i class="fa fa-file-pdf-o fa-2x" style=""></i></a></td>
                                
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