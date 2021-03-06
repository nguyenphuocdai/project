<?php
use Illuminate\Support\Facades\Auth;
Route::get('dangnhap','UsersController@getDangNhap');
Route::post('dangnhap','UsersController@postDangNhap');
Route::get('dangxuat','UsersController@getDangXuat');
Route::post('test/delimage','ProductsController@deleteImageProduct')->name('deleteImageProduct');


Auth::routes();
// ,'middleware'=>'Login'
Route::group(['prefix'=>'admin','middleware'=>'Login'],function(){
	Route::get('tong-quan', 'DashboardController@index');
	Route::get('chat','ChatController@index');
	

	Route::group(['prefix'=>'coupon'],function(){
		Route::get('list',['as'=>'admin.coupon.list','uses'=>'CouponControlller@index']);
		Route::get('add',['as'=>'admin.coupon.add','uses'=>'CouponControlller@getAdd']);
		Route::post('add','CouponControlller@postAdd')->name('postnhaphang');
		Route::get('coupondetail/{coupon_id}',['as'=>'admin.coupon.coupondetail','uses'=>'CouponControlller@getCouponDetail']);
		Route::get('delete/{id}',['as'=>'admin.coupon.delete','uses'=>'CouponControlller@getDelete']);
		});	
	Route::group(['prefix'=>'categories'],function(){
		Route::get('list',['as'=>'admin.categories.list','uses'=>'CategoriesController@getList']);
		Route::get('add',['as'=>'admin.categories.add','uses'=>'CategoriesController@getAdd']);
		Route::post('add',['as'=>'admin.categories.add','uses'=>'CategoriesController@postAdd']);
		Route::get('delete/{category_id}',['as'=>'admin.categories.delete','uses'=>'CategoriesController@getDelete']);
		Route::post('delete',['as'=>'delete','uses'=>'CategoriesController@MultiDelete']);
		Route::get('edit/{category_id}',['as'=>'admin.categories.getEdit','uses'=>'CategoriesController@getEdit']);
		Route::post('edit/{category_id}',['as'=>'admin.categories.getEdit','uses'=>'CategoriesController@postEdit']);
		});
	Route::group(['prefix'=>'supplier'],function(){
		Route::get('list',['as'=>'admin.supplier.list','uses'=>'SupplierController@getList']);
		Route::get('add',['as'=>'admin.supplier.add','uses'=>'SupplierController@getAdd']);
		Route::post('add',['as'=>'admin.supplier.add','uses'=>'SupplierController@postAdd']);
		Route::get('delete/{id}',['as'=>'admin.supplier.delete','uses'=>'SupplierController@getDelete']);
		Route::post('delete',['as'=>'delete','uses'=>'SupplierController@MultiDelete']);
		Route::get('edit/{id}',['as'=>'admin.supplier.getEdit','uses'=>'SupplierController@getEdit']);
		Route::post('edit/{id}',['as'=>'admin.supplier.getEdit','uses'=>'SupplierController@postEdit']);
		});
	Route::group(['prefix'=>'products'],function(){
		Route::get('add',['as'=>'admin.products.add','uses'=>'ProductsController@getAdd']);
		Route::post('add',['as'=>'admin.products.add','uses'=>'ProductsController@postAdd']);
		Route::get('list',['as'=>'admin.products.list','uses'=>'ProductsController@getList']);
		Route::get('delete/{product_id}',['as'=>'admin.products.delete','uses'=>'ProductsController@getDelete']);
		Route::get('edit/{product_id}',['as'=>'admin.products.edit','uses'=>'ProductsController@getEdit']);
		Route::post('edit/{product_id}',['as'=>'admin.products.edit','uses'=>'ProductsController@postEdit']);
		Route::post('delimage','ProductsController@getDelImage')->name('deleteImageProduct');

		Route::get('nhap-hang/{product_id}',['as'=>'admin.import.product','uses'=>'ProductsController@getImport']);
		Route::post('nhap-hang/{product_id}',['as'=>'admin.import.product','uses'=>'ProductsController@postImport']);
	});
	Route::group(['prefix'=>'users'],function(){
		Route::get('list',['as'=>'admin.users.list','uses'=>'UsersController@getList']);
		Route::get('add',['as'=>'admin.users.add','uses'=>'UsersController@getAdd']);
		Route::post('add',['as'=>'admin.users.add','uses'=>'UsersController@postAdd']);
		Route::get('delete/{user_id}',['as'=>'admin.users.delete','uses'=>'UsersController@getDelete']);
		Route::get('edit/{user_id}',['as'=>'admin.users.edit','uses'=>'UsersController@getEdit']);
		Route::post('edit/{user_id}',['as'=>'admin.users.edit','uses'=>'UsersController@postEdit']);
		});
	Route::group(['prefix'=>'orders'],function(){
		Route::get('list',['as'=>'admin.orders.list','uses'=>'OrdersController@getList']);
		Route::get('listsigned',['as'=>'admin.orders.listsigned','uses'=>'OrdersController@getListSigned']);
		
		Route::get('detail/{order_id}',['as'=>'detail','uses'=>'OrdersController@getOrders_detail']);
		Route::post('updateStatus/{order}',['as'=>'updateStatus','uses'=>'OrdersController@postUpdateStatus']);
		Route::get('getPDF/{order_id}',['as'=>'admin.orders.getPDF','uses'=>'PDFController@getPDF']);
		
		Route::get('delete/{order_id}',['as'=>'admin.orders.delete','uses'=>'OrdersController@getDelete']);

		Route::post('noteOrder/{order_id}',['as'=>'noteOrder','uses'=>'OrdersController@noteOrder']);
		});
	Route::group(['prefix'=>'statistics'],function(){
		Route::get('chooseday',['as'=>'admin.statistics.chooseday','uses'=>'StatisticsController@getChooseDay']);
		Route::post('chooseday',['as'=>'admin.statistics.chooseday','uses'=>'StatisticsController@postChooseDay']);

		Route::get('customer',['as'=>'admin.statistics.customer','uses'=>'StatisticsController@getCustomer']);
		Route::get('product',['as'=>'admin.statistics.product','uses'=>'StatisticsController@getProductLimit']);


	});
	Route::group(['prefix'=>'news'],function(){
		Route::get('add',['as'=>'admin.news.add','uses'=>'NewsController@getAdd']);
		Route::post('add',['as'=>'admin.news.add','uses'=>'NewsController@postAdd']);
		Route::get('list',['as'=>'admin.news.list','uses'=>'NewsController@getList']);
		Route::get('delete/{news_id}',['as'=>'admin.news.delete','uses'=>'NewsController@getDelete']);
		Route::get('edit/{news_id}',['as'=>'admin.news.edit','uses'=>'NewsController@getEdit']);
		Route::post('edit/{news_id}',['as'=>'admin.news.edit','uses'=>'NewsController@postEdit']);
	});

});
Route::get('/', 'HomeController@index');
Route::get('shop',['as'=>'getcategories','uses'=>'HomeController@getcategories']);
Route::get('loai-san-pham/{category_id}/{alias}',['as'=>'categories','uses'=>'HomeController@categories']);
Route::get('loai-san-pham/{category_id}/{alias}',['as'=>'categories','uses'=>'HomeController@categoriesYield']);
Route::get('chi-tiet-san-pham/{product_id}/{alias}',['as'=>'chitietsanpham','uses'=>'HomeController@detail']);
Route::get('gioi-thieu',['as'=>'getGioiThieu','uses'=>'ContactController@getGioiThieu']);
Route::get('lien-he',['as'=>'getLienHe','uses'=>'ContactController@getLienHe']);
Route::post('lien-he',['as'=>'postLienHe','uses'=>'ContactController@postLienHe']);
Route::get('lien-he-thanh-cong',['as'=>'getLienheSucess','uses'=>'ContactController@getLienheSucess']);
Route::get('mua-hang/{product_id}/{tensanpham}',['as'=>'muahang','uses'=>'HomeController@getMuaHang']);
Route::get('tim-kiem','HomeController@getsearch');
Route::get('gio-hang',['as'=>'giohang','uses'=>'HomeController@getGioHang']);
Route::get('xoa-san-pham/{id}',['as'=>'xoasanpham','uses'=>'HomeController@getXoaSanPham']);
Route::post('cap-nhat',['as'=>'capnhat','uses'=>'HomeController@capnhat']);
Route::get('theo-gia-cate1',['as'=>'cate1','uses'=>'HomeController@cate1']);
Route::get('theo-gia-cate2',['as'=>'cate2','uses'=>'HomeController@cate2']);
Route::get('theo-gia-cate3',['as'=>'cate3','uses'=>'HomeController@cate3']);
Route::get('theo-gia-cate4',['as'=>'cate4','uses'=>'HomeController@cate4']);
Route::get('theo-gia-cate5',['as'=>'cate5','uses'=>'HomeController@cate5']);
Route::get('dang-nhap-khach-hang',['as'=>'show-login','uses'=>'Cus\AuthCusController@showLoginForm']);
Route::post('dang-nhap-khach-hang',['as'=>'post-login','uses'=>'Cus\AuthCusController@postLogin']);
Route::get('dang-xuat-khach-hang',['as'=>'getdangxuat','uses'=>'Cus\AuthCusController@getDangXuat']);
Route::get('dang-ky-khach-hang',['as'=>'dangky','uses'=>'CheckOutController@getDangKyNguoiDung']);
Route::post('dang-ky-khach-hang',['as'=>'dangky','uses'=>'CheckOutController@postDangKyNguoiDung']);
Route::get('profile','CheckOutController@profile');
Route::get('profile-edit/{customer_id}','CheckOutController@getprofileEdit');
Route::post('profile-edit/{customer_id}','CheckOutController@postprofileEdit');
Route::get('history-order','CheckOutController@historyOrder');
Route::get('history-detail/{order_id}','CheckOutController@historyOrderDetail');

