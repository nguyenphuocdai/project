@extends('pages.master')
@section('content')
<!-- Titlebar
================================================== -->
<section class="titlebar">
<div class="container">
	<div class="sixteen columns">
		<h2>Shop</h2>
		
		<nav id="breadcrumbs">
			<ul>
				<li><a href="#">Trang chủ</a></li>
				<?php $pr = DB::table('categories')->select('name','category_id')->where('category_id',$pr_detail->category_id)->first(); ?>
				<li><a href="#">{{ $pr->name }}</a></li>
				<li>{{$pr_detail->name}}</li>
			</ul>
		</nav>
	</div>
</div>
</section>


<div class="container">

<!-- Slider
================================================== -->
	<div class="eight columns" >
		<div class="slider-padding">
			<div id="product-slider" class="royalSlider rsDefault">
			    <img class="rsImg" src="{{ asset('resources/upload/'.$pr_detail->image)}}" data-rsTmb="{{ asset('resources/upload/'.$pr_detail->image)}}" alt="" />
			 </div>
			 <div class="clearfix"></div>
		</div>
	</div>


<!-- Content
================================================== -->
	<div class="eight columns">
		<div class="product-page">
			
			<!-- Headline -->
			<section class="title">
				<h2>{{$pr_detail->name}}</h2>
				<span class="product-price-discount">{{number_format($pr_detail->price*1.2,0,",",".") }}<i>{{number_format($pr_detail->price,0,",",".") }}</i></span>

				<div class="reviews-counter">
					<div class="rating five-stars">
						<div class="star-rating"></div>
						<div class="star-bg"></div>
					</div>
					<span>3 Đánh giá</span>
				</div>
			</section>

			<!-- Text Parapgraph -->
			<section>
				<p class="margin-reset"><?php echo $pr_detail->describe;   ?></p>

				<!-- Share Buttons -->	
				<div class="share-buttons">
					<ul>
						<li><a href="#">Share</a></li>
						<li class="share-facebook"><a href="#">Facebook</a></li>
						<li class="share-twitter"><a href="#">Twitter</a></li>
						<li class="share-gplus"><a href="#">Google Plus</a></li>
						<li class="share-pinit"><a href="#">Pin It</a></li>
					</ul>
				</div>
				<div class="clearfix"></div>

			</section>


			<!-- Variables -->
			{{-- <section class="variables">

				<div class="four alpha columns">
					<label for="size">Size</label>
					<select id="size" name="size">
						<option>S</option>
						<option>M</option>
						<option>L</option>
						<option>XL</option>
					</select>
				</div>

				<div class="four omega columns">
					<label for="color">Color</label>
					<select id="color" name="color">
						<option>Blue</option>
						<option>Green</option>
						<option>Red</option>
					</select>
				</div>
				<div class="clearfix"></div>

			</section>
 --}}

			<section class="linking">

					<form action='#'>
					    <div class="qtyminus"></div>
					    <input type='text' name="quantity" value='1' class="qty" />
					    <div class="qtyplus"></div>
					</form>

					<a href="#" class="button adc">Thêm vào giỏ hàng</a>
					<div class="clearfix"></div>

			</section>

		</div>
	</div>

</div>


