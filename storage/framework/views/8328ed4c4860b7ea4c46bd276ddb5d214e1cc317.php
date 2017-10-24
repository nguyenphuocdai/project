<?php $__env->startSection('content'); ?>
<style>label{
margin-left: 20px;
}
#datepicker{
width:180px; 
margin: 0 20px 20px 20px;
}
#datepicker > span:hover{
cursor: pointer;
}</style>
<div class="page-wrapper">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header">Sản phẩm bán chạy
                            <!-- <small>Chọn </small> -->
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
                   <!-- ss -->
    </div>
</div>

<!-- chọn ngày -->
        <form method="post" action="">
            <input type="hidden" name="_token" value="<?php echo e(csrf_token()); ?>">
                <div class="well">
                    <div id="datetimepicker1" class="input-append date">
                        Từ ngày:&nbsp;&nbsp; <input data-format="yyyy/MM/dd hh:mm:ss" value="<?php echo e(old('txtStartDate',isset($sd)?$sd: null)); ?>" type="text" name="txtStartDate"></input>
                        <i data-time-icon="icon-time"  data-date-icon="icon-calendar" class="glyphicon glyphicon-calendar add-on">
                          </i>
                    </div>
                </div>
            <div class="well">
                <div id="datetimepicker2" class="input-append date">
                    Đến ngày:  <input data-format="yyyy/MM/dd hh:mm:ss" type="text" name="txtEndDate" value="<?php echo e(old('txtEndDate',isset($ed)?$ed: null)); ?>"></input>
                    <i data-time-icon="icon-time" data-date-icon="icon-calendar" class="glyphicon glyphicon-calendar add-on">
                      </i>
                </div>
            </div>
            

                <button type="submit" class="btn btn-primary col-md-2" style="margin-left:60px; margin-bottom: 20px;">Xem</button>
           
        </form>
            <!-- end chọn ngày -->
                    <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                        <?php 
                            static $i=0;
                         ?>
                        <thead>
                            <tr align="center">
                                
                                <th>STT</th>
                                <th>Sản Phẩm</th>
                                <th>Số Lượng Bán</th>
                                <th>Đơn Giá</th>
                                <th>Tổng Tiền</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php $__currentLoopData = $tamp; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $t): $__env->incrementLoopIndices(); $loop = $__env->getFirstLoop(); ?>
                            <tr class="even gradeC" align="center">
                               
                                <td width="10px"><?php echo ++$i; ?>
                                </td>
                                <td>
                                    <?php echo DB::table('products')->where('product_id', $t->product_id)->first()->name; ?>
                                </td>
                                <td>
                                              
                                    <?php echo e($t->total); ?>  sản phẩm

                                 </td>
                                 <td><?php echo number_format(DB::table('products')->where('product_id', $t->product_id)->first()->price,'0',',','.'); ?></td>
                                <td>
                               <?php echo number_format(DB::table('products')->where('product_id', $t->product_id)->first()->price*$t->total,'0',',','.')." VNĐ"; ?>
                                
                                </td>
                               
                               
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