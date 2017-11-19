<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Hệ thống quản lý</title>
        <!-- Bootstrap Core CSS -->
        <link href="public/admin/bower_components/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
        <!-- MetisMenu CSS -->
        <link href="public/admin/bower_components/metisMenu/dist/metisMenu.min.css" rel="stylesheet">
        <!-- Custom CSS -->
        <link href="public/admin/dist/css/sb-admin-2.css" rel="stylesheet">
        <!-- Custom Fonts -->
        <link href="public/admin/bower_components/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    </head>
    <body>
        <div class="container">
            <div class="row" style="margin-top: 20px;">
                <div class="col-md-4 col-md-offset-4">
                    <div class="col-md-12">
                        @if(Session::has('flash_message'))
                        <div class="alert alert-{{Session::get('flash_level')}}">
                            {{Session::get('flash_message')}}
                        </div>
                        @endif
                    </div>
                    <div class="login-panel panel panel-default">
                        <div class="panel-heading">
                            <h3 class="panel-title"><i class="fa fa-user"></i> Đăng Nhập</h3>
                        </div>
                        <div class="panel-body">
                            <form role="form" action="" method="POST">
                                <input type="hidden" name="_token" value="{{csrf_token()}}">
                                <fieldset>
                                    <div class="form-group">
                                        <input class="form-control" placeholder="Tài khoản" name="txtUsername" type="text" autofocus>
                                    </div>
                                    <div class="form-group">
                                        <input class="form-control" placeholder="Mật khẩu" name="txtPassword" type="password" >
                                    </div>
                                    <div class="form-group">
                                        <a href="{{ url('/password/reset') }}" style="margin-left: 100px; font-weight:15px;color: #337ab7 !important;">Quên mật khẩu ?</a>
                                    </div>
                                    
                                    <button type="submit" class="btn btn-lg btn-primary btn-block">Đăng nhập</button>
                                    <div class="form-group" style="text-align: center;font-size: 12pt; margin-top: 10px">
                                        
                                    </div>
                                </fieldset>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- jQuery -->
        <script src="public/admin/bower_components/jquery/dist/jquery.min.js"></script>
        <!-- Bootstrap Core JavaScript -->
        <script src="public/admin/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
        <!-- Metis Menu Plugin JavaScript -->
        <script src="public/admin/bower_components/metisMenu/dist/metisMenu.min.js"></script>
        <!-- Custom Theme JavaScript -->
        <script src="public/admin/dist/js/sb-admin-2.js"></script>
        @include('flashy::message')
        <script type="text/javascript">
        $('.alert-danger').delay(3000).slideUp(300);
        </script>
    </body>
</html>