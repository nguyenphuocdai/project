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
        <li class="active">Liên Hệ</li>
      </ul>  
      <!-- Contact Us-->
      
       <?php echo $__env->make('admin.danger.danger', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>
      <h1 class="heading1"><span class="maintext">Liên Hệ</span><span class="subtext"> Gởi Email Cho Chúng Tôi</span></h1>
      <div class="row">
        <div class="span6">
          <form class="form-horizontal" action="<?php echo e(url('lien-he')); ?>"  method="post">
            <input type="hidden" name="_token" value="<?php echo e(csrf_token()); ?>"> 
            <fieldset>
              <div class="control-group">
                <label for="name" class="control-label">Tên Người Dùng: <span class="">*</span></label>
                <div class="controls">
                  <input type="text"  placeholder="Nhập tên anh/chị" id="name" value="<?php echo e(old('txtName')); ?>" name="txtName">
                </div>
              </div>
              <div class="control-group">
                <label for="name" class="control-label">Email: <span class="">*</span></label>
                <div class="controls">
                  <input type="text"  class="" id="name" value="<?php echo e(old('txtEmail')); ?>" placeholder="Nhập email dạng abc@example.com" name="txtEmail">
                </div>
              </div>
               <div class="control-group">
                <label for="name" class="control-label">Số Điện Thoại: <span class="">*</span></label>
                <div class="controls">
                  <input type="text"  class="" id="name" value="<?php echo e(old('txtPhone')); ?>" name="txtPhone">
                </div>
              </div>
              <div class="control-group">
                <label for="message" class="control-label">Nội Dung: <span class="">*</span></label>
                <div class="controls">
                  <textarea  class="" rows="6" cols="40" id="message" name="txtMessage"></textarea>
                </div>
              </div>
              <div class="control-group">
                <input class="btn btn-primary" style="margin-left: 180px;  -webkit-border-radius:8px " type="submit" value="Gởi" id="submit_id" >
                <input class="btn btn-warning" style="-webkit-border-radius:8px " type="reset" value="Làm Lại">
              </div>
            </fieldset>
          </form>
        </div>
        
        <!-- Sidebar Start-->
        <div class="span6">
          <aside>
            <div class="sidewidt">
              <h2 class="heading2"><span>Thông Tin Liên Hệ</span></h2>
              <p> 
                <h5>Phone: 01647 494 969</h5>
                <h5>Email: khaquy09112@gmail.com</h5>
                <h5>Web: lavenderxukha.com</h5>
                <h5>Fb: facebook.com/lavenderxukhashop</h5>
                <h5>Ins: instagram.com/lavenderxukhashop</h5>
              </p>
            </div>
          </aside>
        </div>
        <!-- Sidebar End-->
        
      </div>
      
    </div>
  </section>
</div>
<?php $__env->stopSection(); ?>
<?php echo $__env->make('frontend.master', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>