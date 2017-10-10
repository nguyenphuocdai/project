@extends('frontend.master')
@section('content')

<hr>
                 <div class="row">
                    <div class="col-lg-12" style="margin-left: 120px;">
                    @if(Session::has('flash_message'))
                        <div class="alert alert-{{Session::get('flash_level')}}">
                            {{Session::get('flash_message')}}
                        </div>
                    @endif
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
                <img  src="{{ asset('resources/upload/'.$pr_detail->image)}}" alt="" title="">
              </a>
            </li>
  
          </ul>
          <ul class="thumbnails mainimage">
            <li class="producthtumb">
              <a class="thumbnail" >
                <h4>Ảnh chi tiết</h4>
                <img  src="{{ asset('resources/upload/'.$pr_detail->image)}}" alt="" title="">
              </a>
            </li>
          </ul>
        </div>
         <!-- Right Details-->
        <div class="span7">
          <div class="row">
            <div class="span7">
              <h1 class="productname"><span class="bgnone">{{$pr_detail->name}}</span></h1>
              <h4>Lượt xem: {{$pr_detail->view}}</h4>
              <div class="productprice">
                <div class="productpageprice">
                  <span class="spiral"></span>{{number_format($pr_detail->price,0,",",".") }}</div>
              </div>
              <ul class="productpagecart">
                <li><a class="cart" href="{{url('mua-hang',[$pr_detail->product_id,$pr_detail->alias])}}">Thêm Vào Giỏ</a>
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
                  <h3>{{$pr_detail->name}}</h3>
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
    <form method="post" action="{{url('comment/'.$pr_detail->product_id)}}" >
     <input type="hidden" name="_token" value="{{csrf_token()}}"> 
    
      <div class="col-md-8" style="margin-left: 25px;">
        <label><h3>Viết bình luận...<i class="fa fa-pencil" aria-hidden="true"></i></h3></label>
          <textarea rows="5" cols="20" name="txtComment" value="{{old('txtComment')}}" style="width: 800px;"></textarea>
          <br>
          <button type="submit" class="btn btn-info " style="-moz-border-radius: 10px;
          -webkit-border-radius: 10px;">Bình Luận</button>
      </div>
       </form>
    </div>
    <div class="row" style="margin-left: 5px;">
        <?php  $t= DB::table('comments')->where('product_id',$pr_detail->product_id)->orderBy('created_at','desc')->get(); ?>
        @foreach($t as $tcm)
        <label style="font-weight: bold; font-size: 16px; color: black;"><?php echo DB::table('customers')->where('customer_id',$tcm->customer_id)->first()->name." : "; ?></label><h3 style="font-weight: bold; font-size: 14px; color: black;">{{$tcm->comment}}<?php echo " ( ".DB::table('customers')->where('customer_id',$tcm->customer_id)->first()->created_at." )"; ?></h3><br>
        @endforeach
    </div>
  </div>
  <!--  Related Products-->
  <section id="related" class="row">
    <div class="container">
      <h1 class="heading1"><span class="maintext">Sản Phẩm Tương Tự</span><span class="subtext"> </span></h1>
      <ul class="thumbnails">
        @foreach($pr_relate as $item_relate)
        <li class="span3">
          <a class="prdocutname" href="{{ url('chi-tiet-san-pham',[$item_relate->product_id,$item_relate->alias]) }}">{{$item_relate->name}}</a>
          <div class="thumbnail">
            <span class="sale tooltip-test">Sale</span>
            <a href="{{ url('chi-tiet-san-pham',[$item_relate->product_id,$item_relate->alias]) }}"><img alt="" src="{{ asset('resources/upload/'.$item_relate->image)}}"></a>
            <div class="pricetag">
              <span class="spiral"></span><a href="#" class="productcart">Thêm Vào Giỏ</a>
              <div class="price">
                <div class="pricenew">{{number_format($item_relate->price,0,",",".") }}</div>
               <!--  <div class="priceold">$5000.00</div> -->
              </div>
            </div>
          </div>
        </li>
       @endforeach
      </ul>
    </div>
  </section>
  <!-- Popular Brands-->
</div>
 
@endsection