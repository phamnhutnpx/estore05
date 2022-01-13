<?php
defined('BASEPATH') OR exit('No direct script access allowed');

$route['default_controller'] = 'trangchu/index';
$route['trang-chu'] = 'trangchu/index';
$route['tin-tuc'] = 'tintuc/index';
$route['san-pham/(:num)'] = 'sanpham/index/$1';
$route['san-pham/(:any)'] = 'sanpham/category';
$route['san-pham/(:any)/(:num)'] = 'sanpham/category/$1';

$route['tin-tuc/(:num)'] = 'tintuc/index/$1';
$route['tin-tuc/(:any)'] = 'tintuc/detail';
$route['lien-he'] = 'lienhe/index';
$route['tim-kiem'] = 'timkiem';
$route['san-pham'] = 'sanpham/index';
$route['san-pham/(:num)'] = 'sanpham/index/$1';
$route['san-pham/(:any)'] = 'sanpham/category';
$route['san-pham/(:any)/(:num)'] = 'sanpham/category/$1';
$route['dang-nhap'] = 'dangnhap/dangnhap';
$route['quen-mat-khau'] = 'dangnhap/forget_password';
$route['dang-ky'] = 'dangnhap/dangky';
$route['dang-xuat'] = 'dangnhap/dangxuat';
$route['gio-hang'] = 'giohang/index';
$route['checkout'] = 'giohang/checkout';
$route['info-order'] = 'giohang/info_order';
$route['thankyou'] = 'giohang/thankyou';
$route['thong-tin-khach-hang'] = 'thongtin/index';
$route['search?(:any)'] = 'search/index/$1';
$route['search?(:any)/(:num)'] = 'search/index/$1';
$route['buildpc?(:any)'] = 'buildpc/index/$1';
$route['buildpc?(:any)/(:num)'] = 'buildpc/index/$1';
$route['gioi-thieu'] = 'gioithieu/index';
$route['account/orders/(:num)'] = 'thongtin/order';
$route['account/orders/update/(:num)'] = 'thongtin/update/(:num)';
$route['reset_password'] = 'thongtin/reset_password';

$route['admin'] = 'admin/dashboard';

$route['admin/coupon'] ='admin/coupon';
$route['admin/coupon/(:num)'] ='admin/coupon/index/$1';
$route['admin/coupon/insert'] ='admin/coupon/insert';
$route['coupon/update/(:num)'] ='coupon/update/$1';
$route['coupon/status/(:num)'] ='coupon/status/$1';
$route['coupon/recyclebin'] ='coupon/recyclebin';
$route['coupon/recyclebin/(:num)'] ='coupon/recyclebin/$1';
$route['coupon/trash/(:num)'] ='coupon/trash/$1';
$route['coupon/delete/(:num)'] ='coupon/delete/$1';
$route['coupon/restore/(:num)'] ='coupon/restore/$1';

$route['admin/crud'] ='admin/crud/index';

$route['admin/product'] ='admin/product';
$route['admin/product/(:num)'] ='admin/product/index/$1';
$route['product/insert'] ='product/insert';
$route['product/status/(:num)'] ='product/status/$1';
$route['product/update/(:num)'] ='product/update/$1';
$route['product/import/(:num)'] ='product/import/$1';
$route['product/recyclebin'] ='product/recyclebin';
$route['product/trash/(:num)'] ='product/trash/$1';
$route['product/recyclebin/(:num)'] ='product/recyclebin/$1';

$route['admin/producer'] ='admin/producer';
$route['admin/producer/(:num)'] ='admin/producer/index/$1';
$route['producer/insert'] ='producer/insert';
$route['producer/status/(:num)'] ='producer/status/$1';
$route['producer/update/(:num)'] ='producer/update/$1';
$route['producer/recyclebin'] ='producer/recyclebin';
$route['producer/trash/(:num)'] ='producer/trash/$1';
$route['producer/recyclebin/(:num)'] ='producer/recyclebin/$1';

$route['admin/category'] ='admin/category';
$route['admin/category/(:num)'] ='admin/category/index/$1';
$route['category/insert'] ='category/insert';
$route['category/update/(:num)'] ='category/update/$1';
$route['category/status/(:num)'] ='category/status/$1';
$route['category/recyclebin'] ='category/recyclebin';
$route['category/recyclebin/(:num)'] ='category/recyclebin/$1';
$route['category/trash/(:num)'] ='category/trash/$1';
$route['category/delete/(:num)'] ='category/delete/$1';
$route['category/restore/(:num)'] ='category/restore/$1';

$route['admin/content'] ='admin/content';
$route['admin/content/(:num)'] ='admin/content/index/$1';
$route['content/update/(:num)'] ='content/update/$1';
$route['content/status/(:num)'] ='content/status/$1';
$route['content/insert'] ='content/insert';
$route['content/recyclebin'] ='content/recyclebin';
$route['content/recyclebin/(:num)'] ='content/recyclebin/$1';
$route['content/trash/(:num)'] ='content/trash/$1';
$route['content/delete/(:num)'] ='content/delete/$1';
$route['content/restore/(:num)'] ='content/restore/$1';

$route['admin/sliders'] ='admin/sliders';
$route['admin/sliders/(:num)'] ='admin/sliders/index/$1';
$route['admin/sliders/insert'] ='admin/sliders/insert';
$route['sliders/update/(:num)'] ='sliders/update/$1';
$route['sliders/status/(:num)'] ='sliders/status/$1';
$route['sliders/recyclebin'] ='sliders/recyclebin';
$route['sliders/recyclebin/(:num)'] ='sliders/recyclebin/$1';
$route['sliders/trash/(:num)'] ='sliders/trash/$1';
$route['sliders/delete/(:num)'] ='sliders/delete/$1';
$route['sliders/restore/(:num)'] ='sliders/restore/$1';


$route['admin/customer'] ='admin/customer';
$route['admin/customer/(:num)'] ='admin/customer/index/$1';
$route['customer/update/(:num)'] ='customer/update/$1';
$route['customer/status/(:num)'] ='customer/status/$1';
$route['customer/recyclebin'] ='customer/recyclebin';
$route['customer/recyclebin/(:num)'] ='customer/recyclebin/$1';
$route['customer/trash/(:num)'] ='customer/trash/$1';
$route['customer/delete/(:num)'] ='customer/delete/$1';
$route['customer/restore/(:num)'] ='customer/restore/$1';

// ql don hang
$route['admin/orders'] ='admin/orders';
$route['admin/orders/(:num)'] ='admin/orders/index/$1';
//ql tk nv
$route['admin/useradmin']='admin/useradmin/index';
$route['admin/useradmin/(:num)'] ='admin/useradmin/index/$1';
$route['useradmin/insert']='admin/useradmin/insert';

//ql liên hệ
$route['admin/contact'] ='admin/contact/index';
$route['admin/contact/detail/(:num)'] ='admin/contact/detail/$1';
$route['admin/contact/(:num)'] ='admin/contact/index/$1';
$route['admin/contact/recyclebin/(:num)'] ='admin/contact/recyclebin';

$route['admin/(:any)']='admin/E403/index';
$route['admin/403']='admin/E403/index';
$route['404_override'] = 'Error404';

$route['(:any)'] = 'sanpham/detail/$1';
$route['translate_uri_dashes'] = FALSE;
