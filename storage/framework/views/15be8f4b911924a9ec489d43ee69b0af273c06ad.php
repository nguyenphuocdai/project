<?php $__env->startSection('content'); ?>
<form action="" method="POST">
 <div class="page-wrapper">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header">Thành viên
                            <small>cập nhật</small>
                        </h1>
                    </div>
                    <!-- /.col-lg-12 -->
                    <div class="col-lg-7" style="padding-bottom:120px">
                     <?php echo $__env->make('admin.danger.danger', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>
                    <input type="hidden" name="_token" value="<?php echo e(csrf_token()); ?>">     
                        
                            <div class="form-group">
                             <label>(Có dấu <i class="fa fa-times-circle" style="color: red"></i> là bắt buộc)</label><br>
                                <i class="fa fa-times-circle" style="color: red"></i> <label>Tài khoản</label>
                                <input class="form-control" name="txtUsername" value="<?php echo e(old('txtUsername',isset($data)?$data['username'] : null)); ?>" disabled />
                            </div>
                            <div class="form-group">
                                 <i class="fa fa-times-circle" style="color: red"></i> <label>Mật khẩu</label>
                                <input type="password" class="form-control" name="txtPassword" value="<?php echo e(old('txtPassword',isset($data)?$data['password'] : null)); ?>" placeholder="Nhập mật khẩu" />
                            </div>
                            <div class="form-group">
                                 <i class="fa fa-times-circle" style="color: red"></i> <label>Nhập lại mật khẩu</label>
                                <input type="password" class="form-control" name="txtRePassword"  value="<?php echo e(old('txtRePassword',isset($data)?$data['password'] : null)); ?>" placeholder="Nhập lại mật khẩu" />
                            </div>
                            <div class="form-group">
                                <label>Email</label>
                                <input type="email" class="form-control" name="txtEmail"  value="<?php echo e(old('txtEmail',isset($data)?$data['email'] : null)); ?>" disabled />
                            </div>
                            
                            <div class="form-group">
                                 <i class="fa fa-times-circle" style="color: red"></i> <label>Số điện thoại</label>
                                <input type="text" class="form-control" name="txtPhone" value="<?php echo e(old('txtPhone',isset($data)?$data['phone_number'] : null)); ?>" placeholder="Nhập số điện thoại" />
                            </div>
                            
                            <button type="submit" class="btn btn-primary">Cập nhật</button>
                            <button type="reset" class="btn btn-warning">Làm lại</button>
                      
                    </div>
                </div>
                <!-- /.row -->
            </div>
            <!-- /.container-fluid -->
        </div>
          <form>
<?php $__env->stopSection(); ?>
<?php echo $__env->make('admin.master', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>