@extends('admin.master')
@section('content')
<form action="{{route('postnhaphang')}}" method="POST" enctype="multipart/form-data">
	<div class="page-wrapper">
		<div class="container-fluid">
			<div class="row">
				<div class="col-lg-12">
					<h1 class="page-header">Nhập hàng
					<small>Thêm mới phiếu nhập</small>
					</h1>
				</div>
				<div class="col-lg-12">
					@if(Session::has('flash_message'))
					<div class="alert alert-{{Session::get('flash_level')}}">
						{{Session::get('flash_message')}}
					</div>
					@endif
				</div>
				<!-- /.col-lg-12 -->
				<div class="col-lg-6">
					@include('admin.danger.danger')
					<input type="hidden" name="_token" value="{{csrf_token()}}">
					<h6>(Có dấu <i class="fa fa-times-circle" style="color: red"></i> là bắt buộc nhập)</h6><br>
					<div class="form-group">
						<i class="fa fa-times-circle" style="color: red"></i> <label>Tên phiếu nhập</label>
						<input class="form-control" name="name" value="{{old('name')}}" placeholder="Nhập tên phiếu" required/>
					</div>
					<div class="form-group">
						<i class="fa fa-times-circle" style="color: red"></i> <label>Nhân viên nhập</label>
						<input class="form-control" name="name" disabled="disabled" value="<?php echo Auth::user()->username;  ?>"/>
					</div>
					<div class="form-group">
						<i class="fa fa-times-circle" style="color: red"></i> <label>Nhà cung cấp</label>
						<?php $sup = DB::table('suppliers')->get();?>
						<select class="form-control" name="supplier_id">
							<option value="" disabled="disabled">Chọn nhà cung cấp</option>
							@foreach($sup as $pro)
							<option value="{{ $pro->id }}">{{ $pro->name }}</option>
							@endforeach
						</select>
					</div>
					<div class="form-group">
						<i class="fa fa-times-circle" style="color: red"></i> <label>Chọn ngày nhập</label>
						<input type="date" class="form-control" name="date" value="{{old('date')}}" required />
					</div>
				</div>
				<div class="col-md-12">
					<?php $product = DB::table('products')->get();?>
					<select class="form-control" name="selectFK" id="tsp">
						<option value="" disabled="disabled">Chọn sản phẩm</option>
						@foreach($product as $pro)
						<option value="{{ $pro->product_id }}">{{ $pro->name }}</option>
						@endforeach
					</select>
					<br>
					<p class="btn btn-primary" id="add">Thêm sản phẩm vào phiếu nhập</button>
						<table class="table table-hover" >
							<thead>
								<tr>
									<th>Số thứ tự</th>
									<th>Sản phẩm</th>
									<th>Số lượng</th>
									<th>Đơn giá</th>
									<th>Tổng tiền</th>
								</tr>
							</thead>
							<tbody id="curd_table">
								
							</tbody>
						</table>
					</div>
				</div>
				<!-- /.row -->
			</div>
			<!-- /.container-fluid -->
		</div>
		<div style="margin-left: 15px;margin-top: 50px;">
			<button type="submit" class="btn btn-primary">Lưu</button>
			<button type="reset" class="btn btn-warning">Hủy</button>
			<a href="{{URL::route('admin.coupon.list')}}" class="btn btn-danger" style="float: right">Quay lại</a>
			<div>
			</form>
			@endsection
			@section('script')
			<script type="text/javascript">
				$(document).ready(function(){
					var count = 0;
					$('#add').click(function(){
						var tsp = $('#tsp').find('option:selected').text();
						var idsp = $('#tsp').val();
						count = count + 1;
						var html_code = "<tr id= 'row" + count +"'>";
									html_code += "<td>"+count+"</td>";
									html_code += "<td>"+tsp+"<input type='hidden' name='id_sp[]' value='"+idsp+"'></td>";
									html_code += "<td><input type='number' name='sl_sp[]' required min='1'></td>";
									html_code += "<td><input type='number' name='gia_sp[]' required min='1'></td>";
									html_code += "<td></td>";
									html_code += "<td><button type='button' name='remove' data-row='row"+ count +"' class='btn btn-danger btn-xs remove'>-</button></td>";
						html_code += "</tr>";
						$('#curd_table').append(html_code);
					});
					$(document).on('click','.remove',function(){
						var delete_row = $(this).data("row");
						console.log(delete_row);
						$('#' + delete_row).remove();
					});
				});
			</script>
			@endsection