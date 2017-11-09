<nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0;background: #0088cc;">
            <div class="navbar-header" >
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="admin/tong-quan"><h4 style="font-weight: bold; color: rgba(255,255,255,0.9);margin-top: 0 !important;font-size: 24px;">Hệ thống quản lý</h4></a>
            </div>
            <!-- /.navbar-header -->

            <ul class="nav navbar-top-links navbar-right" >
                <!-- /.dropdown -->
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="">
                        <i class="fa fa-cog"></i> Tài Khoản <i class="fa fa-caret-down"></i>
                    </a>
                    <ul class="dropdown-menu dropdown-user" style="    background-color: black;">
                        <li><a href="javascript:void(0)"><i class="fa fa-user fa-fw"></i>Chào <?php echo Auth::user()->username;  ?> </a>
                        </li>
                        <li><a href="{{route('admin.users.edit',Auth::user()->user_id)}}"><i class="fa fa-gear fa-fw"></i> Cập Nhật Thông Tin</a>
                        </li>
                        <li class="divider"></li>
                        <li><a href="{{url('dangxuat')}}"><i class="fa fa-sign-out fa-fw"></i> Đăng Xuất</a>
                        </li>
                    </ul>
                    <!-- /.dropdown-user -->
                </li>
                <!-- /.dropdown -->
            </ul>
            <!-- /.navbar-top-links -->

            <div class="navbar-default sidebar" role="navigation" style="background: #EBE7E4;">
                <div class="sidebar-nav navbar-collapse" style="background: #EBE7E4;" >
                    
                    <ul class="nav" id="side-menu" style="background-color: #0088cc;">
                        <li class="sidebar-search">
                            <div class="input-group custom-search-form">
                                <input type="text" class="form-control" placeholder="Tìm kiếm">
                                <span class="input-group-btn">
                                    <button class="btn btn-default" type="button">
                                        <i class="fa fa-search"></i>
                                    </button>
                                </span>
                            </div>
                            <!-- /input-group -->
                        </li>
                        <li>
                            <a href="admin/tong-quan"><i class="glyphicon glyphicon-calendar"></i>Tổng quan</a>
                        </li>
                        <li>
                            <a href="{{URL::route('admin.categories.list')}}"><i class="glyphicon glyphicon-star"></i> Loại Sản Phẩm</a>
                            <!-- /.nav-second-level -->
                        </li>

                 
                        <li>
                            <a href="{{URL::route('admin.products.list')}}"><i class="fa fa-pagelines fa-fw"></i> Sản Phẩm</a>

                            <!-- /.nav-second-level -->
                        </li>
                        <li>
                            <a href=""><i class="fa fa-pencil-square-o"></i> Đơn Hàng<?php echo " (".count(DB::table('orders')->where('status',0)->get()).")";?><span class="fa arrow "></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="{{url::route('admin.orders.list')}}">Đơn Hàng Chờ Duyệt <?php echo " (".count(DB::table('orders')->where('status',0)->get()).")";?> </a>
                                </li>
                                <li>
                                    <a href="{{url::route('admin.orders.listsigned')}}">Đơn Hàng Đã Duyệt <?php echo " (".count(DB::table('orders')->where('status',1)->get()).")";?></a>
                                </li>
                            </ul>
                            <!-- /.nav-second-level -->
                        </li>
                        <li>
                            <a href=""><i class="fa fa-area-chart"></i> Thống Kê<span class="fa arrow "></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="{{route('admin.statistics.chooseday')}}">Doanh Số</a>
                                </li>
                               <li>
                                    <a href="{{url::route('admin.statistics.customer')}}">Khách hàng</a>
                                </li>
                                <li>
                                    <a href="{{url::route('admin.statistics.product')}}">Sản phẩm gần hết</a>
                                </li>
                            </ul>
                            <!-- /.nav-second-level -->
                        </li>
                        <li>
                            <a href=""><i class="fa fa-newspaper-o" aria-hidden="true"></i> Tin Tức<span class="fa arrow "></span></a>
                            <ul class="nav nav-second-level">
                                 <li>
                                    <a href="{{route('admin.news.add')}}">Đăng Bài</a>
                                </li>
                                <li>
                                    <a href="{{route('admin.news.list')}}">Danh Sách</a>
                                </li>
                            </ul>
                            <!-- /.nav-second-level -->
                        </li>
                        <li>
                            <a href=""><i class="fa fa-users fa-fw"></i>Thành Viên<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="{{URL::route('admin.users.list')}}">Danh Sách</a>
                                </li>
                                <li>
                                    <a href="{{URL::route('admin.users.add')}}">Thêm Mới</a>
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