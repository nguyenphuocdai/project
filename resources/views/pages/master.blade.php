<!DOCTYPE html>
<!--[if IE 8 ]><html class="ie ie8" lang="en"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!--><html lang="en"> <!--<![endif]-->

<!-- Mirrored from www.vasterad.com/themes/trizzy/index.html by HTTrack Website Copier/3.x [XR&CO'2014], Sun, 15 Oct 2017 14:01:48 GMT -->
<head>

<!-- Basic Page Needs
================================================== -->
<meta charset="utf-8">
<title>Trizzy - Developer</title>

<!-- Mobile Specific Metas
================================================== -->
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

<!-- CSS
================================================== -->
<link rel="stylesheet" href="{{url('public/pages/css/style.css')}}">
<link rel="stylesheet" href="{{url('public/pages/css/mystyless.css')}}">
<link rel="stylesheet" type="text/css" href="{{url('public/pages/css/bootstrap.min.css')}}">
<link rel="stylesheet" type="text/css" href="{{url('public/pages/css/colors/green.css')}}" id="colors">
 <link rel="shortcut icon" href="{{url('public/favicon.ico')}}">
<!--[if lt IE 9]>
	<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
<![endif]-->

</head>

<body class="boxed">
<div id="wrapper">


<!-- Top Bar
================================================== -->


<!-- Navigation
================================================== -->
@include('pages.header')


<!-- Slider
================================================== -->
@yield('content')
<!-- Footer
================================================== -->
@include('pages.footer')
<!-- Footer / End -->

<!-- Footer Bottom / Start -->

<!-- Footer Bottom / End -->

<!-- Back To Top Button -->
<div id="backtotop"><a href="#"></a></div>

</div>


<!-- Java Script
================================================== -->
<script style="display: none !important;">!function(e,t,r,n,c,a,l){function i(t,r){return r=e.createElement('div'),r.innerHTML='<a href="'+t.replace(/"/g,'&quot;')+'"></a>',r.childNodes[0].getAttribute('href')}function o(e,t,r,n){for(r='',n='0x'+e.substr(t,2)|0,t+=2;t<e.length;t+=2)r+=String.fromCharCode('0x'+e.substr(t,2)^n);return i(r)}try{for(c=e.getElementsByTagName('a'),l='/cdn-cgi/l/email-protection#',n=0;n<c.length;n++)try{(t=(a=c[n]).href.indexOf(l))>-1&&(a.href='mailto:'+o(a.href,t+l.length))}catch(e){}for(c=e.querySelectorAll('.__cf_email__'),n=0;n<c.length;n++)try{(a=c[n]).parentNode.replaceChild(e.createTextNode(o(a.getAttribute('data-cfemail'),0)),a)}catch(e){}}catch(e){}}(document);
</script>

<script src="{{url('public/pages/scripts/jquery-1.11.0.min.js')}}"></script>
<script src="{{url('public/pages/scripts/jquery-migrate-1.2.1.min.js')}}"></script>
<script src="{{url('public/pages/scripts/jquery.jpanelmenu.js')}}"></script>
<script src="{{url('public/pages/scripts/jquery.themepunch.plugins.min.js')}}"></script>
<script src="{{url('public/pages/scripts/jquery.themepunch.revolution.min.js')}}"></script>
<script src="{{url('public/pages/scripts/jquery.themepunch.showbizpro.min.js')}}"></script>
<script src="{{url('public/pages/scripts/jquery.magnific-popup.min.js')}}"></script>
<script src="{{url('public/pages/scripts/hoverIntent.js')}}"></script>
<script src="{{url('public/pages/scripts/superfish.js')}}"></script>
<script src="{{url('public/pages/scripts/jquery.pureparallax.js')}}"></script>
<script src="{{url('public/pages/scripts/jquery.pricefilter.js')}}"></script>
<script src="{{url('public/pages/scripts/jquery.selectric.min.js')}}"></script>
<script src="{{url('public/pages/scripts/jquery.royalslider.min.js')}}"></script>
<script src="{{url('public/pages/scripts/SelectBox.js')}}"></script>
<script src="{{url('public/pages/scripts/modernizr.custom.js')}}"></script>
<script src="{{url('public/pages/scripts/waypoints.min.js')}}"></script>
<script src="{{url('public/pages/scripts/jquery.flexslider-min.js')}}"></script>
<script src="{{url('public/pages/scripts/jquery.counterup.min.js')}}"></script>
<script src="{{url('public/pages/scripts/jquery.tooltips.min.js')}}"></script>
<script src="{{url('public/pages/scripts/jquery.isotope.min.js')}}"></script>
<script src="{{url('public/pages/scripts/puregrid.js')}}"></script>
<script src="{{url('public/pages/scripts/stacktable.js')}}"></script>
<script src="{{url('public/pages/scripts/custom.js')}}"></script>
<script src="{{url('public/pages/scripts/switcher.js')}}"></script>
<script src="{{url('public/pages/scripts/myscript.js')}}"></script>

@include('flashy::message')
@yield('script')
</body>

</html>