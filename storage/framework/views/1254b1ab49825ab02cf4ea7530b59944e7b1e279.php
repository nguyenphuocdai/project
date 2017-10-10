<?php $__env->startSection('content'); ?>

  <!-- Latest Product-->
  <!-- <section id="latest" class="row">
    <div class="container">
      <h1 class="heading1" style="margin-top: 40px;"><span class="maintext">Sản Phẩm Mới Nhất</span><span class="subtext"></span></h1>

      <ul class="thumbnails">
        <?php $__currentLoopData = $pr; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item): $__env->incrementLoopIndices(); $loop = $__env->getFirstLoop(); ?>
        <li class="span3">
          <a class="prdocutname" href="<?php echo e(url('chi-tiet-san-pham',[$item->product_id,$item->alias])); ?>"><?php echo e($item->name); ?></a>
          <div class="thumbnail">
            <a href="<?php echo e(url('chi-tiet-san-pham',[$item->product_id,$item->alias])); ?>"><img alt="" src="<?php echo e(asset('resources/upload/'.$item->image)); ?>"></a>
            <div class="pricetag">
              <span class="spiral"></span><a href="<?php echo e(url('mua-hang',[$item->product_id,$item->alias])); ?>" class="productcart">Thêm Vào Giỏ</a>
              <div class="price">
                <div class="pricenew"><?php echo e(number_format($item->price,0,",",".")); ?></div>
                <div class="priceold"><?php echo e(number_format($item->price*1.2,0,",",".")); ?></div>
              </div>
            </div>
          </div>
        </li>
        <?php endforeach; $__env->popLoop(); $loop = $__env->getFirstLoop(); ?>
      </ul>
    </div>
  </section>
  <section id="latest" class="row">
    <div class="container">
      <h1 class="heading1"><span class="maintext">Sản Phẩm Xem Nhiều</span><span class="subtext"></span></h1>
      <ul class="thumbnails">
      <?php $__currentLoopData = $pr_view; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item_pr_view): $__env->incrementLoopIndices(); $loop = $__env->getFirstLoop(); ?>
        <li class="span3">
          <a class="prdocutname" href="<?php echo e(url('chi-tiet-san-pham',[$item_pr_view->product_id,$item_pr_view->alias])); ?>"><?php echo e($item_pr_view->name); ?></a>
          <div class="thumbnail">
            <a href="<?php echo e(url('chi-tiet-san-pham',[$item_pr_view->product_id,$item_pr_view->alias])); ?>"><img alt="" src="<?php echo e(asset('resources/upload/'.$item_pr_view->image)); ?>"></a>
            <div class="pricetag">
              <span class="spiral"></span><a href="<?php echo e(url('mua-hang',[$item_pr_view->product_id,$item_pr_view->alias])); ?>" class="productcart">Thêm Vào Giỏ</a>
              <div class="price">
                <div class="pricenew"><?php echo e(number_format($item_pr_view->price,0,",",".")); ?></div>
                <div class="priceold"><?php echo e(number_format($item_pr_view->price*1.2,0,",",".")); ?></div>
              </div>
            </div>
          </div>
        </li>
      <?php endforeach; $__env->popLoop(); $loop = $__env->getFirstLoop(); ?>
      </ul>
    </div>
  </section> -->
  <div id="maincontainer">
  <section id="product">
    <div class="container">
     <!--  breadcrumb -->  
      <ul class="breadcrumb">
        <li>
          <a href="#">Trang Chủ</a>
          <span class="divider">/</span>
        </li>
        
      </ul>
      <div class="row">        
        <!-- Sidebar Start-->
        <aside class="span3">

         <!-- Category  1234-->  

         
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
            <!-- thống kê truy cập-->
            <!-- <div class="sidewidt">
                <h2 class="heading2"><span>Thống Kê Truy Cập</span></h2>
                <ul class="bestseller">

                    <li>
                        <a class="" href="#">Đang Online:</a>

                    </li>
                    <li>
                        <a class="" href="#">Tuần Này:</a>

                    </li>
                    <li>
                        <a class="" href="#">Tháng Này:</a>

                    </li>
                    <li>
                        <a class="" href="#">Tổng Lượt Truy Cập:</a>

                    </li>
                </ul>
            </div> -->
        </aside>
        <!-- Sidebar End-->
       
        <div class="span9">          
          <!-- Sản Phẩm Mới-->
            <section id="category">
              <div class="row">
              <h1 class="heading1" style="margin-top: 40px; margin-left: 30px;"><span class="maintext">Sản Phẩm Mới Nhất</span><span class="subtext"></span></h1>
                <div class="span9">
                 <!-- Category-->
                  <section id="categorygrid">
                    <ul class="thumbnails grid">
                    <?php $__currentLoopData = $pr_cate; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item_pr_cate): $__env->incrementLoopIndices(); $loop = $__env->getFirstLoop(); ?>                  
                      <li class="span3">
                        <a class="prdocutname" href="<?php echo e(url('chi-tiet-san-pham',[$item_pr_cate->product_id,$item_pr_cate->alias])); ?>"><?php echo e($item_pr_cate->name); ?></a>
                        <div class="thumbnail">
                          <span class="sale tooltip-test">Sale</span>
                          <a href="<?php echo e(url('chi-tiet-san-pham',[$item_pr_cate->product_id,$item_pr_cate->alias])); ?>"><img alt="" class="image-responsive"  src="<?php echo e(asset('resources/upload/'.$item_pr_cate->image)); ?>"></a>
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
                  </section>
              </div>
          
          <div class="span9">          
            <section id="category">
              <div class="row">
              <h1 class="heading1" style="margin-top: 40px; margin-left: 30px;"><span class="maintext">Sản Phẩm Xem Nhiều</span><span class="subtext"></span></h1>
                <div class="span9">
                 <!-- Category-->
                  <section id="categorygrid">
                    <ul class="thumbnails grid">
                    <?php $__currentLoopData = $pr_view; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item_pr_view): $__env->incrementLoopIndices(); $loop = $__env->getFirstLoop(); ?>                  
                      <li class="span3">
                        <a class="prdocutname" href="<?php echo e(url('chi-tiet-san-pham',[$item_pr_view->product_id,$item_pr_view->alias])); ?>"><?php echo e($item_pr_view->name); ?></a>
                        <div class="thumbnail">
                          <span class="sale tooltip-test">Sale</span>
                          <a href="<?php echo e(url('chi-tiet-san-pham',[$item_pr_view->product_id,$item_pr_view->alias])); ?>"><img alt="" class="image-responsive"  src="<?php echo e(asset('resources/upload/'.$item_pr_view->image)); ?>"></a>
                          <div class="pricetag">
                            <span class="spiral"></span><a href="<?php echo e(url('mua-hang',[$item_pr_view->product_id,$item_pr_view->alias])); ?>" class="productcart">Thêm Vào Giỏ</a>                     
                            <div class="price">
                              <div class="pricenew"><?php echo e(number_format($item_pr_view->price,0,",",".")); ?></div>
                              <div class="priceold"><?php echo e(number_format($item_pr_view->price*1.2,0,",",".")); ?></div>
                            </div>
                          </div>
                        </div>
                      </li>
                      <?php endforeach; $__env->popLoop(); $loop = $__env->getFirstLoop(); ?>
                    </ul>
                  </section>
              </div>
              <!-- end phân cách2 -->
            </div>
          </section>
        </div>
      </div>
    </div>
  </section>

</div>
<?php $__env->stopSection(); ?>
<?php echo $__env->make('frontend.master', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>