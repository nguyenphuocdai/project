<?php $__env->startSection('content'); ?>
<div class="page-wrapper">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header">Chi Tiết Hóa Đơn
                            <small>Các sản phẩm khách hàng đặt</small>
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
                    <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                    <hr>
                        <thead>
                            <tr align="center">
                                
                                <th>STT</th>
                                
                                <th>Tên sản phẩm</th>
                                <th>Số Lượng</th>
                                <th>Đơn Giá</th>
                                <th>Thành Tiền</th>
                               
                            </tr>
                        </thead>
                        <tbody>
                            <?php static $i=1;?>
                            <?php $__currentLoopData = $orders_detail; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item): $__env->incrementLoopIndices(); $loop = $__env->getFirstLoop(); ?>
                            <tr class="even gradeC" align="center">
                                <td width="10px"><?php echo $i++ ?></td>
                                <td>
                                <?php 
                                     $name = DB::table('products')->where('product_id',$item->product_id)->first();
                                echo $name->name;
                                ?>
                                
                                 </td>
                               
                                <td>
                                 <?php echo e($item->quantity); ?>

                                </td>
                                <td><?php echo e(number_format($item->price,0,",",".")); ?></td>

                                <td class="center"><?php echo e(number_format($item->total,0,",",".")); ?></td>
                               
                               
                            </tr>
                            <?php endforeach; $__env->popLoop(); $loop = $__env->getFirstLoop(); ?>
                         
                        </tbody>
                       
                    </table>
                      <div class="pagination pull-right">
                      <!--phân trang-->
                    <h3>Tổng tiền hóa đơn:  
                    <?php static $tong =0;?>
                    <?php $__currentLoopData = $orders_detail; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item): $__env->incrementLoopIndices(); $loop = $__env->getFirstLoop(); ?>
                    <?php 
                     $tong = $tong + $item->total ;
                     ?>
                    <?php endforeach; $__env->popLoop(); $loop = $__env->getFirstLoop(); ?>
                    <?php  echo number_format($tong,0,",",".")." Đồng";?>
                    </h3>
                  </div>
                    
                </div>
                <!-- /.row -->
            </div>
            <!-- /.container-fluid -->
        </div>
        
<?php $__env->stopSection(); ?>
<?php echo $__env->make('admin.master', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>