<div class="container">

    <div id="categorymenu">
      <nav class="subnav">
        <ul class="nav-pills categorymenu">

          </li>
          <li><a href="{{url('/')}}" class="">Trang Chủ</a>
          </li> 

            <li><a   href="">Sản Phẩm Lavender</a>
              <div>
                <ul>
                  <?php $menu = DB::table('categories')->get(); ?>
                  @foreach($menu as $item_menu)
                  <li>
                    <a href="{{url('loai-san-pham',[$item_menu->category_id,$item_menu->alias])}}">{{$item_menu->name}}</a>
                  </li>
                  @endforeach
                </ul>
              </div>
              
              </li>
          <li><a   href="">Sản Phẩm Theo Giá</a>
            <div>
              <ul>

                  <li>
                    <a href="{{url('theo-gia-100')}}">100.000 - 300.000 đồng</a>
                  </li>
                <li>
                  <a href="{{url('theo-gia-300')}}">300.000 - 500.000 đồng</a>
                </li>
                <li>
                  <a href="{{url('theo-gia-500')}}">Trên 500.000 đồng</a>
                </li>

              </ul>
            </div>

          </li>
             <li><a href="{{url('gioi-thieu')}}">Giới Thiệu</a>
            </li> 
            </li>
            <li><a href="{{url('tin-tuc')}}">Tin Tức</a>
          </li> 
          <li><a href="{{url('lien-he')}}">Liên Hệ</a>
          </li>         
        </ul>
      </nav>
    </div>
</div>