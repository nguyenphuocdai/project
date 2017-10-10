<?php $__env->startSection('content'); ?>
    <form action="" method="POST">
    <div class="page-wrapper">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header">Thành Viên
                            <small>Thêm mới</small>
                        </h1>
                    </div>
                    
                    <div class="col-lg-7" style="padding-bottom:120px">
                         <?php echo $__env->make('admin.danger.danger', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>
                        <input type="hidden" name="_token" value="<?php echo e(csrf_token()); ?>">
                        
                            <div class="form-group">
                            <label>(Có dấu <i class="fa fa-times-circle" style="color: red"></i> là bắt buộc )</label><br>
                                <i class="fa fa-times-circle" style="color: red"></i> <label>Tài khoản</label>
                                <input class="form-control" name="txtUser" placeholder="Nhập tài khoản" value="<?php echo e(old('txtUser')); ?>" />
                            </div>
                            <div class="form-group">
                                <i class="fa fa-times-circle" style="color: red"></i> <label>Mật khẩu</label>
                                <input type="password" class="form-control" name="txtPassword" placeholder="Nhập mật khẩu " value="<?php echo e(old('txtPassword')); ?>" />
                            </div>
                            <div class="form-group">
                                <i class="fa fa-times-circle" style="color: red"></i> <label>Nhập lại mật khẩu</label>
                                <input type="password" class="form-control" name="txtRePassword" value="<?php echo e(old('txtRePassword')); ?>" placeholder="Nhập lại mật khẩu" />
                            </div>
                            <div class="form-group">
                                <i class="fa fa-times-circle" style="color: red"></i> <label>Email</label>
                                <input type="email" class="form-control" name="txtEmail" value="<?php echo e(old('txtEmail')); ?>" placeholder="Nhập email" />
                            </div>
                             <div class="form-group">
                                <i class="fa fa-times-circle" style="color: red"></i> <label>Điện Thoại</label>
                                <input type="text" class="form-control" name="txtPhone" value="<?php echo e(old('txtPhone')); ?>" placeholder="Nhập dien thoai" />
                            </div>

                            <div class="form-group">
                                <i class="fa fa-times-circle" style="color: red"></i> <label>Cấp bậc</label>
                                <label class="radio-inline">
                                    <input name="rdoLevel" value="1" checked="" type="radio">Admin
                                </label>
                                <label class="radio-inline">
                                    <input name="rdoLevel" value="0" type="radio">Thường
                                </label>
                            </div>
                            <button type="submit" class="btn btn-primary">Thêm mới</button>
                            <button type="reset" class="btn btn-warning">Làm lại</button>
                        
                    </div>
                </div>
              
            </div>
         
        </div>
    <form>
<?php $__env->stopSection(); ?>
<?php echo $__env->make('admin.master', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>