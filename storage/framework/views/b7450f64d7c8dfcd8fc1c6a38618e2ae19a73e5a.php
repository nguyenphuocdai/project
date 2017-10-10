<?php $__env->startSection('content'); ?>
<div id="maincontainer">
  <section id="product">
    <div class="container">
     <!--  breadcrumb --> 
      <ul class="breadcrumb">
        <li>
          <a href="#">Trang Chủ</a>
          <span class="divider">/</span>
        </li>
        <li class="active">Tin Tức</li>
      </ul>  
      <!-- Contact Us-->
      
       <?php echo $__env->make('admin.danger.danger', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>
      <h1 class="heading1"><span class="maintext"><?php echo e($detail->tittle); ?></span><span class="subtext"></span></h1>
      <div class="row">
        <div class="span12">

        <?php echo e($detail->created_at); ?>

        <h3><?php echo e($detail->tittle); ?></h3>
        <?php echo $detail->content; ?>
        </div>
        
       <!-- <div class="span4">
          <aside>
            <div class="sidewidt">
              <img src="<?php echo e(url('public/frontend/img/gioithieu.png')); ?>" alt="">
              
            </div>
          </aside>
        </div> -->
        
      </div>
       
    </div>
  </section>
</div>
<?php $__env->stopSection(); ?>
<?php echo $__env->make('frontend.master', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>