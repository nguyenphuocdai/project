<!DOCTYPE html>
<html lang="en">
<head>
    
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="author" content="Huynh Anh Quy">
    <title>Hệ thống quản lý</title>
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <base href="{{asset('')}}">
    <!-- Bootstrap Core CSS -->
    <link href="{{ url('public/admin/bower_components/bootstrap/dist/css/bootstrap.min.css') }}" rel="stylesheet">
    <link rel="shortcut icon" href="{{url('public/favicon.ico')}}">
    <!-- MetisMenu CSS -->
    <link href="{{ url('public/admin/bower_components/metisMenu/dist/metisMenu.min.css') }}" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="{{ url('public/admin/dist/css/sb-admin-2.css') }}" rel="stylesheet">
    <!-- Custom Fonts -->
    <link href="{{ url('public/admin/bower_components/font-awesome/css/font-awesome.min.css') }}" rel="stylesheet" type="text/css">
    @yield('css')
    <!-- DataTables CSS -->
    <link href="{{ url('public/admin/bower_components/datatables-plugins/integration/bootstrap/3/dataTables.bootstrap.css') }}" rel="stylesheet">
    <link href="{{ url('public/admin/bootstrap-datetimepicker.min.css') }}" rel="stylesheet">
    <!-- DataTables Responsive CSS -->
    <link href="{{ url('public/admin/bower_components/datatables-responsive/css/dataTables.responsive.css') }}" rel="stylesheet">
    <link href="{{ url('public/admin/datepicker.css') }}" rel="stylesheet">
     <link href="{{ url('public/admin/style.css') }}" rel="stylesheet">
    <!-- ckeditor và ckfinder -->
    
    <script src="{{ url('public/admin/js/ckeditor/ckeditor.js') }}"></script>
    <script src="{{ url('public/admin/js/ckfinder/ckfinder.js') }}"></script>
   
    @yield('script')
    <script type="text/javascript">
        var baseURL="{{url('/')}}"
    </script>
    <script src="{{ url('public/admin/js/func_ckfinder.js') }}"></script>



</head>

<body>

    <div id="wrapper" style="background-color: #0088cc">
        @include('admin.header')
        <div id="page-wrapper" style="height: 100% !important;min-height: 650px !important">
            <div class="container-fluid">
                <div class="row">
                   @yield('content')
                </div>
            </div>
        </div>

    </div>
    <script src="{{ url('public/admin/js/jquery-3.1.1.min.js') }}"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="{{ url('public/admin/bower_components/bootstrap/dist/js/bootstrap.min.js') }}"></script>

    <!-- Metis Menu Plugin JavaScript -->
    <script src="{{ url('public/admin/bower_components/metisMenu/dist/metisMenu.min.js') }}"></script>

    <!-- Custom Theme JavaScript -->
    <script src="{{ url('public/admin/dist/js/sb-admin-2.js') }}"></script>

    <!-- DataTables JavaScript -->
    <script src="{{ url('public/admin/bower_components/DataTables/media/js/jquery.dataTables.min.js') }}"></script>
    <script src="{{ url('public/admin/bower_components/datatables-plugins/integration/bootstrap/3/dataTables.bootstrap.min.js') }}"></script>
    <!-- my script -->
    <script src="{{ url('public/admin/js/myscript.js') }}">
    </script>
     <script src="{{ url('public/admin/js/bootstrap-datetimepicker.min.js') }}">
    </script>
    @yield('script')
    @include('flashy::message')
    
    <!-- Page-Level Demo Scripts - Tables - Use for reference -->
    
</body>

</html>
