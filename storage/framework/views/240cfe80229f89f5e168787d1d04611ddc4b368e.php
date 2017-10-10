<?php $__env->startSection('content'); ?>
<form action="<?php echo e(route('admin.news.add')); ?>" method="POST" enctype="multipart/form-data">
<div class="page-wrapper">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header">Tin Tức
                            <small>Đăng Bài</small>
                        </h1>
                    </div>
                    <!-- /.col-lg-12 -->
                    <div class="col-lg-7" style="padding-bottom:120px">
                         <?php echo $__env->make('admin.danger.danger', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>
                        <input type="hidden" name="_token" value="<?php echo e(csrf_token()); ?>">
                            
                            <div class="form-group">
                                <i class="fa fa-times-circle" style="color: red"></i> <label>Tiêu Đề </label>
                                <input class="form-control" name="txtTittle" value="<?php echo e(old('txtTittle')); ?>" placeholder="Nhập tên tiêu đề" />
                            </div>
                            <div class="form-group">
                            <i class="fa fa-times-circle" style="color: red"></i>
                                 <label>Đoạn giới thiệu ngắn</label>
                                <textarea class="form-control" rows="3" value="<?php echo e(old('txtIntro')); ?>" name="txtIntro"></textarea>
                            </div>
                            <div class="form-group">
                            <i class="fa fa-times-circle" style="color: red"></i>
                                <label>Nội Dung</label>
                                <textarea class="form-control" rows="3" value="<?php echo e(old('txtContent')); ?>" name="txtContent"></textarea>
                                <script type="text/javascript">ckeditor("txtContent")</script>
                                
                            </div>
                            <div class="form-group">
                                <i class="fa fa-times-circle" style="color: red"></i> <label>Hình Ảnh</label>
                                <input  type="file" name="txtImage" value="<?php echo e(old('txtImage')); ?>" />
                            </div>
                            
                            
                            <button type="submit" class="btn btn-primary">Đăng Bài</button>
                            <button type="reset" class="btn btn-warning">Làm Lại</button>
                        
                    </div>
                            
                    </div>
                <!-- /.row -->
            </div>
            <!-- /.container-fluid -->
        </div>
            </form>
<?php $__env->stopSection(); ?>
<?php echo $__env->make('admin.master', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>