@extends('frontend.master')
@section('content')
<div id="maincontainer">
  <section id="product">
    <div class="container">
     <!--  breadcrumb -->  
      <ul class="breadcrumb">
        <li>
          <a href="{{url('/')}}">Trang Chủ</a>
          <span class="divider">/</span>
        </li>
        <li>
          <a href="">Theo Giá</a>
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
                  @foreach($menu as $item_menu)
              <li>
                <a href="{{url('loai-san-pham',[$item_menu->category_id,$item_menu->alias])}}">{{$item_menu->name}}</a>
              </li>
                  @endforeach
            </ul>
          </div>


         <!--  Best Seller -->  
          <div class="sidewidt">
            <h2 class="heading2"><span>Theo Giá</span></h2>
            <ul class="bestseller">
              <li>
                <a class="productname" href="{{url('theo-gia-100')}}">100.000 - 300.000 đồng</a>
                
              </li>
              <li>
                <a class="productname" href="{{url('theo-gia-300')}}">300.000 - 500.000 đồng</a>
                
              </li>
              <li>
                <a class="productname" href="{{url('theo-gia-500')}}">Trên 500.000 đồng</a>
                
              </li>
            </ul>
          </div>
        </aside>
        <!-- Sidebar End-->
       
        <div class="span9">          
          <!-- Sản Phẩm Mới-->
            <section id="category">
              <div class="row">
              <h1 class="heading1" style="margin-top: 40px; margin-left: 30px;"><span class="maintext">Danh Sách Sản Phẩm</span><span class="subtext"></span></h1>
                <div class="span9">
                 <!-- Category-->
                  <section id="categorygrid">
                    <ul class="thumbnails grid">
                    @foreach($price_100 as $item_price_100)                  
                      <li class="span3">
                        <a class="prdocutname" href="{{url('chi-tiet-san-pham',[$item_price_100->product_id,$item_price_100->alias])}}">{{$item_price_100->name}}</a>
                        <div class="thumbnail">
                          <span class="sale tooltip-test">Sale</span>
                          <a href="{{url('chi-tiet-san-pham',[$item_price_100->product_id,$item_price_100->alias])}}"><img  data-original-title="{{$item_price_100->name}}" src="{{ asset('resources/upload/'.$item_price_100->image)}}"></a>
                          <div class="pricetag">
                            <span class="spiral"></span><a href="{{url('mua-hang',[$item_price_100->product_id,$item_price_100->alias])}}" class="productcart">Thêm Vào Giỏ</a>
                            <div class="price">
                              <div class="pricenew">{{number_format($item_price_100->price,0,",",".") }}</div>
                              <div class="priceold">{{number_format($item_price_100->price*1.2,0,",",".") }}</div>
                            </div>
                          </div>
                        </div>
                      </li>
                      @endforeach
                    </ul>
                  </section>
                <!-- end Sản Phẩm Mới--> 
                 <div class="pagination pull-right">
                      <!--phân trang-->
                      {{$price_100->links()}}
                  </div>
              </div>
            </div>
          </section>
        </div>
      </div>
    </div>
  </section>

</div>
@endsection