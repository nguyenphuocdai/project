@extends('pages.master')
@section('content')
<section class="titlebar">
	<div class="container">
		<div class="sixteen columns">
			<h2>Thanh Toán</h2>
			
			<nav id="breadcrumbs">
				<ul>
					<li><a href="#">Trang Chủ</a></li>
					<li><a href="#">Giỏ hàng</a></li>
					<li><a href="#">Thanh toán</a></li>
					<li>Chi tiết thanh toán</li>
				</ul>
			</nav>
		</div>
	</div>
</section>
<!-- Content
================================================== -->
<!-- Container -->
<div class="container">
<div class="sixteen columns full-width">
	<div class="checkout-section active"><span>1</span>Thông tin khách hàng</div>
	<ul class="address-review">
		<li><?php if(Auth::guard('customers')->user())
                        {
                          $tamp = Auth::guard('customers')->user();
                          echo "<div>Tài khoản: ".$tamp->username."</div>";
                          
                          echo "<div>Họ và tên: ".$tamp->name."</div>";
                           
                          echo "<div>Số điện thoại: ".$tamp->phone_number."</div>";

                          echo "<div>Địa chỉ nhận hàng: ".$tamp->address."</div>";
                        }
                        else{
                        	echo "Nếu chưa có tài khoản"." "."<strong><a href=dang-ky-khach-hang>Ấn vào đây </a></strong>";
                        }
                        ?></li>
                       <li><label class="control-label" ><?php if(Auth::guard('customers')->user())
                      echo "";
                      else 
                        echo "Vui lòng đăng nhập để có thể đặt hàng"." "."<strong><a >"."<a href=dang-nhap-khach-hang>Ấn vào đây </a>"."</a></strong>";
                       ?>
                      </label></li>
	</ul>
