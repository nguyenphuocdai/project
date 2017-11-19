@extends('admin.master')
@section('content')
<div class="page-wrapper">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">Chi tiết đơn nhập hàng
                <small>Các sản phẩm trong đơn nhập hàng</small>
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
                        <th>Tên phiếu nhập</th>
                        <th>Tên sản phẩm</th>
                        <th>Số Lượng</th>
                        <th>Đơn Giá</th>
                        <th>Tổng tiền</th>
                        
                    </tr>
                </thead>
                <tbody>
                    <?php static $i=1;?>
                    @foreach($cp as $c)
                    <tr class="even gradeC" align="center">
                        <?php $namecp = DB::table('coupons')->where('id',$c->coupon_id)->first();
                        $namesp = DB::table('products')->where('product_id',$c->product_id)->first();
                        ?>
                        <td width="10px"><?php echo $i++ ?></td>
                        <td>
                            {{ $namecp->name }}
                        </td>
                        <td>{{ $namesp->name }}</td>
                        <td>
                            {{ $c->quantity }}
                        </td>
                        <td>{{ number_format($c->price,0,",",".") }}</td>
                        
                        <td class="center">{{ number_format($c->total,0,",",".") }}</td>
                    </tr>
                    @endforeach
                </tbody>
                
            </table>
            <div class="pagination pull-right">
                <!--phân trang-->
                <h3>Tổng tiền phiếu nhập:
                   <?php static $tong = 0;?>
                    @foreach($cp as $item)
                    <?php 
                     $tong = $tong + $item->total ;
                     ?>
                    @endforeach
                    <?php  echo number_format($tong,0,",",".")." Đồng";?>
                </h3>
                <a href="{{URL::route('admin.coupon.list')}}" class="btn btn-danger" style="float: right">Quay lại</a>
            </div>
            
        </div>
        <!-- /.row -->
    </div>
    <!-- /.container-fluid -->
</div>
@endsection