

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
     
      <ul class="breadcrumb">
        <li>
          <a href="{{url('/')}}"><h4>Quay Lại Trang Chủ</h4></a>
          <span class="divider"></span>
        </li>
       
      </ul>
      
     
      <div class="row">  
        <div class="span9">
          @include('admin.danger.danger') 
              <div class="row">
                <div class="col-lg-12">
                    @if(Session::has('flash_message'))
                        <div class="alert alert-{{Session::get('flash_level')}}">
                            {{Session::get('flash_message')}}
                        </div>
                    @endif
                </div>
                </div>
      
           <form class="form" action="{{ route("post-login") }}" method="post">
          <section class="returncustomer">
            <h2 class="heading2"><i class="fa fa-user"></i> Đăng Nhập</h2>
            <div class="loginbox">
              <h4 class="heading4">Vui lòng nhập đủ thông tin !</h4>
             
                <input type="hidden" name="_token" value="{{csrf_token()}}">
                <fieldset>
                  <div class="control-group">
                    <label  class="control-label">Tài Khoản : <i class="fa fa-times-circle" style="color: red"></i></label>
                    <div class="controls">
                      <input type="text"  class="span3" name="txtUsername"  value="{{old('txtUsername')}}" style="height: 30px;">
                    </div>
                  </div>
                  <div class="control-group">
                    <label  class="control-label" >Mật Khẩu : <i class="fa fa-times-circle" style="color: red"></i></label>
                    <div class="controls">
                      <input type="password"  class="span3" name="txtPassword" style="height: 30px;">
                    </div>
                  </div>
                  <a class="" href="#">Quên Mật Khẩu ? </a>
                  <br>
                  <br>
                  <button class="btn btn-primary" type="submit" style="-webkit-border-radius:8px;">Đăng Nhập</button>
                  <a href="{{url('dang-ky-khach-hang')}}"  ><button style="-webkit-border-radius:8px;" type="button" class="btn btn-warning">Đăng Ký</button></a>
                </fieldset>
              </form>
            </div>
          </section>
        </div>
      </div>
    </div>
  </section>
</div>-->
<!-- jQuery -->
    <script src="public/admin/bower_components/jquery/dist/jquery.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="public/admin/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>

    <!-- Metis Menu Plugin JavaScript -->
    <script src="public/admin/bower_components/metisMenu/dist/metisMenu.min.js"></script>

    <!-- Custom Theme JavaScript -->
    <script src="public/admin/dist/js/sb-admin-2.js"></script>
    <script type="text/javascript" src="{{url('public/frontend/js/myscript.js')}}"></script>
</body>

</html>




