@extends('admin.master')
@section('content')
<div class="page-wrapper">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">Nhà cung cấp
                <small>Danh Sách</small>
                </h1>
                <a href="{{route('admin.supplier.add')}}"><button class="btn btn-primary has-spinner" type="button">Thêm Mới</button></a>
                <hr>
            </div>
            <!-- /.col-lg-12 -->
            <div class="row">
                <div class="col-lg-12">
                    @if(Session::has('flash_message'))
                    <div class="alert alert-{{Session::get('flash_level')}}">
                        <i class="fa fa-circle-o-notch fa-spin fa-3x fa-fw" style="font-size: 16px !important"></i>
                        <span class="sr-only">Loading...</span> {{Session::get('flash_message')}}
                    </div>
                    @endif
                </div>
            </div>
            <form method="post" action="{{ route('delete') }}" id="frmDeleteAll">
                {{ csrf_field() }}
                <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>Tên nhà cung cấp</th>
                            <th>Số điện thoại</th>
                            <th>Đia chĩ</th>
                            <th>Công cụ</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach($data as $item)
                        
                        <tr class="odd gradeX">
                            <?php static $i=1;?>
                            <td><?php echo $i++;?></td>
                            <td>{{$item->name}}</td>
                            <td>{{ $item->phone }}</td>
                            <td>{{ $item->address }}</td>
                            <td class="center"><i class="fa fa-trash-o  fa-fw"></i><a onclick="return xacnhanxoa('Bạn chắc chắn muốn xóa ?')" href="{{ URL::route('admin.supplier.delete',$item->id) }}" style="color:red !important"> Xóa</a>
                            <br>
                            <i class="fa fa-pencil fa-fw"></i> <a href="{{ URL::route('admin.supplier.getEdit',$item->id) }}" style="color:blue !important">Cập Nhật</a>
                        </td>
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