<?php 
defined('BASEPATH') OR exit('No direct script access allowed');

require(APPPATH . 'libraries/RestController.php');
require(APPPATH . 'libraries/Format.php');

use chriskacerguis\RestServer\RestController;

class UpdateKhuyenMaiKH extends RestController
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
		
	    $makhoahoc = $this->get('makhoahoc');
	    $tenkhuyenmai = $this->get('tenkhuyenmai');
	    $phantramgiam = $this->get('phantramgiam');
	    $ngaybatdau = $this->get('ngaybatdau');
	    $ngayhethan = $this->get('ngayhethan');
	    if($makhoahoc !== null && $tenkhuyenmai !== null && $phantramgiam !== null && $ngaybatdau !== null && $ngayhethan !== null){
	    	$data = $this->M_DATA->updatedata('khuyenmaikhoahoc','TenKhuyenMai',$tenkhuyenmai,'MaKhoaHoc',$makhoahoc);
	    	$data = $this->M_DATA->updatedata('khuyenmaikhoahoc','PhanTramGiam',$phantramgiam,'MaKhoaHoc',$makhoahoc);
	    	$data = $this->M_DATA->updatedata('khuyenmaikhoahoc','NgayBatDau',$ngaybatdau,'MaKhoaHoc',$makhoahoc);
	    	$data = $this->M_DATA->updatedata('khuyenmaikhoahoc','NgayHetHan',$ngayhethan,'MaKhoaHoc',$makhoahoc);

	    	$this->response("sucess");
		}
		else{
			$this->response("error");	
		}
	}


}

?>