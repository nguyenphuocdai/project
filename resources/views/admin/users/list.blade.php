@extends('admin.master')
@section('content')
<div class="page-wrapper">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header">Thành viên
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
                    <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                        <thead>
                            <tr align="center">
                             
                                <th>STT</th>
                                <th>Tài khoản</th>
                                <th>Cấp bậc</th>
                                <th>Email</th>
                                <th>Xóa</th>
                                <th>Cập nhật</th>
                               
                            </tr>
                        </thead>
                        <tbody>
                        <?php static $i=1;?>
                            @foreach($user as $item)
                            <tr class="odd gradeX" align="center">
                                
                                <td width="10px"><?php echo $i++ ?></td>
                                <td>{{$item->username}}</td>
                                <td>
                                @if($item->level == 1)
                                {{"Admin"}}
                                @else
                                {{"Thường"}}
                                @endif
                                </td>
                                <td>{{$item->email}}</td>
                                <td class="center"><i class="fa fa-times-circle-o  fa-fw"></i><a href="{{ URL::route('admin.users.delete',$item['user_id'])}} " onclick="return xacnhanxoa('Bạn có muốn xóa thành viên ?')"> Xóa</a></td>
                                 <td class="center"><i class="fa fa-info-circle fa-fw"></i> <a href="{{ URL::route('admin.users.edit',$item->user_id)}}">Cập nhật</a></td>
                                
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