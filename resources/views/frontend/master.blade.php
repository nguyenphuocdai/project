<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>Lavender - XuKha</title>

<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">
<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300italic,400italic,600,600italic' rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Crete+Round' rel='stylesheet' type='text/css'>
<link href="{{url('public/frontend/css/bootstrap.min.css')}}">
<link href="{{url('public/frontend/css/bootstrap.css')}}" rel="stylesheet">
<link href="{{url('public/frontend/css/bootstrap-responsive.css')}}" rel="stylesheet">
<link href="{{url('public/frontend/css/style.css')}}" rel="stylesheet">
<link href="{{url('public/frontend/css/flexslider.css')}}" type="text/css" media="screen" rel="stylesheet"  />
<link href="{{url('public/frontend/css/jquery.fancybox.css')}}" rel="stylesheet">
<link href="{{url('public/frontend/css/cloud-zoom.css')}}" rel="stylesheet">

<link href="{{url('public/frontend/css/font-awesome/css/font-awesome.min.css')}}">
<link href="{{url('public/frontend/css/font-awesome/css/font-awesome.css')}}">

<!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
<!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
<!-- fav -->
<link rel="shortcut icon" href="assets/ico/favicon.html">
</head>
<body>
  <!-- Header Start -->
    @include('frontend.components.header')
  <!-- Header End -->

<div id="maincontainer">
  <!--menu-->
    @include('frontend.components.menu')
  <!--end menu-->

  <!-- Slider Start-->
    @include('frontend.components.slider')
  <!-- Slider End-->
  
  
  
  <!-- Featured Product-->

  @yield('content')
  
  

<!-- Footer -->
<footer id="footer">
  <section class="footersocial">
    <div class="container">
      <div class="row">
        <div class="span3 aboutus">
          <h2>Về Chúng Tôi </h2>
          <p> Cửa hàng Laveder - Xu Kha chuyên cung cấp các loại Lavender được nhập khẩu từ Pháp .<br>
            <br>
            Chúng tôi cam kết bạn sẽ hài lòng với sự phục vụ của chúng tôi</p>
        </div>
        <div class="span3 contact">
          <h2>Liên hệ </h2>
          <ul>
            <li class="phone"> 01647 49 49 69</li>
            <li class="mobile">  01647 49 49 69</li>
            <li class="email"> khaquy09112@gmail.com</li>

          </ul>
        </div>
        <div class="span3 facebook">
          <h2>Mạng Xã Hội</h2>
          <div id="facebook">
            <span class="fa fa-facebook">facebook.com/lavenderxukha</span>
          </div>
          <div id="facebook">
            <span class="fa fa-facebook">instagram.com/</span>
          </div>
          <div id="facebook">
            <span class="fa fa-facebook">Zalo.com/</span>
          </div>
        </div>
      </div>
    </div>
  </section>
  <section class="footerlinks">
    <div class="container">
      <div class="info">
        <ul>
          <li><a href="#">Privacy Policy</a>
          </li>
          <li><a href="#">Terms &amp; Conditions</a>
          </li>
          <li><a href="#">Affiliates</a>
          </li>
          <li><a href="#">Newsletter</a>
          </li>
        </ul>
      </div>
      <div id="footersocial">
        <a href="#" title="Facebook" class="facebook">Facebook</a>
        
        <a href="#" title="Linkedin" class="linkedin">Linkedin</a>
        <a href="#" title="rss" class="rss">rss</a>
        <a href="#" title="Googleplus" class="googleplus">Googleplus</a>
        <a href="#" title="Skype" class="skype">Skype</a>
        <a href="#" title="Flickr" class="flickr">Flickr</a>
      </div>
    </div>
  </section>
  <section class="copyrightbottom">
    <div class="container">
      <div class="row">

        <div class="span6 textright"> Design by Huynh Anh Quy </div>
      </div>
    </div>
  </section>
  <a id="gotop" href="">Back to top</a>
</footer>
<!-- javascript
    ================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="{{url('public/frontend/js/jquery.js')}}"></script>
<script src="{{url('public/frontend/js/bootstrap.min.js')}}"></script>
<script src="{{url('public/frontend/js/bootstrap.js')}}"></script>
<script src="{{url('public/frontend/js/respond.min.js')}}"></script>
<script src="{{url('public/frontend/js/application.js')}}"></script>
<script src="{{url('public/frontend/js/bootstrap-tooltip.js')}}"></script>
<script defer src="{{url('public/frontend/js/jquery.fancybox.js')}}"></script>
<script defer src="{{url('public/frontend/js/jquery.flexslider.js')}}"></script>
<script type="text/javascript"  src="{{url('public/frontend/js/jquery.tweet.js')}}"></script>
<script type="text/javascipt"   src="{{url('public/frontend/js/cloud-zoom.1.0.2.js')}}"></script>
<script type="text/javascript"  src="{{url('public/frontend/js/jquery.validate.js')}}"></script>
<script type="text/javascript"  src="{{url('public/frontend/js/jquery.carouFredSel-6.1.0-packed.js')}}"></script>
<script type="text/javascript"  src="{{url('public/frontend/js/jquery.mousewheel.min.js')}}"></script>
<script type="text/javascript"  src="{{url('public/frontend/js/jquery.touchSwipe.min.js')}}"></script>
<script type="text/javascript"  src="{{url('public/frontend/js/jquery.ba-throttle-debounce.min.js')}}"></script>
<script  src="{{url('public/frontend/js/custom.js')}}"></script>
<script type="text/javascript" src="{{url('public/frontend/js/myscript_frontend.js')}}"></script>
<script type="text/javascript" src="{{url('public/frontend/js/jssor.slider-22.2.10.min.js')}}"></script>
</body>
</html>