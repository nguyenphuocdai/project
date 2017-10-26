<?php $__env->startSection('content'); ?>
<form action="" method="POST" enctype="multipart/form-data">
<div class="page-wrapper">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header">Tin Tức
                            <small>Chỉnh sửa bài viết</small>
                        </h1>
                    </div>
                    <!-- /.col-lg-12 -->
                    <div class="col-lg-7" style="padding-bottom:120px">
                         <?php echo $__env->make('admin.danger.danger', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>
                        <input type="hidden" name="_token" value="<?php echo e(csrf_token()); ?>">
                            
                            <div class="form-group">
                                <i class="fa fa-times-circle" style="color: red"></i> <label>Tiêu Đề </label>
                                <input class="form-control" name="txtTittle" value="<?php echo e($news->tittle); ?>" placeholder="Nhập tên tiêu đề" />
                            </div>
                            <div class="form-group">
                                 <label>Đoạn giới thiệu ngắn</label>
                                <textarea class="form-control" rows="3" value="<?php echo e(old('txtIntro')); ?>" name="txtIntro"><?php echo e($news->intro); ?></textarea>
                            </div>
                            <div class="form-group">
                                <label>Nội Dung</label>
                                <textarea class="form-control" rows="3" value="<?php echo e(old('txtContent')); ?>" name="txtContent"><?php echo e($news->content); ?></textarea>
                                <script type="text/javascript">ckeditor("txtContent")</script>
                                
                            </div>
                             <div class="form-group">
                                <label>Hình ảnh hiện tại</label>
                                <img width="80px" height="80px"  src="<?php echo e(asset('resources/news/'.$news->image)); ?>" class="image_style" >
                                <input type="hidden" name="img_current" value="<?php echo e($news->image); ?>">
                            </div>
                            <div class="form-group">
                                <label>Cập nhật hình ảnh</label>
                                <input type="file" name="txtImage">
                            </div>
                            
                            
                            <button type="submit" class="btn btn-primary">Cập Nhật</button>
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