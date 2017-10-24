<?php $__env->startSection('content'); ?>
<style type="text/css">

    .image_style{
        width: 100px;
    }
    .image_detail
    {
        width: 200px;
        margin-bottom: 20px;
        height: 160px;
    }
    .icon_del
    {
        position: relative;
        top: -80px;
        left: -20px;
    }
    #insert
    {
        margin-top: 20px;
    }

</style>
<div class="page-wrapper">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header">Sản Phẩm
                            <small>Cập Nhật</small>
                        </h1>
                    </div>
                     <form action="" method="POST" name="fEditProduct"  enctype="multipart/form-data">
                    <!-- /.col-lg-12 -->
                    <div class="col-lg-7" style="padding-bottom:120px">
                    <?php echo $__env->make('admin.danger.danger', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>
                        <input type="hidden" name="_token" value="<?php echo e(csrf_token()); ?>"> 
                            <div class="form-group">
                                <label>Loại sản phẩm</label>
                                <select class="form-control" name="selectFK">
                                 <option value="">--Chọn Loại Sản Phẩm--</option>
                                   <?php cate_parent($cate,$product['category_id']); ?>
                                </select>
                            </div>
                            <div class="form-group">
                                <label>Tên sản phẩm</label>
                                <input class="form-control" name="txtProductName" placeholder="Nhập tên sản phẩm" value="<?php echo e(old('txtProductName',isset($product)?$product['name'] : null)); ?>" />
                            </div>

                            <div class="form-group">
                                <label>Giá</label>
                                <input class="form-control" name="txtPrice" placeholder="Nhập giá" value="<?php echo e(old('txtPrice',isset($product)?$product['price'] : null)); ?>" />
                            </div>
                            <div class="form-group">
                                <label>Số lượng</label>
                                <input class="form-control" name="txtQuantity" placeholder="Nhập số lượng" value="<?php echo e(old('txtQuantity',isset($product)?$product['quantity'] : null)); ?>" />
                            </div>
                            <div class="form-group">
                                <label>Xuất xứ</label>
                                <input class="form-control" name="txtOrigin" placeholder="Nhập xuất xứ" value="<?php echo e(old('txtOrigin',isset($product)?$product['origin'] : null)); ?>" />
                            </div>
                            <div class="form-group">
                                <label>Từ khóa</label>
                                <input class="form-control" name="txtKeywords" placeholder="Nhập từ khóa" value="<?php echo e(old('txtKeywords',isset($product)?$product['keywords'] : null)); ?>" />
                            </div>

                            <div class="form-group">
                                <label>Hình ảnh hiện tại</label>
                                <img   src="<?php echo e(asset('resources/upload/'.$product['image'])); ?>" class="image_style" >
                                <input type="hidden" name="img_current" value="<?php echo e($product['image']); ?>">
                            </div>
                            <div class="form-group">
                                <label>Hình ảnh</label>
                                <input type="file" name="fImage">
                            </div>
                            <div class="form-group">
                                <label>Mô tả</label>
                                <textarea class="form-control" value="<?php echo e(old('txtDescribe',isset($product)?$product['txtDescribe'] : null)); ?>" name="txtDescribe" rows="3"><?php echo e($product['describe']); ?></textarea>
                                <script type="text/javascript">ckeditor('txtDescribe')</script>
                            </div>
                            
                            <button type="submit" class="btn btn-primary">Cập Nhật</button>
                            <button type="reset" class="btn btn-warning">Làm Lại</button>
                             </div>
                                <div class="col-md-1"></div>

                                <div class="col-md-4">
                                        <?php $__currentLoopData = $product_image; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $item): $__env->incrementLoopIndices(); $loop = $__env->getFirstLoop(); ?>
                                        <div class="form-group" id="del">
                                            <img src="<?php echo e(asset('resources/upload/product_image/'.$item['image'])); ?>" id="del" class="image_detail">

                                              <a href="javascript:void(0)" id="del_image" data-id="<?php echo e($item->image_id); ?>" data-url="<?php echo e(route('deleteImageProduct')); ?>" type="button" class="btn btn-danger btn-circle icon_del"><i class="fa fa-times"></i></a>
                                            <input type="file" name="fEditDetail[]">
                                        </div>
                                        <?php endforeach; $__env->popLoop(); $loop = $__env->getFirstLoop(); ?>
                                            <button type="button" class="btn btn-primary"  id="addImages">Thêm ảnh</button>
                                        <div id="insert">
                                        </div>
                                        
                                </div>
                            </div>
                     
                    </div>
                       </form>
                </div>
                <!-- /.row -->
            </div>
            <!-- /.container-fluid -->
        </div>
        
<?php $__env->stopSection(); ?>

<?php echo $__env->make('admin.master', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>