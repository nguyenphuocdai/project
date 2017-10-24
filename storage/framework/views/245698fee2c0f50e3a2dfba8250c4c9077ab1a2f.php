<?php $__env->startSection('content'); ?>
<form action="<?php echo e(route('admin.products.add')); ?>" method="POST" enctype="multipart/form-data">
<div class="page-wrapper">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header">Sản Phẩm
                            <small>Thêm mới</small>
                        </h1>
                    </div>
                    <!-- /.col-lg-12 -->
                    <div class="col-lg-7" style="padding-bottom:120px">
                         <?php echo $__env->make('admin.danger.danger', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>
                        <input type="hidden" name="_token" value="<?php echo e(csrf_token()); ?>">
                            <div class="form-group">
                                <label>(Có dấu <i class="fa fa-times-circle" style="color: red"></i> là bắt buộc nhập)</label><br>
                                <i class="fa fa-times-circle" style="color: red"></i> <label>Loại Sản Phẩm</label>
                                <select class="form-control" name="selectFK">
                                    <option value="">--Chọn Loại Sản Phẩm--</option>
                                   <?php cate_parent($cate,old('selectFK')); ?>
                                    
                                </select>
                            </div>
                            <div class="form-group">
                                <i class="fa fa-times-circle" style="color: red"></i> <label>Tên Sản Phẩm</label>
                                <input class="form-control" name="txtProductName" value="<?php echo e(old('txtProductName')); ?>" placeholder="Nhập tên sản phẩm" />
                            </div>
                            <div class="form-group">
                                <i class="fa fa-times-circle" style="color: red"></i> <label>Giá</label>
                                <input class="form-control" name="txtPrice" value="<?php echo e(old('txtPrice')); ?>" placeholder="Nhập giá" />
                            </div>
                            <div class="form-group">
                                <i class="fa fa-times-circle" style="color: red"></i> <label>Số Lượng</label>
                                <input class="form-control" name="txtQuantity" value="<?php echo e(old('txtQuantity')); ?>" placeholder="Nhập số lượng" />
                            </div>
                            <div class="form-group">
                                <i class="fa fa-times-circle" style="color: red"></i> <label>Xuất Xứ</label>
                                <input class="form-control" name="txtOrigin" value="<?php echo e(old('txtOrigin')); ?>" placeholder="Nhập xuất xứ" />
                            </div>
                            <!--<div class="form-group">
                                <label>Giảm Giá (%)</label>
                                <input class="form-control" name="txtDiscount" value="<?php echo e(old('txtDiscount')); ?>" placeholder="Nhập giảm giá"/>
                            </div>-->
                            <div class="form-group">
                                <label>Từ Khóa</label>
                                <input class="form-control" name="txtKeywords" value="<?php echo e(old('txtKeywords')); ?>" placeholder="Nhập từ khóa" />
                            </div>
                            <div class="form-group">
                                <i class="fa fa-times-circle" style="color: red"></i> <label>Hình Ảnh</label>
                                <input  type="file" name="txtImage" value="<?php echo e(old('txtImage')); ?>" />
                            </div>
                            <div class="form-group">
                                <label>Mô Tả</label>
                                <textarea class="form-control" rows="3" value="<?php echo e(old('txtDescribe')); ?>" name="txtDescribe"><?php echo e(old('txtDescribe')); ?></textarea>
                                <script type="text/javascript">ckeditor("txtDescribe")</script>
                                
                            </div>
                            
                            <button type="submit" class="btn btn-primary">Thêm Mới</button>
                            <button type="reset" class="btn btn-warning">Làm Lại</button>
                        
                    </div>
                            <div class="col-md-1"></div>

                            <div class="col-md-4">
                             <?php for($i=1; $i<=4; $i++): ?>
                                <div class="form-group">
                                    
                                    <label>Ảnh chi tiết <?php echo e($i); ?></label>
                                    <input type="file" name="fProductDetail[]">
                                </div>
                             <?php endfor; ?>
                            </div>
                    </div>
                <!-- /.row -->
            </div>
            <!-- /.container-fluid -->
        </div>
            </form>
<?php $__env->stopSection(); ?>
<?php echo $__env->make('admin.master', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>