Route::get('dat-hang',['as'=>'dathang','uses'=>'CheckOutController@getThanhToan']);
Route::post('dat-hang',['as'=>'dathang','uses'=>'CheckOutController@postThanhToan']);
Route::get('re-set',['as'=>'reset','uses'=>'UsersController@getResetPassword']);
Route::get('tin-tuc',['as'=>'tintuc','uses'=>'NewsController@getTinTuc']);
Route::get('tin-tuc/chi-tiet/{news_id}',['as'=>'tintucchitiet','uses'=>'NewsController@getTinTucChiTiet']);
Route::post('comment/{pr_id}','CommentController@postComment');
//social
Route::get('login/google', 'Auth\LoginController@redirectToProvider');
Route::get('login/google/callback', 'Auth\LoginController@handleProviderCallback');
Route::get('login/github', 'Auth\LoginController@redirectToProvider_github');
Route::get('login/github/callback', 'Auth\LoginController@handleProviderCallback_github');
Route::get('payment',['as'=>'payment','uses'=>'PaymentController@index']);
Route::post('payment','PaymentController@payment');
Route::get('404',['as'=>'404','uses'=>'PaymentController@_404']);
Route::get('success',['as'=>'success','uses'=>'PaymentController@success']);
Route::get('Ordersuccess',['as'=>'Ordersuccess','uses'=>'PaymentController@Ordersuccess']);
Route::post('/language',array(
	'before' =>'csrf',
	'as' => 'language-chooser',
	'uses' => 'LanguageController@chooser'
));