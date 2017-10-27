<?php $__env->startSection('content'); ?>
<div class="page-wrapper">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header">Sản Phẩm
                            <small>Danh sách</small>
                        </h1>
                    </div>
                    <!-- /.col-lg-12 -->
                     <div class="row">
                      <div class="col-lg-12">
                    <?php if(Session::has('flash_message')): ?>
                        <div class="alert alert-<?php echo e(Session::get('flash_level')); ?>">
                            <?php echo e(Session::get('flash_message')); ?>

                        </div>
                    <?php endif; ?>
                    </div>
                </div>
                <a href="<?php echo e(URL::route('admin.products.add')); ?>"><button type="button" style="margin-left: 15px;" class="btn btn-primary" >Thêm Mới</button></a>
                    <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                    <hr>
                        <thead>
                            <tr align="center">
                                
                                <th>STT</th>
                                <th>Tên sản phẩm</th>
                                <th>Giá</th>
                                <th>Số lượng</th>
                                <th>Hình ảnh</th>
                                <th>Loại sản phẩm</th>
                                <th>Người Đăng</th>
                                <!--<th>Ngày đăng</th>-->
                                <th>Xóa</th>
                                <th>Cập nhật</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php static $i=1;?>
                            <?php $__currentLoopData = $data; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                            <tr class="even gradeC" align="center">
                               
                                <td width="10px"><?php echo $i++ ?>
                                </td>
                                <td><?php echo e($item->name); ?></td>
                                <!-- số 0 là lấy số chữ số 0 sau cùng, chuyển ,->. -->
                                <td><?php echo e(number_format($item->price,'0',',','.')); ?> VND</td>
                                <td width="15px"><?php if($item->quantity==0)
                                echo "Hết hàng";
                                else 
                                echo $item->quantity;
                                 ?></td>
                                <td width="80px" >
                                <img width="80px" height="80px" class="" alt="<?php echo e($item->name); ?>" src="resources/upload/<?php echo e($item->image); ?>"/>
                                </td>
                                <td>
                        <?php $cate = DB::table('categories')->where('category_id',$item["category_id"])->first(); ?>
                                    <?php if(!empty($cate->name)): ?>
                                        <?php echo $cate->name; ?>

                                    <?php endif; ?>
                                </td>
                                <td>
                                    <?php
                                    $user_up = DB::table('users')->where('user_id',$item->user_id)->first();
                                    ?>
                                    <?php if(!empty($user_up->username)): ?>
                                    <?php echo e($user_up->username); ?>

                                    <?php endif; ?>
                                </td>
                                <!--<td>
                                    <?php
                                    echo \Carbon\Carbon::createFromTimeStamp(strtotime($item["created_at"]))->diffForHumans()
                                    ?>
                                </td>-->
                                <td class="center"><i class="fa fa-trash-o  fa-fw"></i><a href="<?php echo e(URL::route('admin.products.delete',$item['product_id'])); ?> " onclick="return xacnhanxoa('Bạn có muốn xóa sản phẩm ?')"> Xóa</a></td>
                               
                                <td class="center"><i class="fa fa-pencil fa-fw"></i> <a href="<?php echo e(URL::route('admin.products.edit',$item->product_id)); ?>">Cập nhật</a></td>
                            </tr>
                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                        </tbody>
                    </table>
                    
                </div>
                <!-- /.row -->
            </div>
            <!-- /.container-fluid -->
        </div>
        
<?php $__env->stopSection(); ?>
<?php echo $__env->make('admin.master', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>