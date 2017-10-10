@extends('admin.master')
@section('content')
<div class="page-wrapper">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header">Tin Tức
                            <small>bài đã đăng</small>
                        </h1>
                        <a href="{{route('admin.news.add')}}"><button class="btn btn-primary" type="button">Đăng Bài</button></a>
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
                                
                                <th>STT</th>
                                <th>Tiêu Đề</th>
                                <th>Giới Thiệu Ngắn</th>
                                <th>Hình Ảnh</th>
                                <th>Người Đăng</th>
                                <th>Xóa</th>
                                <th>Cập Nhật</th>
                            </tr>
                        </thead>
                        <tbody>
                        <?php static $i = 0; ?>
                            @foreach($news as $n)
                            <tr class="odd gradeX" align="center">
                                <td><?php echo ++$i; ?></td>
                                <td width="150px">{{$n->tittle}}</td>
                                <td width="350px">{{$n->intro}}</td>
                                 <td width="80px" >
                                <img width="80px" height="80px" class="image-responsive" alt="" src="resources/news/{{$n->image}}"/>
                                </td>
                                <td ><?php echo DB::table('users')->where('user_id',$n->user_id)->first()->username; ?></td>
                                <td class="center"><i class="fa fa-trash-o  fa-fw"></i><a onclick="return xacnhanxoa('Bạn chắc chắn muốn xóa ?')" href="{{route('admin.news.delete',$n->news_id)}}"> Xóa</a></td>
                                <td class="center"><i class="fa fa-pencil fa-fw"></i> <a href="{{route('admin.news.edit',$n->news_id)}}">Cập Nhật</a></td>
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