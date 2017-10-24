<?php $__env->startSection('content'); ?>
<div class="page-wrapper">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header">Thành viên
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
                    <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                        <thead>
                            <tr align="center">
                             
                                <th>STT</th>
                                <th>Tài khoản</th>
                                <th>Cấp bậc</th>
                                <th>Email</th>
                                <th>Xóa</th>
                                <th>Cập nhật</th>
                               
                            </tr>
                        </thead>
                        <tbody>
                        <?php static $i=1;?>
                            <?php $__currentLoopData = $user; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item): $__env->incrementLoopIndices(); $loop = $__env->getFirstLoop(); ?>
                            <tr class="odd gradeX" align="center">
                                
                                <td width="10px"><?php echo $i++ ?></td>
                                <td><?php echo e($item->username); ?></td>
                                <td>
                                <?php if($item->level == 1): ?>
                                <?php echo e("Admin"); ?>

                                <?php else: ?>
                                <?php echo e("Thường"); ?>

                                <?php endif; ?>
                                </td>
                                <td><?php echo e($item->email); ?></td>
                                <td class="center"><i class="fa fa-times-circle-o  fa-fw"></i><a href="<?php echo e(URL::route('admin.users.delete',$item['user_id'])); ?> " onclick="return xacnhanxoa('Bạn có muốn xóa thành viên ?')"> Xóa</a></td>
                                 <td class="center"><i class="fa fa-info-circle fa-fw"></i> <a href="<?php echo e(URL::route('admin.users.edit',$item->user_id)); ?>">Cập nhật</a></td>
                                
                            </tr>
                            <?php endforeach; $__env->popLoop(); $loop = $__env->getFirstLoop(); ?>
                        </tbody>
                    </table>
                </div>
                <!-- /.row -->
            </div>
            <!-- /.container-fluid -->
        </div>
<?php $__env->stopSection(); ?>
<?php echo $__env->make('admin.master', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>