@extends('admin.master')
@section('content')
<div class="page-wrapper col-md-12">
	<div class="container-fluid">
		<div class="row">
			<div class="col-lg-12">
				<h2 class="page-header">Danh sách
				</h2>
				 <a href="{{route('admin.coupon.add')}}"><button class="btn btn-primary has-spinner" type="button">Thêm Mới</button></a>
				 <hr>
			</div>
			<div class="row">
				<div class="col-lg-12">
					@if(Session::has('flash_message'))
					<div class="alert alert-{{Session::get('flash_level')}}">
						<i class="fa fa-circle-o-notch fa-spin fa-3x fa-fw" style="font-size: 16px !important"></i>
                        <span class="sr-only">Loading...</span>{{Session::get('flash_message')}}
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
							<th>Tên phiếu</th>
							<th>Ngày nhập</th>
							
							<th>Nhân viên lập phiếu</th>
							<th>Công cụ</th>
						</tr>
					</thead>
					<tbody>
						@foreach($coupon as $cou)
						<tr class="odd gradeX">
							
							<td>{{ $cou->id }}</td>
							<td>
								{{ $cou->name }}
							</td>
							<td>{{ $cou->date }}</td>
							<td><?php echo Auth::user()->username;?></td>
							<td><a class="btn btn-info" href="{{ url('admin/coupon/coupondetail',$cou->id) }}">Xem chi tiết</a>
							<a class="btn btn-danger" onclick="return xacnhanxoa('Bạn chắc chắn muốn xóa ?')" href="{{  URL::route('admin.coupon.delete',$cou->id) }} ">Xóa</a>
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
@section('script')
@endsection