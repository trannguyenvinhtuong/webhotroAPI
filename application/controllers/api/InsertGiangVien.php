<?php 
defined('BASEPATH') OR exit('No direct script access allowed');

require(APPPATH . 'libraries/RestController.php');
require(APPPATH . 'libraries/Format.php');

use chriskacerguis\RestServer\RestController;

class InsertGiangVien extends RestController
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

		$makh = $this->get('makh');
		$noicongtac = $this->get('noicongtac');
	    $trinhdo = $this->get('trinhdo');
	    $kinhnghiem = $this->get('kinhnghiem');
	    $gioithieubanthan = $this->get('gioithieubanthan');
	    $gioithieunghenghiep = $this->get('gioithieunghenghiep');
	    $gioithieukinhnghiem = $this->get('gioithieukinhnghiem');
	    $macb = $this->get('macb');
	    $chuyennganh = $this->get('chuyennganh');
	    $soluonghv = 0;
	    $soluongkh = 0;
	    $trangthai = -1;

	    $data = array(
	    	'NoiCongTac' => $noicongtac,
	    	'TrinhDo' => $trinhdo,
	    	'KinhNghiem' => $kinhnghiem,
	    	'GioiThieuBanThan' => $gioithieubanthan,
	    	'GioiThieuNgheNghiep' => $gioithieunghenghiep,
	    	'GioiThieuKinhNghiem' => $gioithieukinhnghiem,
	    	'MaKH' => $makh,
	    	'MaCB' => $macb,
	    	'SoLuongHV' => $soluonghv,
	    	'ChuyenNganh' => $chuyennganh,
	    	'SoLuongKH' => $soluongkh,
	    	'TrangThai' => $trangthai
	    );	    
	   	$this->M_DATA->insertdata('giangvien',$data);
	   	$insert_id = $this->db->insert_id();
	   	$this->response($insert_id,200);
	}


}

?>