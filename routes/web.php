<?php

use Illuminate\Support\Facades\Auth;


Route::get('dangnhap','UsersController@getDangNhap');
Route::post('dangnhap','UsersController@postDangNhap');
Route::get('dangxuat','UsersController@getDangXuat');

Route::post('test/delimage','ProductsController@deleteImageProduct')->name('deleteImageProduct');
Auth::routes();
// ,'middleware'=>'Login'
Route::group(['prefix'=>'admin','middleware'=>'Login'],function(){
	Route::group(['prefix'=>'categories'],function(){
		Route::get('list',['as'=>'admin.categories.list','uses'=>'CategoriesController@getList']);

		Route::get('add',['as'=>'admin.categories.add','uses'=>'CategoriesController@getAdd']);
		Route::post('add',['as'=>'admin.categories.add','uses'=>'CategoriesController@postAdd']);

		Route::get('delete/{category_id}',['as'=>'admin.categories.delete','uses'=>'CategoriesController@getDelete']);

		Route::get('edit/{category_id}',['as'=>'admin.categories.getEdit','uses'=>'CategoriesController@getEdit']);
		Route::post('edit/{category_id}',['as'=>'admin.categories.getEdit','uses'=>'CategoriesController@postEdit']);
	});	

	Route::group(['prefix'=>'products'],function(){

		Route::get('add',['as'=>'admin.products.add','uses'=>'ProductsController@getAdd']);
		Route::post('add',['as'=>'admin.products.add','uses'=>'ProductsController@postAdd']);

		Route::get('list',['as'=>'admin.products.list','uses'=>'ProductsController@getList']);

		Route::get('delete/{product_id}',['as'=>'admin.products.delete','uses'=>'ProductsController@getDelete']);

		Route::get('edit/{product_id}',['as'=>'admin.products.edit','uses'=>'ProductsController@getEdit']);
		Route::post('edit/{product_id}',['as'=>'admin.products.edit','uses'=>'ProductsController@postEdit']); 
		// Route::get('edit/{id}',['as'=>'admin.products.edit','uses'=>'ProductsController@getEdit']);
		// Route::post('edit/{id}',['as'=>'admin.products.edit','uses'=>'ProductsController@postEdit']); 


		Route::post('delimage','ProductsController@getDelImage')->name('deleteImageProduct');
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
	});	

	Route::group(['prefix'=>'statistics'],function(){
		Route::get('chooseday',['as'=>'admin.statistics.chooseday','uses'=>'StatisticsController@getChooseDay']);
		Route::post('chooseday',['as'=>'admin.statistics.chooseday','uses'=>'StatisticsController@postChooseDay']);


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

Route::get('gio-hang',['as'=>'giohang','uses'=>'HomeController@getGioHang']);

Route::get('xoa-san-pham/{id}',['as'=>'xoasanpham','uses'=>'HomeController@getXoaSanPham']);

Route::post('cap-nhat',['as'=>'capnhat','uses'=>'HomeController@capnhat']);

Route::get('theo-gia-cate1',['as'=>'cate1','uses'=>'HomeController@cate1']);
Route::get('theo-gia-cate2',['as'=>'cate2','uses'=>'HomeController@cate2']);
Route::get('theo-gia-cate3',['as'=>'cate3','uses'=>'HomeController@cate3']);
Route::get('theo-gia-cate4',['as'=>'cate4','uses'=>'HomeController@cate4']);
Route::get('theo-gia-cate5',['as'=>'cate5','uses'=>'HomeController@cate5']);
Route::get('sortPrice',['as'=>'sortPrice','uses'=>'HomeController@sortPrice']);
Route::get('sortPriceSmall',['as'=>'sortPriceSmall','uses'=>'HomeController@sortPriceSmall']);


Route::get('dang-nhap-khach-hang',['as'=>'show-login','uses'=>'Cus\AuthCusController@showLoginForm']);
Route::post('dang-nhap-khach-hang',['as'=>'post-login','uses'=>'Cus\AuthCusController@postLogin']);

Route::get('dang-xuat-khach-hang',['as'=>'getdangxuat','uses'=>'Cus\AuthCusController@getDangXuat']);

Route::get('dang-ky-khach-hang',['as'=>'dangky','uses'=>'CheckOutController@getDangKyNguoiDung']);
Route::post('dang-ky-khach-hang',['as'=>'dangky','uses'=>'CheckOutController@postDangKyNguoiDung']);

Route::get('dat-hang',['as'=>'dathang','uses'=>'CheckOutController@getThanhToan']);
Route::post('dat-hang',['as'=>'dathang','uses'=>'CheckOutController@postThanhToan']);

Route::get('re-set',['as'=>'reset','uses'=>'UsersController@getResetPassword']);
Route::get('tin-tuc',['as'=>'tintuc','uses'=>'NewsController@getTinTuc']);
Route::get('tin-tuc/chi-tiet/{news_id}',['as'=>'tintucchitiet','uses'=>'NewsController@getTinTucChiTiet']);
Route::post('comment/{pr_id}','CommentController@postComment');


Route::get('login/facebook', 'Auth\LoginController@redirectToProvider_facebook');
Route::get('login/facebook/callback', 'Auth\LoginController@handleProviderCallback_facebook');

Route::get('login/google', 'Auth\LoginController@redirectToProvider');
Route::get('login/google/callback', 'Auth\LoginController@handleProviderCallback');

Route::get('login/github', 'Auth\LoginController@redirectToProvider_github');
Route::get('login/github/callback', 'Auth\LoginController@handleProviderCallback_github');