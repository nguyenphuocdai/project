@extends('admin.master')
@section('content')
<div class="page-wrapper">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header">Loại Sản Phẩm
                            <small>Danh Sách</small>
                        </h1>
                        <a href="{{route('admin.categories.add')}}"><button class="btn btn-primary" type="button">Thêm Mới</button></a>
                        <hr>
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
                                
                                <th>Tên</th>
                                <th>Xóa</th>
                                <th>Cập Nhật</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach($data as $item)
                            <tr class="odd gradeX" align="center">
                                <td>{{$item->name}}</td>
                                <td class="center"><i class="fa fa-trash-o  fa-fw"></i><a onclick="return xacnhanxoa('Bạn chắc chắn muốn xóa ?')" href="{{ URL::route('admin.categories.delete',$item['category_id']) }}"> Xóa</a></td>
                                <td class="center"><i class="fa fa-pencil fa-fw"></i> <a href="{{  URL::route('admin.categories.getEdit',$item['category_id']) }}">Cập Nhật</a></td>
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