</div>
</div>
<div class="container">
<div class="eight columns">
	<!-- Billing Details Content -->
	<div class="checkout-section active"><span>2</span>Chi tiết thanh toán</div>
	<div class="checkout-content">
		<div class="fullwidth">
			<label class="billing">Country: <abbr>*</abbr></label>
			<select ><option value="">Select a country&hellip;</option><option value="AX" >&#197;land Islands</option><option value="AF" >Afghanistan</option><option value="AL" >Albania</option><option value="DZ" >Algeria</option><option value="AD" >Andorra</option><option value="AO" >Angola</option><option value="AI" >Anguilla</option><option value="AQ" >Antarctica</option><option value="AG" >Antigua and Barbuda</option><option value="AR" >Argentina</option><option value="AM" >Armenia</option><option value="AW" >Aruba</option><option value="AU" >Australia</option><option value="AT" >Austria</option><option value="AZ" >Azerbaijan</option><option value="BS" >Bahamas</option><option value="BH" >Bahrain</option><option value="BD" >Bangladesh</option><option value="BB" >Barbados</option><option value="BY" >Belarus</option><option value="PW" >Belau</option><option value="BE" >Belgium</option><option value="BZ" >Belize</option><option value="BJ" >Benin</option><option value="BM" >Bermuda</option><option value="BT" >Bhutan</option><option value="BO" >Bolivia</option><option value="BQ" >Bonaire, Saint Eustatius and Saba</option><option value="BA" >Bosnia and Herzegovina</option><option value="BW" >Botswana</option><option value="BV" >Bouvet Island</option><option value="BR" >Brazil</option><option value="IO" >British Indian Ocean Territory</option><option value="VG" >British Virgin Islands</option><option value="BN" >Brunei</option><option value="BG" >Bulgaria</option><option value="BF" >Burkina Faso</option><option value="BI" >Burundi</option><option value="KH" >Cambodia</option><option value="CM" >Cameroon</option><option value="CA" >Canada</option><option value="CV" >Cape Verde</option><option value="KY" >Cayman Islands</option><option value="CF" >Central African Republic</option><option value="TD" >Chad</option><option value="CL" >Chile</option><option value="CN" >China</option><option value="CX" >Christmas Island</option><option value="CC" >Cocos (Keeling) Islands</option><option value="CO" >Colombia</option><option value="KM" >Comoros</option><option value="CG" >Congo (Brazzaville)</option><option value="CD" >Congo (Kinshasa)</option><option value="CK" >Cook Islands</option><option value="CR" >Costa Rica</option><option value="HR" >Croatia</option><option value="CU" >Cuba</option><option value="CW" >Cura&Ccedil;ao</option><option value="CY" >Cyprus</option><option value="CZ" >Czech Republic</option><option value="DK" >Denmark</option><option value="DJ" >Djibouti</option><option value="DM" >Dominica</option><option value="DO" >Dominican Republic</option><option value="EC" >Ecuador</option><option value="EG" >Egypt</option><option value="SV" >El Salvador</option><option value="GQ" >Equatorial Guinea</option><option value="ER" >Eritrea</option><option value="EE" >Estonia</option><option value="ET" >Ethiopia</option><option value="FK" >Falkland Islands</option><option value="FO" >Faroe Islands</option><option value="FJ" >Fiji</option><option value="FI" >Finland</option><option value="FR" >France</option><option value="GF" >French Guiana</option><option value="PF" >French Polynesia</option><option value="TF" >French Southern Territories</option><option value="GA" >Gabon</option><option value="GM" >Gambia</option><option value="GE" >Georgia</option><option value="DE" >Germany</option><option value="GH" >Ghana</option><option value="GI" >Gibraltar</option><option value="GR" >Greece</option><option value="GL" >Greenland</option><option value="GD" >Grenada</option><option value="GP" >Guadeloupe</option><option value="GT" >Guatemala</option><option value="GG" >Guernsey</option><option value="GN" >Guinea</option><option value="GW" >Guinea-Bissau</option><option value="GY" >Guyana</option><option value="HT" >Haiti</option><option value="HM" >Heard Island and McDonald Islands</option><option value="HN" >Honduras</option><option value="HK" >Hong Kong</option><option value="HU" >Hungary</option><option value="IS" >Iceland</option><option value="IN" >India</option><option value="ID" >Indonesia</option><option value="IR" >Iran</option><option value="IQ" >Iraq</option><option value="IM" >Isle of Man</option><option value="IL" >Israel</option><option value="IT" >Italy</option><option value="CI" >Ivory Coast</option><option value="JM" >Jamaica</option><option value="JP" >Japan</option><option value="JE" >Jersey</option><option value="JO" >Jordan</option><option value="KZ" >Kazakhstan</option><option value="KE" >Kenya</option><option value="KI" >Kiribati</option><option value="KW" >Kuwait</option><option value="KG" >Kyrgyzstan</option><option value="LA" >Laos</option><option value="LV" >Latvia</option><option value="LB" >Lebanon</option><option value="LS" >Lesotho</option><option value="LR" >Liberia</option><option value="LY" >Libya</option><option value="LI" >Liechtenstein</option><option value="LT" >Lithuania</option><option value="LU" >Luxembourg</option><option value="MO" >Macao S.A.R., China</option><option value="MK" >Macedonia</option><option value="MG" >Madagascar</option><option value="MW" >Malawi</option><option value="MY" >Malaysia</option><option value="MV" >Maldives</option><option value="ML" >Mali</option><option value="MT" >Malta</option><option value="MH" >Marshall Islands</option><option value="MQ" >Martinique</option><option value="MR" >Mauritania</option><option value="MU" >Mauritius</option><option value="YT" >Mayotte</option><option value="MX" >Mexico</option><option value="FM" >Micronesia</option><option value="MD" >Moldova</option><option value="MC" >Monaco</option><option value="MN" >Mongolia</option><option value="ME" >Montenegro</option><option value="MS" >Montserrat</option><option value="MA" >Morocco</option><option value="MZ" >Mozambique</option><option value="MM" >Myanmar</option><option value="NA" >Namibia</option><option value="NR" >Nauru</option><option value="NP" >Nepal</option><option value="NL" >Netherlands</option><option value="AN" >Netherlands Antilles</option><option value="NC" >New Caledonia</option><option value="NZ" >New Zealand</option><option value="NI" >Nicaragua</option><option value="NE" >Niger</option><option value="NG" >Nigeria</option><option value="NU" >Niue</option><option value="NF" >Norfolk Island</option><option value="KP" >North Korea</option><option value="NO" >Norway</option><option value="OM" >Oman</option><option value="PK" >Pakistan</option><option value="PS" >Palestinian Territory</option><option value="PA" >Panama</option><option value="PG" >Papua New Guinea</option><option value="PY" >Paraguay</option><option value="PE" >Peru</option><option value="PH" >Philippines</option><option value="PN" >Pitcairn</option><option value="PL" >Poland</option><option value="PT" >Portugal</option><option value="QA" >Qatar</option><option value="IE" >Republic of Ireland</option><option value="RE" >Reunion</option><option value="RO" >Romania</option><option value="RU" >Russia</option><option value="RW" >Rwanda</option><option value="ST" >S&atilde;o Tom&eacute; and Pr&iacute;ncipe</option><option value="BL" >Saint Barth&eacute;lemy</option><option value="SH" >Saint Helena</option><option value="KN" >Saint Kitts and Nevis</option><option value="LC" >Saint Lucia</option><option value="SX" >Saint Martin (Dutch part)</option><option value="MF" >Saint Martin (French part)</option><option value="PM" >Saint Pierre and Miquelon</option><option value="VC" >Saint Vincent and the Grenadines</option><option value="SM" >San Marino</option><option value="SA" >Saudi Arabia</option><option value="SN" >Senegal</option><option value="RS" >Serbia</option><option value="SC" >Seychelles</option><option value="SL" >Sierra Leone</option><option value="SG" >Singapore</option><option value="SK" >Slovakia</option><option value="SI" >Slovenia</option><option value="SB" >Solomon Islands</option><option value="SO" >Somalia</option><option value="ZA" >South Africa</option><option value="GS" >South Georgia/Sandwich Islands</option><option value="KR" >South Korea</option><option value="SS" >South Sudan</option><option value="ES" >Spain</option><option value="LK" >Sri Lanka</option><option value="SD" >Sudan</option><option value="SR" >Suriname</option><option value="SJ" >Svalbard and Jan Mayen</option><option value="SZ" >Swaziland</option><option value="SE" >Sweden</option><option value="CH" >Switzerland</option><option value="SY" >Syria</option><option value="TW" >Taiwan</option><option value="TJ" >Tajikistan</option><option value="TZ" >Tanzania</option><option value="TH" >Thailand</option><option value="TL" >Timor-Leste</option><option value="TG" >Togo</option><option value="TK" >Tokelau</option><option value="TO" >Tonga</option><option value="TT" >Trinidad and Tobago</option><option value="TN" >Tunisia</option><option value="TR" >Turkey</option><option value="TM" >Turkmenistan</option><option value="TC" >Turks and Caicos Islands</option><option value="TV" >Tuvalu</option><option value="UG" >Uganda</option><option value="UA" >Ukraine</option><option value="AE" >United Arab Emirates</option><option value="GB" >United Kingdom (UK)</option><option value="US"  selected='selected'>United States (US)</option><option value="UY" >Uruguay</option><option value="UZ" >Uzbekistan</option><option value="VU" >Vanuatu</option><option value="VA" >Vatican</option><option value="VE" >Venezuela</option><option value="VN" >Vietnam</option><option value="WF" >Wallis and Futuna</option><option value="EH" >Western Sahara</option><option value="WS" >Western Samoa</option><option value="YE" >Yemen</option><option value="ZM" >Zambia</option><option value="ZW" >Zimbabwe</option></select>
		</div>
		<div class="half first"><label>First Name: <abbr>*</abbr></label><input type="text" placeholder=""  value="" /></div>
		<div class="half"><label>Last Name: <abbr>*</abbr></label><input type="text" placeholder=""  value="" /></div>
		<label>Street Address: <abbr>*</abbr></label><input type="text" class="input-text "  value=""  />
		<div class="half first"><label>Town / City:  <abbr>*</abbr></label><input type="text" placeholder=""  value="" /></div>
		<div class="half"><label>Postcode / Zip:<abbr>*</abbr></label><input type="text" placeholder=""  value="" /></div>
		<div class="fullwidth">
			<label>State: <abbr>*</abbr></label>
			<select><option value="">Select a state&hellip;</option><option value="AL" >Alabama</option><option value="AK" >Alaska</option><option value="AZ" >Arizona</option><option value="AR" >Arkansas</option><option value="CA" >California</option><option value="CO" >Colorado</option><option value="CT" >Connecticut</option><option value="DE" >Delaware</option><option value="DC" >District Of Columbia</option><option value="FL" >Florida</option><option value="GA" >Georgia</option><option value="HI" >Hawaii</option><option value="ID" >Idaho</option><option value="IL" >Illinois</option><option value="IN" >Indiana</option><option value="IA" >Iowa</option><option value="KS" >Kansas</option><option value="KY" >Kentucky</option><option value="LA" >Louisiana</option><option value="ME" >Maine</option><option value="MD" >Maryland</option><option value="MA" >Massachusetts</option><option value="MI" >Michigan</option><option value="MN" >Minnesota</option><option value="MS" >Mississippi</option><option value="MO" >Missouri</option><option value="MT" >Montana</option><option value="NE" >Nebraska</option><option value="NV" >Nevada</option><option value="NH" >New Hampshire</option><option value="NJ" >New Jersey</option><option value="NM" >New Mexico</option><option value="NY" >New York</option><option value="NC" >North Carolina</option><option value="ND" >North Dakota</option><option value="OH" >Ohio</option><option value="OK" >Oklahoma</option><option value="OR" >Oregon</option><option value="PA" >Pennsylvania</option><option value="RI" >Rhode Island</option><option value="SC" >South Carolina</option><option value="SD" >South Dakota</option><option value="TN" >Tennessee</option><option value="TX" >Texas</option><option value="UT" >Utah</option><option value="VT" >Vermont</option><option value="VA" >Virginia</option><option value="WA" >Washington</option><option value="WV" >West Virginia</option><option value="WI" >Wisconsin</option><option value="WY" >Wyoming</option><option value="AA" >Armed Forces (AA)</option><option value="AE" >Armed Forces (AE)</option><option value="AP" >Armed Forces (AP)</option><option value="AS" >American Samoa</option><option value="GU" >Guam</option><option value="MP" >Northern Mariana Islands</option><option value="PR" >Puerto Rico</option><option value="UM" >US Minor Outlying Islands</option><option value="VI" >US Virgin Islands</option></select>
		</div>
		<div class="half first"><label>Email Adress: <abbr>*</abbr></label><input type="text" placeholder=""  value="" /></div>
		<div class="half"><label>Phone: <abbr>*</abbr></label><input type="text" placeholder=""  value="" /></div>
		<div class="clearfix"></div>
		
		<span class="shippping-checkbox"><input class="input-checkbox" id="shipping-address"  type="checkbox" name="shipping-address" checked="checked" value="1" />
		<label for="shipping-address" class="checkbox">Thanh toán tại địa chỉ giao hàng</label></span>
		<div class="clearfix"></div>
	</div>
	<div class="clearfix"></div>
	<a href="checkout-delivery.html" class="continue button color">Đồng ý</a>
	{{-- 			<a href="checkout-delivery.html"><div class="checkout-section"><span>2</span> Delivery</div></a>
	<a href="checkout-payment-order-review.html"><div class="checkout-section"><span>3</span> Payment & Order Review</div></a> --}}
