<?php 
defined('BASEPATH') OR exit('No direct script access allowed');

require(APPPATH . 'libraries/RestController.php');
require(APPPATH . 'libraries/Format.php');

use chriskacerguis\RestServer\RestController;

class InsertKhoaHoc extends RestController
{

	public function __construct()
	{
		parent::__construct();
		$this->load->model('M_DATA');
			
	}

	public function index_get(){	
	 	if (isset($_SERVER['HTTP_ORIGIN'])) {
	        header("Access-Control-Allow-Origin: {$_SERVER['HTTP_ORIGIN']}");
	        header('Access-Control-Allow-Credentials: true');
	        header('Access-Control-Max-Age: 86400');    
	    }
	    if ($_SERVER['REQUEST_METHOD'] == 'OPTIONS') {
	        
	        if (isset($_SERVER['HTTP_ACCESS_CONTROL_REQUEST_METHOD']))
	            header("Access-Control-Allow-Methods: GET, POST, OPTIONS");
	        
	        if (isset($_SERVER['HTTP_ACCESS_CONTROL_REQUEST_HEADERS']))
	            header("Access-Control-Allow-Headers: {$_SERVER['HTTP_ACCESS_CONTROL_REQUEST_HEADERS']}");
	    
	        exit(0);
	    }	
		
		$TenKhoaHoc = $this->get('tenkhoahoc');
	    $MaCD = $this->get('theloai');
	    $MaCB = $this->get('capbac');
	    $MoTa = $this->get('mota');
	    $GiaKH = $this->get('gia');
	    $AnhKhoaHoc = $this->get('anh');
	    $VideoGT = $this->get('video');
	    $videogt = 'https://www.youtube.com/embed/'.$VideoGT.'';
	    $MaGV = $this->get('magv');
	    $NgayDang = $this->get('ngaydang');
	    $GioiThieuKH = $this->get('gioithieu');
	    $Marketing1 = $this->get('dieu1');
	    $Marketing2 = $this->get('dieu2');
	    $Marketing3 = $this->get('dieu3');
	    $Marketing4 = $this->get('dieu4');
	    $Marketing5 = $this->get('dieu5');
	    $Marketing6 = $this->get('dieu6');
	    $anhkhoahoc = 'https://drive.google.com/uc?export=view&id='.$AnhKhoaHoc.'';
	    $data = array(
	    	'TenKhoaHoc' => $TenKhoaHoc,
	    	'MaCD' => $MaCD,
	    	'MaCB' => $MaCB,
	    	'MoTa' => $MoTa,
	    	'GiaKH' => $GiaKH,
	    	'AnhKhoaHoc' => $anhkhoahoc,
	    	'VideoGT' => $videogt,
	    	'MaGV' => $MaGV,
	    	'NgayDang' => $NgayDang
	    );	    
	   	$this->M_DATA->insertdata('khoahoc',$data);
	   	$insert_id = $this->db->insert_id();
		$khuyenmai = array(
		  	'MaKhoaHoc' => $insert_id,
		  	'TenKhuyenMai' =>'chuaco',
		  	'PhanTramGiam' => '0',
		  	'NgayBatDau' => '02-12-2021',
		  	'NgayHetHan' => '02-12-2021'
		);
		$this->M_DATA->insertdata('khuyenmaikhoahoc',$khuyenmai);
		$thongtinkhoahoc = array(
	    	'MaKhoaHoc' => $insert_id,
	    	'GioiThieuKH' => $GioiThieuKH,
	    	'Marketing1' => $Marketing1,
	    	'Marketing2' => $Marketing2,
	    	'Marketing3' => $Marketing3,
	    	'Marketing4' => $Marketing4,
	    	'Marketing5' => $Marketing5,
	    	'Marketing6' => $Marketing6
	    );	
	    $this->M_DATA->insertdata('thongtinkhoahoc',$thongtinkhoahoc);
		
	   	$this->response($insert_id,200);
	}


}

?>