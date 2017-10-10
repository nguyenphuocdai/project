
@extends('frontend.master')
@section('content')
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
      
       @include('admin.danger.danger')
      <h1 class="heading1"><span class="maintext">{{$detail->tittle}}</span><span class="subtext"></span></h1>
      <div class="row">
        <div class="span12">

        {{$detail->created_at}}
        <h3>{{$detail->tittle}}</h3>
        <?php echo $detail->content; ?>
        </div>
        
       <!-- <div class="span4">
          <aside>
            <div class="sidewidt">
              <img src="{{url('public/frontend/img/gioithieu.png')}}" alt="">
              
            </div>
          </aside>
        </div> -->
        
      </div>
       
    </div>
  </section>
</div>
@endsection