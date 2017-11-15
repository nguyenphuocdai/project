Trizzy-Shop
<br>
Thông báo đến bạn !
<br>
Hiện tại cửa hàng chúng tôi, đã nhận được đơn hàng của bạn do số lượng hàng trong kho không đủ đáp ứng nên chúng tôi nợ bạn lại <h4> <?php
$customer  = Auth::guard('customers')->user();
$order = DB::table('orders')->where('customer_id',$customer->customer_id)->get();
foreach($order as $orderNote){
	$check=DB::table('orders_detail')->where('order_id',$orderNote->order_id)->get();
	foreach($check as $checkTamp){
		$tamp = DB::table('products')->where('product_id',$checkTamp->product_id)->first();
	if($checkTamp->note == 0){
}
else{
echo "- Thiếu " .substr($checkTamp->note,1,4).": ".$tamp->name."<br>";
}
}
}
?></h4>
<br>
Chúng tôi sẽ giao đến bạn đầy đủ khi có hàng! Xin cảm ơn.