</div>
<!-- Billing Details / Enc -->
<!-- Checkout Cart -->
<div class="eight columns">
	<div class="checkout-section cart">Giỏ hàng</div>
	<!-- Cart -->
	<table class="checkout cart-table responsive-table">
		<tr>
			<th class="hide-on-mobile">Hình ảnh</th>
			<th>Tên sản phẩm</th>
			<th>Giá</th>
			<th>Số lượng</th>
			<th>Thành tiền</th>
		</tr>
		
		<!-- Item #1 -->
		@foreach($content as $item_content)
		<tr>
			<td class="hide-on-mobile"><img src="{{ asset('resources/upload/'.$item_content->options->img)}}" alt=""/></td>
			<td class="cart-title"><a href="#">{{ $item_content->name }}</a></td>
			<td>{{number_format($item_content->price,0,",",".")}}</td>
			<td class="qty-checkout">{{$item_content->qty}}</td>
			<td class="cart-total">{{number_format($item_content->price*$item_content->qty,0,",",".")}}</td>
		</tr>
		@endforeach
	</table>
	<!-- Apply Coupon Code / Buttons -->
	<table class="cart-table bottom">
		<tr>
			<th class="checkout-totals">
				<div class="checkout-subtotal">
					Tổng tiền: <span>{{ $total }}</span>
				</div>
			</th>
		</tr>
	</table>
</div>
<!-- Checkout Cart / End -->
</div>
<!-- Container / End -->
<div class="margin-top-50"></div>
@endsection