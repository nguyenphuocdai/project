@extends('frontend.master')
@section('content')
<div id="maincontainer">
  <section id="product">
    <div class="container">
     <!--  breadcrumb --> 
      <ul class="breadcrumb">
        <li>
          <a href="#">Trang chủ </a>
          <span class="divider">/</span>
        </li>
        <li class="active"> Tin Tức</li>
      </ul>       
      <h1 class="heading1"><span class="maintext"> Tin Tức</span><span class="subtext"> Các bài viết về hoa Lavender</span></h1>
      <!-- Cart-->
        @include('admin.danger.danger')
                 <div class="row">
                    <div class="col-lg-12">
                    @if(Session::has('flash_message'))
                        <div class="alert alert-{{Session::get('flash_level')}}">
                            {{Session::get('flash_message')}}
                        </div>
                    @endif
                    </div>
                </div>
      <div class="cart-info">
        <table class="table table-striped" style="border: 0;">
        	<form method="post" action="">
		        <input type="hidden" name="_token" value="{{csrf_token()}}">
		        @foreach($news as $n)
		          <tr>
		            <th class="image" style="width: 200px; height: 120px;"><img width="120px" height="80px" src="{{ asset('resources/news/'.$n->image)}}" alt=""></th>
		            <th class="name"><a href="{{url('tin-tuc/chi-tiet/'.$n->news_id)}}"><h3>{{$n->tittle}}</a></h3><br>{{$n->intro}}<a href="{{url('tin-tuc/chi-tiet/'.$n->news_id)}}">...Đọc tiếp</a></th>
		          </tr>
		        @endforeach
            
        	</form>
        </table>
         <div class="pagination pull-right">
                      <!--phân trang-->
                      {{$news->links()}}
                  </div>
          
      </div>


            
    </div>
  </section>
</div>
@endsection