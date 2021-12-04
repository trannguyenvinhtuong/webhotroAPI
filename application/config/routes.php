<?php
defined('BASEPATH') OR exit('No direct script access allowed');

/*
| -------------------------------------------------------------------------
| URI ROUTING
| -------------------------------------------------------------------------
| This file lets you re-map URI requests to specific controller functions.
|
| Typically there is a one-to-one relationship between a URL string
| and its corresponding controller class/method. The segments in a
| URL normally follow this pattern:
|
|	example.com/class/method/id/
|
| In some instances, however, you may want to remap this relationship
| so that a different class/function is called than the one
| corresponding to the URL.
|
| Please see the user guide for complete details:
|
|	https://codeigniter.com/user_guide/general/routing.html
|
| -------------------------------------------------------------------------
| RESERVED ROUTES
| -------------------------------------------------------------------------
|
| There are three reserved routes:
|
|	$route['default_controller'] = 'welcome';
|
| This route indicates which controller class should be loaded if the
| URI contains no data. In the above example, the "welcome" class
| would be loaded.
|
|	$route['404_override'] = 'errors/page_missing';
|
| This route will tell the Router which controller/method to use if those
| provided in the URL cannot be matched to a valid route.
|
|	$route['translate_uri_dashes'] = FALSE;
|
| This is not exactly a route, but allows you to automatically route
| controller and method names that contain dashes. '-' isn't a valid
| class or method name character, so it requires translation.
| When you set this option to TRUE, it will replace ALL dashes in the
| controller and method URI segments.
|
| Examples:	my-controller/index	-> my_controller/index
|		my-controller/my-method	-> my_controller/my_method
*/
$route['default_controller'] = 'Handling';
$route['404_override'] = '';
$route['translate_uri_dashes'] = FALSE;

// get

$route['api/getkhoahoc'] = 'api/GetKhoaHoc/index';
$route['api/getchude'] = 'api/GetChuDe/index';
$route['api/getchudelimit'] = 'api/GetChuDeLimit/index';
$route['api/getthongtinkhoahoc'] = 'api/GetThongTinKhoaHoc/index';
$route['api/getkhuyenmaikh'] = 'api/GetKhuyenMaiKH/index';
$route['api/getallkmkh'] = 'api/GetALLKMKH/index';
$route['api/gettailieu'] = 'api/GetTaiLieu/index';
$route['api/getcapbac'] = 'api/GetCapBac/index';
$route['api/getkhachhang'] = 'api/GetKhachHang/index';
$route['api/getkhoahockh'] = 'api/GetKhoaHocKH/index';
$route['api/gettailieukh'] = 'api/GetTaiLieuKH/index';
$route['api/getkhuyenmaitl'] = 'api/GetKMTL/index';
$route['api/getkhoahoctheogv'] = 'api/GetKhoaHocTheoGV/index';
$route['api/gettailieutheogv'] = 'api/GetTaiLieuTheoGV/index';
$route['api/getthongtingv'] = 'api/GetThongTinGV/index';
$route['api/getdiem'] = 'api/GetDiem/index';
$route['api/gethoadon'] = 'api/GetHoaDon/index'; 
$route['api/getgiangvien'] = 'api/GetGiangVien/index'; 
$route['api/getmakichhoat'] = 'api/GetMaKichHoat/index'; 
// checking

$route['api/checkgiangvien'] = 'api/CheckGiangVien/index';

// insert

$route['api/insertkhoahoc'] = 'api/InsertKhoaHoc/index';
$route['api/insertthongtinkhoahoc'] = 'api/InsertThongTinKhoaHoc/index';
$route['api/inserthoadon'] = 'api/InsertHoaDon/index';
$route['api/insertcthd'] = 'api/InsertCTHD/index';
$route['api/inserttailieu'] = 'api/InsertTaiLieu/index';
$route['api/insertluutrutl'] = 'api/InsertLuuTruTL/index';
$route['api/insertketqua'] = 'api/InsertKetQua/index';
$route['api/insertkhoahockhachhang'] = 'api/InsertKhoaHocKhachHang/index';
$route['api/insertkhachhang'] = 'api/InsertKhachHang/index';
$route['api/insertgiangvien'] = 'api/InsertGiangVien/index';

// update

$route['api/updatemk'] = 'api/UpdateMK/index';
$route['api/updatekhachhang'] = 'api/UpdateKhachHang/index';
$route['api/updatetailieu'] = 'api/UpdateTaiLieu/index';
$route['api/updatekhoahoc'] = 'api/UpdateKhoaHoc/index';
$route['api/updategiangvien'] = 'api/UpdateGiangVien/index';