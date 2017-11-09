@extends('admin.master')
@section('content')
<div class="page-wrapper">

            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header">Khách hàng
                            <small>Danh Sách</small>
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
                <form method="post" action="" id="frmDeleteAll">
                    {{ csrf_field() }}
                    <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                        <thead>
                            <tr>
                                <th>Số thứ tự</th>
                                <th>Tên khách hàng</th>
                                <th>Địa chỉ</th>
                                <th>Số điện thoại</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach($data as $item)
                            <?php static $i=1;?>
                            <tr class="odd gradeX">
                               <td><?php echo $i++;?></td>
                                <td>{{$item->name}}</td>
                                 <td>{{$item->address}}</td>
                                  <td>{{$item->phone_number}}</td>
                            </tr>
                            @endforeach
                        </tbody>
                    </table>
                    </form>
                </div>
                <!-- /.row -->
            </div>
            <!-- /.container-fluid -->
        </div>
@endsection