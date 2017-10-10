
<header>
  <div class="headerstrip">
    <div class="container">
      <div class="row">
        <div class="span12">
          <a href="{{url('/')}}" class="logo pull-left"><img src="{{url('public/frontend/img/lavender.png')}}" alt="SimpleOne" title="SimpleOne"></a>
          <!-- Top Nav Start -->
          <div class="pull-left">
            <div class="navbar" id="topnav">
              <div class="navbar-inner">
                <ul class="nav" >

                  <li><a class="myaccount" href="{{url('dang-nhap-khach-hang')}}"><?php
                          if(Auth::guard('customers')->check())
                          {
                             
                          }
                          else
                               echo "Đăng Nhập";
                          ?></a>
                  </li>


                  <li><a class="shoppingcart" href="{{url('gio-hang')}}">Giỏ Hàng<?php if(count(Cart::content())>0) echo " (".count(Cart::content()).")"; ?></a>
                  </li>
                  <li><a class="checkout" href="{{url('dat-hang')}}">Đặt Hàng</a>
                  </li>
                  <li><a class="myaccount" href="{{url('dang-xuat-khach-hang')}}"><?php if(Auth::guard('customers')->check())
                          {
                              echo "Đăng Xuất";
                          } ?></a>
                  </li>
                     <li><a class="myaccount" href=""><?php
                          if(Auth::guard('customers')->check())
                          {
                             echo "Chào ".Auth::guard('customers')->user()->username;
                          }
                         
                          ?></a>
                  </li>
                 <!--  <li>

                    <input type="text" class="search" placeholder="Nhập tìm kiếm " style="margin-bottom: 7px;">
                    <input type="submit" name="" value="Tìm" style="margin-bottom: 7px; background: #FFBF69;-moz-border-radius: 3px;
-webkit-border-radius: 3px;">
                  </li> -->
                  

                </ul>
              </div>
            </div>
          </div>
          <!-- Top Nav End -->
        </div>
      </div>
    </div>
  </div>
  
</header>