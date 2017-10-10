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
        <li class="active"> Tin Tức</li>
      </ul>       
      <h1 class="heading1"><span class="maintext"> Tin Tức</span><span class="subtext"> Các bài viết về hoa Lavender</span></h1>
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
        <table class="table table-striped" style="border: 0;">
        	<form method="post" action="">
		        <input type="hidden" name="_token" value="<?php echo e(csrf_token()); ?>">
		        <?php $__currentLoopData = $news; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $n): $__env->incrementLoopIndices(); $loop = $__env->getFirstLoop(); ?>
		          <tr>
		            <th class="image" style="width: 200px; height: 120px;"><img width="120px" height="80px" src="<?php echo e(asset('resources/news/'.$n->image)); ?>" alt=""></th>
		            <th class="name"><a href="<?php echo e(url('tin-tuc/chi-tiet/'.$n->news_id)); ?>"><h3><?php echo e($n->tittle); ?></a></h3><br><?php echo e($n->intro); ?><a href="<?php echo e(url('tin-tuc/chi-tiet/'.$n->news_id)); ?>">...Đọc tiếp</a></th>
		          </tr>
		        <?php endforeach; $__env->popLoop(); $loop = $__env->getFirstLoop(); ?>
            
        	</form>
        </table>
         <div class="pagination pull-right">
                      <!--phân trang-->
                      <?php echo e($news->links()); ?>

                  </div>
          
      </div>


            
    </div>
  </section>
</div>
<?php $__env->stopSection(); ?>
<?php echo $__env->make('frontend.master', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>