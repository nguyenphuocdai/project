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
        <!-- Category-->
        <div class="span9">          
          <!-- Category Products-->
          <section id="category">
            <div class="row">
              <div class="span9">
               <!-- Category-->
                <section id="categorygrid">
                  <ul class="thumbnails grid">
                  @foreach($pr_cate as $item_pr_cate)                  
                    <li class="span3">
                      <a class="prdocutname" href="{{url('chi-tiet-san-pham',[$item_pr_cate->product_id,$item_pr_cate->alias])}}">{{$item_pr_cate->name}}</a>
                      <div class="thumbnail">
                        <span class="sale tooltip-test">Sale</span>
                        <a href="{{url('chi-tiet-san-pham',[$item_pr_cate->product_id,$item_pr_cate->alias])}}"><img alt="" class="image-responsive" src="{{ asset('resources/upload/'.$item_pr_cate->image)}}"></a>
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
              
                  <div class="pagination pull-right">
                      <!--phân trang-->
                      {{$pr_cate->links()}}
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
@endsection