<div class="container">
	<div class="sixteen columns">
			<!-- Tabs Navigation -->
			<ul class="tabs-nav">
				<li class="active"><a href="#tab1">Mô tả sản phẩm</a></li>
				<li><a href="#tab2">Thông tin bổ sung</a></li>
				<li><a href="#tab3">Đánh giá <span class="tab-reviews">(3)</span></a></li>
			</ul>

			<!-- Tabs Content -->
			<div class="tabs-container">

				<div class="tab-content" id="tab1">
					<p><?php echo $pr_detail->describe;   ?></p>
				</div>

				<div class="tab-content" id="tab2">

					<table class="basic-table">
						<tr>
							<th>Size</th>
							<td>Small, Medium, Largem, Extra Large</td>
						</tr>

						<tr>
							<th>Colors</th>
							<td>Blue, color, Red</td>
						</tr>

						<tr>
							<th>Material</th>
							<td>75% Cotton, 25% Polyester</td>
						</tr>

						<tr>
							<th>Weight</th>
							<td>N/A</td>
						</tr>
					</table>

				</div>

				<div class="tab-content" id="tab3">

					<!-- Reviews -->
					<section class="comments">

						<ul>
							<li>
								<div class="avatar"><img src="http://www.gravatar.com/avatar/00000000000000000000000000000000?d=mm&amp;s=70" alt="" /></div>
								<div class="comment-content"><div class="arrow-comment"></div>
									<div class="comment-by"><strong>John Doe</strong><span class="date">May 28, 2014</span>
										<div class="rating five-stars"><div class="star-rating"></div><div class="star-bg"></div></div>
									</div>
									<p>Maecenas dignissim euismod nunc, in commodo est luctus eget. Proin in nunc laoreet justo volutpat blandit enim. Sem felis, ullamcorper vel aliquam non, varius eget just.</p>
								</div>
							</li>

							<li>
								<div class="avatar"><img src="http://www.gravatar.com/avatar/00000000000000000000000000000000?d=mm&amp;s=70" alt="" /></div>
								<div class="comment-content"><div class="arrow-comment"></div>
									<div class="comment-by"><strong>Kathy Brown</strong><span class="date">May 18, 2014</span>
										<div class="rating five-stars"><div class="star-rating"></div><div class="star-bg"></div></div>
									</div>
									<p>Morbi velit eros, sagittis in facilisis non, rhoncus et erat. Nam posuere tristique sem, eu ultricies tortor imperdiet vitae. Curabitur lacinia neque non metus</p>
								</div>
							</li>

							<li>
								<div class="avatar"><img src="http://www.gravatar.com/avatar/00000000000000000000000000000000?d=mm&amp;s=70" alt="" /></div>
								<div class="comment-content"><div class="arrow-comment"></div>
									<div class="comment-by"><strong>John Doe</strong><span class="date">May 10, 2014</span>
										<div class="rating four-stars"><div class="star-rating"></div><div class="star-bg"></div></div>
									</div>
									<p>Commodo est luctus eget. Proin in nunc laoreet justo volutpat blandit enim. Sem felis, ullamcorper vel aliquam non, varius eget justo. Duis quis nunc tellus sollicitudin mauris.</p>
								</div>

							</li>
						 </ul>

						<a href="#small-dialog" class="popup-with-zoom-anim button color">Add Review</a>

						<div id="small-dialog" class="zoom-anim-dialog mfp-hide">
							<h3 class="headline">Add Review</h3><span class="line margin-bottom-25"></span><div class="clearfix"></div>

							<!-- Form -->
							<form id="add-comment" class="add-comment">
								<fieldset>

									<div>
										<label>Name:</label>
										<input type="text" value=""/>
									</div>

									<div>
										<label>Rating:</label>
										<span class="rate">
											<span class="star"></span>
											<span class="star"></span>
											<span class="star"></span>
											<span class="star"></span>
											<span class="star"></span>
										</span>
										<div class="clearfix"></div>
									</div>

									<div class="margin-top-20">
										<label>Email: <span>*</span></label>
										<input type="text" value=""/>
									</div>

									<div>
										<label>Review: <span>*</span></label>
										<textarea cols="40" rows="3"></textarea>
									</div>

								</fieldset>

								<a href="#" class="button color">Add Review</a>
								<div class="clearfix"></div>

							</form>
						</div>

					</section>

				</div>

			</div>
	</div>
</div>

<!-- Related Products -->
<div class="container margin-top-5">

	<!-- Headline -->
	<div class="sixteen columns">
		<h3 class="headline">Related Products</h3>
		<span class="line margin-bottom-0"></span>
	</div>

	<!-- Products -->
	<div class="products">

		<!-- Product #1 -->
		<div class="four columns">
			<figure class="product">
				<div class="mediaholder">
					<a href="#">
						<img alt="" src="images/shop_item_01.jpg"/>
						<div class="cover">
							<img alt="" src="images/shop_item_01_hover.jpg"/>
						</div>
					</a>
					<a href="#" class="product-button"><i class="fa fa-shopping-cart"></i> Add to Cart</a>
				</div>

				<a href="#">
					<section>
						<span class="product-category">Skirts</span>
						<h5>Brown Mini Skirt</h5>
						<span class="product-price">$79.00</span>
					</section>
				</a>
			</figure>
		</div>

		<!-- Product #2 -->
		<div class="four columns">
			<figure class="product">
				<div class="mediaholder">
					<a href="#">
						<img alt="" src="images/shop_item_04.jpg"/>
						<div class="cover">
							<img alt="" src="images/shop_item_04_hover.jpg"/>
						</div>
					</a>
					<a href="#" class="product-button"><i class="fa fa-shopping-cart"></i> Add to Cart</a>
				</div>

				<a href="#">
					<section>
						<span class="product-category">Shirts</span>
						<h5>Vintage Stripe Jumper</h5>
						<span class="product-price">$49.00</span>
					</section>
				</a>
			</figure>
		</div>

		<!-- Product #3 -->
		<div class="four columns">
			<figure class="product">
				<div class="mediaholder">
					<a href="#">
						<img alt="" src="images/shop_item_07.jpg"/>
						<div class="cover">
							<img alt="" src="images/shop_item_07_hover.jpg"/>
						</div>
					</a>
					<a href="#" class="product-button"><i class="fa fa-shopping-cart"></i> Add to Cart</a>
				</div>

				<a href="#">
					<section>
						<span class="product-category">Shirts</span>
						<h5>Shirt in Navy Stripe</h5>
						<span class="product-price">$49.00</span>
					</section>
				</a>
			</figure>
		</div>

		<!-- Product #4 -->
		<div class="four columns">
			<figure class="product">
				<div class="mediaholder">
					<a href="#">
						<img alt="" src="images/shop_item_09.jpg"/>
						<div class="cover">
							<img alt="" src="images/shop_item_09_hover.jpg"/>
						</div>
					</a>
					<a href="#" class="product-button"><i class="fa fa-shopping-cart"></i> Add to Cart</a>
				</div>

				<a href="#">
					<section>
						<span class="product-category">Shirts</span>
						<h5>Long Sleeve Check Shirt</h5>
						<span class="product-price">$69.00</span>
					</section>
				</a>
			</figure>
		</div>

	</div>
</div>

<div class="margin-top-50"></div>

@endsection