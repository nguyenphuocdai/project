@extends('frontend.master')
@section('content')
<div id="maincontainer">
  <section id="product">
    <div class="container">
    <!--  breadcrumb -->  
      <ul class="breadcrumb">
        <li>
          <a href="{{url('/')}}">Trang Chủ </a>
          <span class="divider">/</span>
        </li>
        <li class="">Thanh Toán </li>
      </ul>
    <form class="form" action="" method="post">
      <div class="row">        
        <!-- Account Login-->
        
           @include('admin.danger.danger')
                   <div class="col-lg-12">
                    @if(Session::has('flash_message'))
                        <div class="alert alert-{{Session::get('flash_level')}}">
                            {{Session::get('flash_message')}}
                        </div>
                    @endif
        <div class="span9">
          <div class="checkoutsteptitle">Bước 1 : Thông Tin Khách Hàng<a class="modify"></a>
        
          </div>
          <div class="checkoutstep">
            <div class="row">
                 
                <input type="hidden" name="_token" value="{{csrf_token()}}">
                <fieldset>
                  <div class="span4">
                    <div class="control-group">
                      <a href="{{url('dang-nhap-khach-hang')}}"><label class="control-label" ><?php if(Auth::guard('customers')->user())
                      echo "";
                      else 
                        echo "Vui lòng đăng nhập trước khi đặt hàng";
                       ?>
                      
                      

                      
                      </label></a>
                       <?php if(Auth::guard('customers')->user())
                        {
                          $tamp = Auth::guard('customers')->user();
                          echo "<h4>Tài khoản: ".$tamp->username."</h4>";
                          
                          echo "<h4>Họ và tên: ".$tamp->name."</h4>";
                           
                          echo "<h4>Số điện thoại: ".$tamp->phone_number."</h4>";

                          echo "<h4>Địa chỉ nhận hàng:</h4> "."<input  type='text' name='txtAddresreceive' />";
                        }?>
                      <!--<div class="controls">
                        <input type="text" class=""  value="{{old('txtUsername')}}" name="txtUsername" >
                      </div>-->
                    </div>
                    <div class="control-group">
                      <!--<label class="control-label"  >Mật khẩu: <span class="red">*</span></label>-->
                      <!--<div class="controls">
                        <input type="text" class=""  value="{{old('txtPassword')}}" name="txtPassword" >
                      </div>-->
                    </div>
                  </div>
                  <!--chưa cần dùng-->
                  <div class="span4">
                    <div class="control-group">
                      <a href="{{url('dang-ky-khach-hang')}}"><label class="control-label" >
                      <?php if(Auth::guard('customers')->user())
                      echo "";
                      else 
                      echo "Nếu chưa có tài khoản nhấn vào đây";
                       ?>
                     </label></a>
                      <!--<div class="controls">
                        <input type="text" class=""  value="">
                      </div>-->
                    </div>
                    <!--<div class="control-group">
                      <label class="control-label" >Company Id</label>
                      <div class="controls">
                        <input type="text" class=""  value="">
                      </div>
                    </div>
                    <div class="control-group">
                      <label class="control-label" >Address 1<span class="red">*</span></label>
                      <div class="controls">
                        <input type="text" class=""  value="">
                      </div>
                    </div>
                    <div class="control-group">
                      <label class="control-label" >Address 2</label>
                      <div class="controls">
                        <input type="text" class=""  value="">
                      </div>
                    </div>
                    <div class="control-group">
                      <label class="control-label" >City<span class="red">*</span></label>
                      <div class="controls">
                        <input type="text" class=""  value="">
                      </div>
                    </div>
                    <div class="control-group">
                      <label class="control-label" >Post Code<span class="red">*</span></label>
                      <div class="controls">
                        <input type="text" class=""  value="">
                      </div>
                    </div>
                    <div class="control-group">
                      <label class="control-label" >Country<span class="red">*</span></label>
                      <div class="controls">
                        <select >
                          <option>Please Select</option>
                          <option>2</option>
                          <option>3</option>
                          <option>4</option>
                          <option>5</option>
                        </select>
                      </div>
                    </div>
                    <div class="control-group">
                      <label class="control-label" >Region / State<span class="red">*</span></label>
                      <div class="controls">
                        <select >
                          <option>Please Select</option>
                          <option>2</option>
                          <option>3</option>
                          <option>4</option>
                          <option>5</option>
                        </select>
                      </div>
                    </div>-->
                  </div>
                </fieldset>
            </div>
            

            </div>
          <div class="checkoutsteptitle">Bước 2: Kiểm Tra Giỏ Hàng<a class="modify"></a>
          </div>
          <div class="checkoutstep">
            <div class="cart-info">
              <table class="table table-striped table-bordered">
                <tr>
                  <th class="image">Hình Ảnh</th>
                  <th class="name">Tên Sản Phẩm</th>
                
                  <th class="quantity">Số Lượng</th>
                  <th class="price">Đơn Giá</th>
                  <th class="total">Tổng Tiền</th>
                </tr>
                @foreach($content as $item_content)
                <tr>
                  <td class="image"><a href="#"><img title="product" alt="product" src="{{ asset('resources/upload/'.$item_content->options->img)}}" height="50" width="50"></a></td>
                  <td  class="name"><a href="#">{{$item_content->name}}</a></td>
                 
                  <td class="quantity"><input type="text" size="1" value="{{$item_content->qty}}" disabled="" name="quantity[40]" class="span1">
                    &nbsp;  
                  <td class="price">{{number_format($item_content->price,0,",",".")}}</td>
                  <td class="total">{{number_format($item_content->price*$item_content->qty,0,",",".")}}</td>
                </tr>
               @endforeach
              </table>
            </div>
            <div class="row">
              <div class="pull-right">
                <div class="span4 pull-right">
                  <table class="table table-striped table-bordered ">
                    <tbody>
                      <tr>
                        <td><span class="extra bold totalamout">Tổng Tiền :</span></td>
                        <td><span class="bold totalamout">{{$total}}</span></td>
                      </tr>
                    </tbody>
                  </table>
                </div>
              </div>
            </div>
          </div>
         <button class="btn btn-primary pull-right" type="submit" style="margin-left: 30px; -webkit-border-radius:5px;">Đặt Hàng</button>
        </div>
        </div>
    </form>
        <!-- Sidebar Start-->
        <div class="span3">
          <aside>
            <div class="sidewidt">
              <h2 class="heading2"><span> Các Bước Mua Hàng</span></h2>
              <ul class="nav nav-list categories">
                
                <li>
                  <a href="#">1. Kiểm Tra Đơn Hàng</a>
                </li>
                <li>
                  <a href="#">2. Đặt Hàng</a>
                </li>
                <li>
                  <a href="#">3. Nhận Hàng Trả Tiền</a>
                </li>
              </ul>
            </div>
          </aside>
        </div>
        <!-- Sidebar End-->
      </div>
    </div>
  </section>
</div>
@endsection