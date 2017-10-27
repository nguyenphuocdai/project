<!DOCTYPE html>
<html lang="en">
<head>
    
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="author" content="Huynh Anh Quy">
    <title>Hệ thống quản lý</title>
    <meta name="csrf-token" content="<?php echo e(csrf_token()); ?>">
    <base href="<?php echo e(asset('')); ?>">
    <!-- Bootstrap Core CSS -->
    <link href="<?php echo e(url('public/admin/bower_components/bootstrap/dist/css/bootstrap.min.css')); ?>" rel="stylesheet">

    <!-- MetisMenu CSS -->
    <link href="<?php echo e(url('public/admin/bower_components/metisMenu/dist/metisMenu.min.css')); ?>" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="<?php echo e(url('public/admin/dist/css/sb-admin-2.css')); ?>" rel="stylesheet">

    
    <!-- Custom Fonts -->
    <link href="<?php echo e(url('public/admin/bower_components/font-awesome/css/font-awesome.min.css')); ?>" rel="stylesheet" type="text/css">

    <!-- DataTables CSS -->
    <link href="<?php echo e(url('public/admin/bower_components/datatables-plugins/integration/bootstrap/3/dataTables.bootstrap.css')); ?>" rel="stylesheet">
    <link href="<?php echo e(url('public/admin/bootstrap-datetimepicker.min.css')); ?>" rel="stylesheet">
    <!-- DataTables Responsive CSS -->
    <link href="<?php echo e(url('public/admin/bower_components/datatables-responsive/css/dataTables.responsive.css')); ?>" rel="stylesheet">
    <link href="<?php echo e(url('public/admin/datepicker.css')); ?>" rel="stylesheet">
    
    <!-- ckeditor và ckfinder -->
    
    <script src="<?php echo e(url('public/admin/js/ckeditor/ckeditor.js')); ?>"></script>
    <script src="<?php echo e(url('public/admin/js/ckfinder/ckfinder.js')); ?>"></script>
   

    <script type="text/javascript">
        var baseURL="<?php echo e(url('/')); ?>"
    </script>
    <script src="<?php echo e(url('public/admin/js/func_ckfinder.js')); ?>"></script>

</head>

