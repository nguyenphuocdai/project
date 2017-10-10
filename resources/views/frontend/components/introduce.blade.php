
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
        <li class="active">Giới Thiệu</li>
      </ul>  
      <!-- Contact Us-->
      
       @include('admin.danger.danger')
      <h1 class="heading1"><span class="maintext">Giới Thiệu</span><span class="subtext"> Hoa Thơm Càng Lâu - Nhớ Người Càng Lâu</span></h1>
      <div class="row">
        <div class="span8">
        <span style="color:#000000"><span style="font-size:16px">
         <h4>Lavender - XuKha</h4><h5 style="color:#000000; font-size:16px">-  Chuyên cung cấp sỉ, lẻ hoa khô lavender / oải hương khô nhập từ Pháp và các sản phẩm từ oải hương Pháp của hãng Le Chatelard 1802 Pháp:
True lavender, lavendin, túi thơm nụ hoa oải hương khô, nước hoa lavender, tinh dầu oải hương, trà lavender…</h5>
<h5 style="color:#000000; font-size:16px">- Ngoài ra shop còn có nhiều mặt hàng khác như: lúa mạch khô, phi yến khô, Glixia, Snowy, Groom Bloom, các lọ hoa thủy tin để trang trí làm tôn vinh lên vẻ đẹp cao sang của hoa</h5>

<h5 style="color:#000000; font-size:16px">* Điều gì làm nên uy tín của THẾ GIỚI LAVENDER</h5>
<h5 style="color:#000000; font-size:16px">1. Chất lượng hoa lavender khô Pháp luôn ổn định về màu sắc và hương thơm. THẾ GIỚI LAVENDER chỉ bán hoa lavender khô duy nhất 1 nguồn hàng từ Pháp, không bán hoa lavender khô của Trung Quốc, Anh, Mỹ… Hoa lavender khô của Shop thơm tự nhiên, được bọc kín bảo quản kỹ từ khi nhập về cho đến khi đến tay khách hàng, không xịt hương nhân tạo hay tẩm màu!</h5>

<h5 style="color:#000000; font-size:16px">2. Tận tình tư vấn, phục vụ khách hàng chu đáo, nhiệt tình từ những điều nhỏ nhặt nhất.</h5>

<h5 style="color:#000000; font-size:16px">3. Luôn tìm tòi, sáng tạo để tạo ra những mẫu mới phục vụ nhu cầu đa dạng của khách hàng.</h5>

<h5 style="color:#000000; font-size:16px">4. Nguồn hàng ổn định, luôn có số lượng trữ hàng vừa đủ cho từng tháng, hàng luôn mới, theo đúng quy trình FIFO nhập trước xuất trước.</h5>

<h5 style="color:#000000; font-size:16px">5. Khách hàng có thể yên tâm về nguồn hàng, Shop có thể chỉ bạn cách phân biệt hoa lavender khô nguồn từ Pháp, Anh, Mỹ, Trung Quốc qua hình dạng hoa. Phân biệt hoa qua hình dạng là cách an toàn nhất để các bạn không bị nhầm hàng khi mua hàng bất kỳ ở đâu mà không cần xem qua giấy chứng nhận xuất xứ hoa.</h5>
        </div>
        
       <div class="span4">
          <aside>
            <div class="sidewidt">
              <img src="{{url('public/frontend/img/gioithieu.png')}}" alt="">
              
            </div>
          </aside>
        </div>
        
      </div>
       
    </div>
  </section>
</div>
@endsection