@extends('admin.master')
@section('content')
<style>label{
margin-left: 20px;
}
#datepicker{
width:180px;
margin: 0 20px 20px 20px;
}
#datepicker > span:hover{
cursor: pointer;
}</style>
<div class="page-wrapper">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">Sản phẩm bán chạy
                <!-- <small>Chọn </small> -->
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
            <!-- ss -->
        </div>
    </div>
    <!-- chọn ngày -->
    <form method="post" action="">
        <input type="hidden" name="_token" value="{{csrf_token()}}">
        <div class="well" style="display: inline-flex;">
            <div id="datetimepicker1" class="input-append date" style="margin-right: 30px;">
                Từ ngày:&nbsp;&nbsp; <input data-format="yyyy/MM/dd hh:mm:ss" value="{{old('txtStartDate',isset($sd)?$sd: null)}}" type="text" name="txtStartDate"></input>
                <i data-time-icon="icon-time"  data-date-icon="icon-calendar" class="glyphicon glyphicon-calendar add-on">
                </i>
            </div>
            <div id="datetimepicker2" class="input-append date">
                Đến ngày:  <input data-format="yyyy/MM/dd hh:mm:ss" type="text" name="txtEndDate" value="{{old('txtEndDate',isset($ed)?$ed: null)}}"></input>
                <i data-time-icon="icon-time" data-date-icon="icon-calendar" class="glyphicon glyphicon-calendar add-on">
                </i>
            </div>
        </div>
        <div> <button type="submit" class="btn btn-primary col-md-2" style="margin-bottom: 20px;">Thống kê</button></div>
        
    </form>
    <!-- end chọn ngày -->
    <table class="table table-striped table-bordered table-hover" id="dataTables-example">
        <?php
        static $i=0;
        ?>
        <thead>
            <tr align="center">
                
                <th>STT</th>
                <th>Sản Phẩm</th>
                <th>Số Lượng Bán</th>
                <th>Đơn Giá Mua</th>
                <th>Đơn Giá Bán</th>
                
                <th>Tổng Tiền</th>
                <th>Lợi nhuận</th>
            </tr>
        </thead>
        <tbody>
            @foreach($tamp as $t)
            <tr class="even gradeC" align="center">
                
                <td width="10px"><?php echo ++$i; ?>
                </td>
                <td>
                    <?php echo DB::table('products')->where('product_id', $t->product_id)->first()->name; ?>
                </td>
                <td>
                    
                    {{$t->total}}  sản phẩm
                </td>
                
                <td><?php echo number_format(DB::table('products')->where('product_id', $t->product_id)->first()->price/1.2,'0',',','.')." đ"; ?></td>
                <td><?php echo number_format(DB::table('products')->where('product_id', $t->product_id)->first()->price,'0',',','.')." đ"; ?></td>
                <td>
                    <?php echo number_format(DB::table('products')->where('product_id', $t->product_id)->first()->price*$t->total,'0',',','.')." đ"; ?>
                </td>
                <td style="color: red"><?php $tamp = DB::table('products')->where('product_id', $t->product_id)->first();
                    $tump = $tamp->price*$t->total;
                    $temp = $tamp->price/1.2*$t->total;
                    $tomp = $tump - $temp;
                echo number_format($tomp,0,",",".")." đ"; ?></td>
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