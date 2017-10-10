<div class="container">

    <div id="categorymenu">
      <nav class="subnav">
        <ul class="nav-pills categorymenu">

          </li>
          <li><a href="<?php echo e(url('/')); ?>" class="">Trang Chủ</a>
          </li> 

            <li><a   href="">Sản Phẩm Lavender</a>
              <div>
                <ul>
                  <?php $menu = DB::table('categories')->get(); ?>
                  <?php $__currentLoopData = $menu; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item_menu): $__env->incrementLoopIndices(); $loop = $__env->getFirstLoop(); ?>
                  <li>
                    <a href="<?php echo e(url('loai-san-pham',[$item_menu->category_id,$item_menu->alias])); ?>"><?php echo e($item_menu->name); ?></a>
                  </li>
                  <?php endforeach; $__env->popLoop(); $loop = $__env->getFirstLoop(); ?>
                </ul>
              </div>
              
              </li>
          <li><a   href="">Sản Phẩm Theo Giá</a>
            <div>
              <ul>

                  <li>
                    <a href="<?php echo e(url('theo-gia-100')); ?>">100.000 - 300.000 đồng</a>
                  </li>
                <li>
                  <a href="<?php echo e(url('theo-gia-300')); ?>">300.000 - 500.000 đồng</a>
                </li>
                <li>
                  <a href="<?php echo e(url('theo-gia-500')); ?>">Trên 500.000 đồng</a>
                </li>

              </ul>
            </div>

          </li>
             <li><a href="<?php echo e(url('gioi-thieu')); ?>">Giới Thiệu</a>
            </li> 
            </li>
            <li><a href="<?php echo e(url('tin-tuc')); ?>">Tin Tức</a>
          </li> 
          <li><a href="<?php echo e(url('lien-he')); ?>">Liên Hệ</a>
          </li>         
        </ul>
      </nav>
    </div>
</div>