@extends('frontend.master')
@section('content')

  <!-- Latest Product-->
  <!-- <section id="latest" class="row">
    <div class="container">
      <h1 class="heading1" style="margin-top: 40px;"><span class="maintext">Sản Phẩm Mới Nhất</span><span class="subtext"></span></h1>

      <ul class="thumbnails">
        @foreach($pr as $item)
        <li class="span3">
          <a class="prdocutname" href="{{ url('chi-tiet-san-pham',[$item->product_id,$item->alias]) }}">{{$item->name}}</a>
          <div class="thumbnail">
            <a href="{{ url('chi-tiet-san-pham',[$item->product_id,$item->alias]) }}"><img alt="" src="{{ asset('resources/upload/'.$item->image)}}"></a>
            <div class="pricetag">
              <span class="spiral"></span><a href="{{url('mua-hang',[$item->product_id,$item->alias])}}" class="productcart">Thêm Vào Giỏ</a>
              <div class="price">
                <div class="pricenew">{{number_format($item->price,0,",",".") }}</div>
                <div class="priceold">{{number_format($item->price*1.2,0,",",".") }}</div>
              </div>
            </div>
          </div>
        </li>
        @endforeach
      </ul>
    </div>
  </section>
  <section id="latest" class="row">
    <div class="container">
      <h1 class="heading1"><span class="maintext">Sản Phẩm Xem Nhiều</span><span class="subtext"></span></h1>
      <ul class="thumbnails">
      @foreach($pr_view as $item_pr_view)
        <li class="span3">
          <a class="prdocutname" href="{{ url('chi-tiet-san-pham',[$item_pr_view->product_id,$item_pr_view->alias]) }}">{{$item_pr_view->name}}</a>
          <div class="thumbnail">
            <a href="{{ url('chi-tiet-san-pham',[$item_pr_view->product_id,$item_pr_view->alias]) }}"><img alt="" src="{{ asset('resources/upload/'.$item_pr_view->image)}}"></a>
            <div class="pricetag">
              <span class="spiral"></span><a href="{{url('mua-hang',[$item_pr_view->product_id,$item_pr_view->alias])}}" class="productcart">Thêm Vào Giỏ</a>
              <div class="price">
                <div class="pricenew">{{number_format($item_pr_view->price,0,",",".") }}</div>
                <div class="priceold">{{number_format($item_pr_view->price*1.2,0,",",".") }}</div>
              </div>
            </div>
          </div>
        </li>
      @endforeach
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
                    @foreach($pr_cate as $item_pr_cate)                  
                      <li class="span3">
                        <a class="prdocutname" href="{{url('chi-tiet-san-pham',[$item_pr_cate->product_id,$item_pr_cate->alias])}}">{{$item_pr_cate->name}}</a>
                        <div class="thumbnail">
                          <span class="sale tooltip-test">Sale</span>
                          <a href="{{url('chi-tiet-san-pham',[$item_pr_cate->product_id,$item_pr_cate->alias])}}"><img alt="" class="image-responsive"  src="{{ asset('resources/upload/'.$item_pr_cate->image)}}"></a>
                          <div class="pricetag">
                            <span class="spiral"></span><a href="{{url('mua-hang',[$item_pr_cate->product_id,$item_pr_cate->alias])}}" class="productcart">Thêm Vào Giỏ</a>                     
                            <div class="price">
                              <div class="pricenew">{{number_format($item_pr_cate->price,0,",",".") }}</div>
                              <div class="priceold">{{number_format($item_pr_cate->price*1.2,0,",",".") }}</div>
                            </div>
                          </div>
                        </div>
                      </li>
                      @endforeach
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
                    @foreach($pr_view as $item_pr_view)                  
                      <li class="span3">
                        <a class="prdocutname" href="{{ url('chi-tiet-san-pham',[$item_pr_view->product_id,$item_pr_view->alias]) }}">{{$item_pr_view->name}}</a>
                        <div class="thumbnail">
                          <span class="sale tooltip-test">Sale</span>
                          <a href="{{ url('chi-tiet-san-pham',[$item_pr_view->product_id,$item_pr_view->alias]) }}"><img alt="" class="image-responsive"  src="{{ asset('resources/upload/'.$item_pr_view->image)}}"></a>
                          <div class="pricetag">
                            <span class="spiral"></span><a href="{{url('mua-hang',[$item_pr_view->product_id,$item_pr_view->alias])}}" class="productcart">Thêm Vào Giỏ</a>                     
                            <div class="price">
                              <div class="pricenew">{{number_format($item_pr_view->price,0,",",".") }}</div>
                              <div class="priceold">{{number_format($item_pr_view->price*1.2,0,",",".") }}</div>
                            </div>
                          </div>
                        </div>
                      </li>
                      @endforeach
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
@endsection