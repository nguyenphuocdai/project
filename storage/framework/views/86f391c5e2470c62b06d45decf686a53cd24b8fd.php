<?php $__env->startSection('content'); ?>

<hr>
                 <div class="row">
                    <div class="col-lg-12" style="margin-left: 120px;">
                    <?php if(Session::has('flash_message')): ?>
                        <div class="alert alert-<?php echo e(Session::get('flash_level')); ?>">
                            <?php echo e(Session::get('flash_message')); ?>

                        </div>
                    <?php endif; ?>
                    </div>
                </div> 
<div id="maincontainer">
  <section id="product">
    <div class="container">      
      <!-- Product Details-->
      <div class="row">
       <!-- Left Image-->
        <div class="span5">
          <ul class="thumbnails mainimage">
            <li class="span5">
              <a  rel="position: 'inside' , showTitle: false, adjustX:-4, adjustY:-4" class="cloud-zoom" href="#">
                <img  src="<?php echo e(asset('resources/upload/'.$pr_detail->image)); ?>" alt="" title="">
              </a>
            </li>
  
          </ul>
          <ul class="thumbnails mainimage">
            <li class="producthtumb">
              <a class="thumbnail" >
                <h4>Ảnh chi tiết</h4>
                <img  src="<?php echo e(asset('resources/upload/'.$pr_detail->image)); ?>" alt="" title="">
              </a>
            </li>
          </ul>
        </div>
         <!-- Right Details-->
        <div class="span7">
          <div class="row">
            <div class="span7">
              <h1 class="productname"><span class="bgnone"><?php echo e($pr_detail->name); ?></span></h1>
              <h4>Lượt xem: <?php echo e($pr_detail->view); ?></h4>
              <div class="productprice">
                <div class="productpageprice">
                  <span class="spiral"></span><?php echo e(number_format($pr_detail->price,0,",",".")); ?></div>
              </div>
              <ul class="productpagecart">
                <li><a class="cart" href="<?php echo e(url('mua-hang',[$pr_detail->product_id,$pr_detail->alias])); ?>">Thêm Vào Giỏ</a>
                </li>
              </ul>
         <!-- Product Description tab & comments-->
         <div class="productdesc">
                <ul class="nav nav-tabs" id="myTab">
                  <li class="active"><a href="#description">Mô Tả</a>
                  </li>
                </ul>
                <div class="tab-content">
                  <div class="tab-pane active" id="description">
                  <h3><?php echo e($pr_detail->name); ?></h3>
                    <?php echo $pr_detail->describe;   ?>
                    <br>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
           
                 
  <div class="container">
    <div class="row">
    <form method="post" action="<?php echo e(url('comment/'.$pr_detail->product_id)); ?>" >
     <input type="hidden" name="_token" value="<?php echo e(csrf_token()); ?>"> 
    
      <div class="col-md-8" style="margin-left: 25px;">
        <label><h3>Viết bình luận...<i class="fa fa-pencil" aria-hidden="true"></i></h3></label>
          <textarea rows="5" cols="20" name="txtComment" value="<?php echo e(old('txtComment')); ?>" style="width: 800px;"></textarea>
          <br>
          <button type="submit" class="btn btn-info " style="-moz-border-radius: 10px;
          -webkit-border-radius: 10px;">Bình Luận</button>
      </div>
       </form>
    </div>
    <div class="row" style="margin-left: 5px;">
        <?php  $t= DB::table('comments')->where('product_id',$pr_detail->product_id)->orderBy('created_at','desc')->get(); ?>
        <?php $__currentLoopData = $t; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $tcm): $__env->incrementLoopIndices(); $loop = $__env->getFirstLoop(); ?>
        <label style="font-weight: bold; font-size: 16px; color: black;"><?php echo DB::table('customers')->where('customer_id',$tcm->customer_id)->first()->name." : "; ?></label><h3 style="font-weight: bold; font-size: 14px; color: black;"><?php echo e($tcm->comment); ?><?php echo " ( ".DB::table('customers')->where('customer_id',$tcm->customer_id)->first()->created_at." )"; ?></h3><br>
        <?php endforeach; $__env->popLoop(); $loop = $__env->getFirstLoop(); ?>
    </div>
  </div>
  <!--  Related Products-->
  <section id="related" class="row">
    <div class="container">
      <h1 class="heading1"><span class="maintext">Sản Phẩm Tương Tự</span><span class="subtext"> </span></h1>
      <ul class="thumbnails">
        <?php $__currentLoopData = $pr_relate; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item_relate): $__env->incrementLoopIndices(); $loop = $__env->getFirstLoop(); ?>
        <li class="span3">
          <a class="prdocutname" href="<?php echo e(url('chi-tiet-san-pham',[$item_relate->product_id,$item_relate->alias])); ?>"><?php echo e($item_relate->name); ?></a>
          <div class="thumbnail">
            <span class="sale tooltip-test">Sale</span>
            <a href="<?php echo e(url('chi-tiet-san-pham',[$item_relate->product_id,$item_relate->alias])); ?>"><img alt="" src="<?php echo e(asset('resources/upload/'.$item_relate->image)); ?>"></a>
            <div class="pricetag">
              <span class="spiral"></span><a href="#" class="productcart">Thêm Vào Giỏ</a>
              <div class="price">
                <div class="pricenew"><?php echo e(number_format($item_relate->price,0,",",".")); ?></div>
               <!--  <div class="priceold">$5000.00</div> -->
              </div>
            </div>
          </div>
        </li>
       <?php endforeach; $__env->popLoop(); $loop = $__env->getFirstLoop(); ?>
      </ul>
    </div>
  </section>
  <!-- Popular Brands-->
</div>
 
<?php $__env->stopSection(); ?>
<?php echo $__env->make('frontend.master', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>