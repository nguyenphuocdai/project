


  <!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Lavender - Xu Kha</title>

    <!-- Bootstrap Core CSS -->
    <link href="public/admin/bower_components/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- MetisMenu CSS -->
    <link href="public/admin/bower_components/metisMenu/dist/metisMenu.min.css" rel="stylesheet">
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300italic,400italic,600,600italic' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Crete+Round' rel='stylesheet' type='text/css'>
    <link href="{{url('public/frontend/css/bootstrap.css')}}" rel="stylesheet">
    <link href="{{url('public/frontend/css/bootstrap-responsive.css')}}" rel="stylesheet">
    <link href="{{url('public/frontend/css/style.css')}}" rel="stylesheet">
    <link href="{{url('public/frontend/css/flexslider.css')}}" type="text/css" media="screen" rel="stylesheet"  />
    <link href="{{url('public/frontend/css/jquery.fancybox.css')}}" rel="stylesheet">
    <link href="{{url('public/frontend/css/cloud-zoom.css')}}" rel="stylesheet">
    <link href="{{url('public/frontend/css/bootstrap.min.css')}}">
    <link href="{{url('public/frontend/css/font-awesome/css/font-awesome.min.css')}}">
    <link href="{{url('public/frontend/css/font-awesome/css/font-awesome.css')}}">

    <!-- Custom CSS -->
    <link href="public/admin/dist/css/sb-admin-2.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="public/admin/bower_components/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

</head>

<body>
  <div id="maincontainer">
  <section id="product">
    <div class="container">
     <!--  breadcrumb --> 
      <ul class="breadcrumb">
        <li>
          <a href="{{url('/')}}">Quay Lại Trang Chủ</a>
      </ul>
      <div class="row">        
        <!-- Register Account-->
        <div class="span9">
          <!--<h1 class="heading1"><span class="maintext">Đăng Ký Tài Khoản</span><span class="subtext">Đăng ký với chúng tôi.</span></h1>-->
          <!--<form class="form-horizontal">-->
            <!--<h3 class="heading3">Thông Tin Cá Nhân</h3>-->
            
          @include('admin.danger.danger') 
              <div class="row">
                <div class="col-lg-12">
                    @if(Session::has('flash_message'))
                        <div class="alert alert-{{Session::get('flash_level')}}">
                            {{Session::get('flash_message')}}
                        </div>
                    @endif
                </div>
                
            <section class="returncustomer">
            <h2 class="heading2" ><i class="fa fa-user"></i> Đăng Ký Tài Khoản</h2>
            <div class="loginbox">
              <h5 class="heading4">(Vui lòng nhập đầy đủ thông tin !)</h5>
              
              <form class="form" method="post" action="{{url('dang-ky-khach-hang')}}">
                <input type="hidden" name="_token" value="{{csrf_token()}}">
                <fieldset>
                  <div class="control-group">
                  <div class="control-group">
                    <label  class="control-label">Tài Khoản: <i class="fa fa-times-circle" style="color: red"></i></label>
                    <div class="controls">
                      <input type="text"  class="span3" name="txtUsername" value="{{old('txtUsername')}}"style="height: 30px;" placeholder="Viết liền không dấu">
                    </div>
                  </div>
                    <label  class="control-label">Họ và Tên: <i class="fa fa-times-circle" style="color: red"></i></label>
                    <div class="controls">
                      <input type="text"  class="span3" name="txtName" value="{{old('txtName')}}" style="height: 30px;" placeholder="Nhập đẩy đủ họ tên">
                    </div>
                  </div>
                  
                  <div class="control-group">
                    <label  class="control-label">Mật Khẩu: <i class="fa fa-times-circle" style="color: red"></i></label>
                    <div class="controls">
                      <input type="password"  class="span3" name="txtPassword"style="height: 30px;" placeholder="">
                    </div>
                  </div> 
                  <div class="control-group">
                    <label  class="control-label">Nhập Lại Mật Khẩu: <i class="fa fa-times-circle" style="color: red"></i></label>
                    <div class="controls">
                      <input type="password"  class="span3" name="txtRePassword"style="height: 30px;" placeholder="">
                    </div>
                  </div>
                  <div class="control-group">
                    <label  class="control-label" >Email: <i class="fa fa-times-circle"style="color: red"></i></label>
                    <div class="controls">
                      <input type="text"  class="span3" name="txtEmail" value="{{old('txtEmail')}}"style="height: 30px;" placeholder="Nhập email">
                    </div>
                  </div>
                  <div class="control-group">
                    <label  class="control-label" >Địa Chỉ: <i class="fa fa-times-circle" style="color: red"></i></label>
                    <div class="controls">
                      <input type="text"  class="span3" name="txtAddress" value="{{old('txtAddress')}}"style="height: 30px;" placeholder="Nhập địa chỉ">
                    </div>
                  </div>
                   <div class="control-group">
                    <label  class="control-label" >Số Điện Thoại: <i class="fa fa-times-circle" style="color: red"></i></label>
                    <div class="controls">
                      <input type="text"  class="span3" name="txtPhone" value="{{old('txtPhone')}}"style="height: 30px;" placeholder="Nhập số điện thoại">
                    </div>
                  </div>
                  <button class="btn btn-primary" style="-webkit-border-radius:8px; margin-left: 50px;" type="submit">Đăng Ký</button>
                  <button class="btn btn-warning"  style="-webkit-border-radius:8px; margin-left: 5px;" type="reset">Làm Lại</button>
                 </fieldset>
              </form>
            </div>
          </section>
          <div class="clearfix"></div>
          <br>
        </div>
      </div>
    </div>
  </section>
</div>
</div>-->
<!-- jQuery -->
    <script src="public/admin/bower_components/jquery/dist/jquery.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="public/admin/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>

    <!-- Metis Menu Plugin JavaScript -->
    <script src="public/admin/bower_components/metisMenu/dist/metisMenu.min.js"></script>

    <!-- Custom Theme JavaScript -->
    <script src="public/admin/dist/js/sb-admin-2.js"></script>

</body>

</html>




