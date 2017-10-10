<?php $__env->startSection('content'); ?>
<div id="maincontainer">
  <section id="product">
    <div class="container">
     <!--  breadcrumb --> 
      <ul class="breadcrumb">
        <li>
          <a href="#">Trang chủ </a>
          <span class="divider">/</span>
        </li>
        <li class="active"> Giỏ Hàng</li>
      </ul>       
      <h1 class="heading1"><span class="maintext"> Giỏ Hàng</span><span class="subtext"> Các sản phẩm trong giỏ hàng</span></h1>
      <!-- Cart-->
        <?php echo $__env->make('admin.danger.danger', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>
                 <div class="row">
                    <div class="col-lg-12">
                    <?php if(Session::has('flash_message')): ?>
                        <div class="alert alert-<?php echo e(Session::get('flash_level')); ?>">
                            <?php echo e(Session::get('flash_message')); ?>

                        </div>
                    <?php endif; ?>
                    </div>
                </div>
      <div class="cart-info">
        <table class="table table-striped table-bordered">
          <tr>
            <th class="image">Hình Ảnh</th>
            <th class="name">Tên Sản Phẩm</th>
            <th class="price">Đơn Giá</th>
            <th class="quantity">Số Lượng</th>
            <th class="total">Cập Nhật</th>
            <th class="total">Tổng Tiền</th>
          </tr>
          <form method="post" action="">
           <input type="hidden" name="_token" value="<?php echo e(csrf_token()); ?>">
          <?php $__currentLoopData = $content; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item_content): $__env->incrementLoopIndices(); $loop = $__env->getFirstLoop(); ?>
          <tr>
            <td class="image"><a href="#"><img title="product" alt="product" src="<?php echo e(asset('resources/upload/'.$item_content->options->img)); ?>" height="50" width="50"></a></td>
            <td  class="name"><a href="#"><?php echo e($item_content->name); ?></a></td>
            <td class="price"><?php echo e(number_format($item_content->price,0,",",".")); ?></td>
            <!--số lượng-->
            <td class="quantity"><input class="span1 qty" type="number" min="1" size="1" value='<?php echo e($item_content->qty); ?>' name="quantity"/></td>
            <td class="total"> 
            <!--update-->
            
              <a href="#" class="cart-update" id="<?php echo e($item_content->rowId); ?>"><img class="tooltip-test "    data-original-title="Update" src="public/frontend/img/updatenew.png" alt=""></a>

              <!-- delete -->
              <a href="<?php echo e(url('xoa-san-pham',['id'=>$item_content->rowId])); ?>"><img class="tooltip-test" data-original-title="Remove"  src="public/frontend/img/removenew.png" alt=""></a></td>
            <td class="total"><?php echo e(number_format($item_content->price*$item_content->qty,0,",",".")); ?></td>
             
          </tr>
          <?php endforeach; $__env->popLoop(); $loop = $__env->getFirstLoop(); ?>
          </form>
         
          
            </table>
            <div class="container">
      <div class="pull-right">
          <div class="span4 pull-right">
            <table class="table table-striped table-bordered ">
              <tr>
                <td><span class="extra bold totalamout">Tổng Tiền :</span></td>
                <td><span class="bold totalamout"><?php echo e($total); ?></span></td>
              </tr>
            </table>   
          </div>
        </div>
        </div>
    </div>


            <a href="<?php echo e(url('dat-hang')); ?>"><button class="btn btn-primary pull-right" style="-webkit-border-radius:5px;" >Đặt Hàng</button></a>
        <a href="<?php echo e(url('/')); ?>"><button class="btn btn-warning pull-right" style="-webkit-border-radius:5px; margin-right: 3px;" >Tiếp Tục Mua Hàng</button></a>
          </div>
        </div>
        </div>
    </div>
  </section>
</div>
<?php $__env->stopSection(); ?>
<?php echo $__env->make('frontend.master', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>