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
        <li class="active">Loại Sản Phẩm</li>
      </ul>
      <div class="row">        
        <!-- Sidebar Start-->
        <aside class="span3">

         <!-- Category  1234-->  

         <!-- Tức e muốn đổ menu vào chỗ này yes giờ nó bị sao, no ko chay ra ma no dinh menu cu cua tamplate -->
          <div class="sidewidt">
            <h2 class="heading2"><span>Loại Sản Phẩm</span></h2>
            <ul class="nav nav-list categories">
            <?php $menu = DB::table('categories')->get(); ?>
                  <?php $__currentLoopData = $menu; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item_menu): $__env->incrementLoopIndices(); $loop = $__env->getFirstLoop(); ?>
              <li>
                <a href="<?php echo e(url('loai-san-pham',[$item_menu->category_id,$item_menu->alias])); ?>"><?php echo e($item_menu->name); ?></a>
              </li>
                  <?php endforeach; $__env->popLoop(); $loop = $__env->getFirstLoop(); ?>
            </ul>
          </div>


         <!--  Best Seller -->  
          <div class="sidewidt">
            <h2 class="heading2"><span>Theo Giá</span></h2>
            <ul class="bestseller">
            <li>
                <a class="productname" href="<?php echo e(url('theo-gia-100')); ?>">100.000 - 300.000 đồng</a>
                
              </li>
              <li>
                <a class="productname" href="<?php echo e(url('theo-gia-300')); ?>">300.000 - 500.000 đồng</a>
                
              </li>
              <li>
                <a class="productname" href="<?php echo e(url('theo-gia-500')); ?>">Trên 500.000 đồng</a>
                
              </li>
            </ul>
          </div>
        </aside>
        <!-- Sidebar End-->
        <!-- Category-->
        <div class="span9">          
          <!-- Category Products-->
          <section id="category">
            <div class="row">
              <div class="span9">
               <!-- Category-->
                <section id="categorygrid">
                  <ul class="thumbnails grid">
                  <?php $__currentLoopData = $pr_cate; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item_pr_cate): $__env->incrementLoopIndices(); $loop = $__env->getFirstLoop(); ?>                  
                    <li class="span3">
                      <a class="prdocutname" href="<?php echo e(url('chi-tiet-san-pham',[$item_pr_cate->product_id,$item_pr_cate->alias])); ?>"><?php echo e($item_pr_cate->name); ?></a>
                      <div class="thumbnail">
                        <span class="sale tooltip-test">Sale</span>
                        <a href="<?php echo e(url('chi-tiet-san-pham',[$item_pr_cate->product_id,$item_pr_cate->alias])); ?>"><img alt="" class="image-responsive" src="<?php echo e(asset('resources/upload/'.$item_pr_cate->image)); ?>"></a>
                        <div class="pricetag">
                          <span class="spiral"></span><a href="<?php echo e(url('mua-hang',[$item_pr_cate->product_id,$item_pr_cate->alias])); ?>" class="productcart">Thêm Vào Giỏ</a>
                          <div class="price">
                            <div class="pricenew"><?php echo e(number_format($item_pr_cate->price,0,",",".")); ?></div>
                            <div class="priceold"><?php echo e(number_format($item_pr_cate->price*1.2,0,",",".")); ?></div>
                          </div>
                        </div>
                      </div>
                    </li>
                    <?php endforeach; $__env->popLoop(); $loop = $__env->getFirstLoop(); ?>
                  </ul>
              
                  <div class="pagination pull-right">
                      <!--phân trang-->
                      <?php echo e($pr_cate->links()); ?>

                  </div>
                </section>
              </div>
            </div>
          </section>
        </div>
      </div>
    </div>
  </section>
</div>
<?php $__env->stopSection(); ?>
<?php echo $__env->make('frontend.master', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>