<body>

    <div id="wrapper">

        <!-- Navigation -->
        <nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0;background: #EBE7E4;">
            <div class="navbar-header" >
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href=""><h4 style="font-weight: bold; margin-left: 35px; color: #37C0B0;">Hệ thống quản lý</h4></a>
            </div>
            <!-- /.navbar-header -->

            <ul class="nav navbar-top-links navbar-right" >
                <!-- /.dropdown -->
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="">
                        <i class="fa fa-cog"></i> Tài Khoản <i class="fa fa-caret-down"></i>
                    </a>
                    <ul class="dropdown-menu dropdown-user">
                        <li><a href="#"><i class="fa fa-user fa-fw"></i>Chào <?php echo Auth::user()->username;  ?> </a>
                        </li>
                        <li><a href="<?php echo e(route('admin.users.edit',Auth::user()->user_id)); ?>"><i class="fa fa-gear fa-fw"></i> Cập Nhật Thông Tin</a>
                        </li>
                        <li class="divider"></li>
                        <li><a href="<?php echo e(url('dangxuat')); ?>"><i class="fa fa-sign-out fa-fw"></i> Đăng Xuất</a>
                        </li>
                    </ul>
                    <!-- /.dropdown-user -->
                </li>
                <!-- /.dropdown -->
            </ul>
            <!-- /.navbar-top-links -->

            <div class="navbar-default sidebar" role="navigation" style="background: #EBE7E4;">
                <div class="sidebar-nav navbar-collapse" style="background: #EBE7E4;" >
                    
                    <ul class="nav" id="side-menu" style="background: #EBE7E4;">
                        <li class="sidebar-search">
                            <div class="input-group custom-search-form">
                                <input type="text" class="form-control" placeholder="Search...">
                                <span class="input-group-btn">
                                    <button class="btn btn-default" type="button">
                                        <i class="fa fa-search"></i>
                                    </button>
                                </span>
                            </div>
                            <!-- /input-group -->
                        </li>
                        <li>
                            <a href=""><i class="glyphicon glyphicon-calendar"></i>Tổng quan</a>
                        </li>
                        <li>
                            <a href=""><i class="glyphicon glyphicon-star"></i> Loại Sản Phẩm<span class="fa arrow "></span></a>
                            <ul class="nav nav-second-level">
                                 <li>
                                    <a href="<?php echo e(URL::route('admin.categories.add')); ?>">Thêm Mới</a>
                                </li>
                                <li>
                                    <a href="<?php echo e(URL::route('admin.categories.list')); ?>">Danh Sách </a>
                                </li>
                            </ul>
                            <!-- /.nav-second-level -->
                        </li>

                 
                        <li>
                            <a href=""><i class="fa fa-pagelines fa-fw"></i> Sản Phẩm<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="<?php echo e(URL::route('admin.products.add')); ?>">Thêm Mới</a>
                                </li>
                                <li>
                                    <a href="<?php echo e(URL::route('admin.products.list')); ?>">Danh Sách</a>
                                </li>
                                
                            </ul>
                            <!-- /.nav-second-level -->
                        </li>
                        <li>
                            <a href=""><i class="fa fa-pencil-square-o"></i> Đơn Hàng<?php echo " (".count(DB::table('orders')->where('status',0)->get()).")";?><span class="fa arrow "></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="<?php echo e(url::route('admin.orders.list')); ?>">Đơn Hàng Chờ Duyệt <?php echo " (".count(DB::table('orders')->where('status',0)->get()).")";?> </a>
                                </li>
                                <li>
                                    <a href="<?php echo e(url::route('admin.orders.listsigned')); ?>">Đơn Hàng Đã Duyệt</a>
                                </li>
                            </ul>
                            <!-- /.nav-second-level -->
                        </li>
                        <li>
                            <a href=""><i class="fa fa-area-chart"></i> Thống Kê<span class="fa arrow "></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="<?php echo e(route('admin.statistics.chooseday')); ?>">Doanh Số</a>
                                </li>
                               <!--  <li>
                                    <a href="<?php echo e(url::route('admin.orders.listsigned')); ?>">Đơn Hàng Đã Duyệt</a>
                                </li> -->
                            </ul>
                            <!-- /.nav-second-level -->
                        </li>
                        <li>
                            <a href=""><i class="fa fa-newspaper-o" aria-hidden="true"></i> Tin Tức<span class="fa arrow "></span></a>
                            <ul class="nav nav-second-level">
                                 <li>
                                    <a href="<?php echo e(route('admin.news.add')); ?>">Đăng Bài</a>
                                </li>
                                <li>
                                    <a href="<?php echo e(route('admin.news.list')); ?>">Danh Sách</a>
                                </li>
                            </ul>
                            <!-- /.nav-second-level -->
                        </li>
                        <li>
                            <a href=""><i class="fa fa-users fa-fw"></i>Thành Viên<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="<?php echo e(URL::route('admin.users.list')); ?>">Danh Sách</a>
                                </li>
                                <li>
                                    <a href="<?php echo e(URL::route('admin.users.add')); ?>">Thêm Mới</a>
                                </li>
                            </ul>
                            <!-- /.nav-second-level -->
                        </li>
                    </ul>

                </div>
                <!-- /.sidebar-collapse -->
            </div>
            <!-- /.navbar-static-side -->
        </nav>
        	<!-- flash messega -->
        	
        <!-- Page Content -->
      

        <div id="page-wrapper">
            <div class="container-fluid" style="margin-top: 5px">
                <div class="row">
                    <!-- /.col-lg-12 -->
                   <!-- chứa nội dung -->
                   <?php echo $__env->yieldContent('content'); ?>
                   <!-- end chứa nội dung -->
                </div>
                <!-- /.row -->
            </div>
            <!-- /.container-fluid -->
        </div>
        <!-- /#page-wrapper -->

    </div>
    <!-- /#wrapper -->
    <script src="<?php echo e(url('public/admin/js/jquery-3.1.1.min.js')); ?>"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="<?php echo e(url('public/admin/bower_components/bootstrap/dist/js/bootstrap.min.js')); ?>"></script>

    <!-- Metis Menu Plugin JavaScript -->
    <script src="<?php echo e(url('public/admin/bower_components/metisMenu/dist/metisMenu.min.js')); ?>"></script>

    <!-- Custom Theme JavaScript -->
    <script src="<?php echo e(url('public/admin/dist/js/sb-admin-2.js')); ?>"></script>

    <!-- DataTables JavaScript -->
    <script src="<?php echo e(url('public/admin/bower_components/DataTables/media/js/jquery.dataTables.min.js')); ?>"></script>
    <script src="<?php echo e(url('public/admin/bower_components/datatables-plugins/integration/bootstrap/3/dataTables.bootstrap.min.js')); ?>"></script>
    <!-- my script -->
    <script src="<?php echo e(url('public/admin/js/myscript.js')); ?>">
    </script>
     <script src="<?php echo e(url('public/admin/js/bootstrap-datetimepicker.min.js')); ?>">
    </script>

    <!-- Page-Level Demo Scripts - Tables - Use for reference -->
    
</body>

</html>
