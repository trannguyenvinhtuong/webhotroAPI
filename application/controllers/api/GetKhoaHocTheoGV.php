<?php 
defined('BASEPATH') OR exit('No direct script access allowed');

require(APPPATH . 'libraries/RestController.php');
require(APPPATH . 'libraries/Format.php');

use chriskacerguis\RestServer\RestController;

class GetKhoaHocTheoGV extends RestController
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
		if(empty($makh)){
			$this->response('error',200);
		}
		else{
			$data = $this->M_DATA->load_data('*',
										'khoahoc,giangvien,khachhang,chude,capbac,khuyenmaikhoahoc',
										'khoahoc.MaGV=giangvien.MaGV and giangvien.MaKH=khachhang.MaKH and khoahoc.MaKhoaHoc = khuyenmaikhoahoc.MaKhoaHoc and capbac.MaCB=khoahoc.MaCB and chude.MaCD = khoahoc.MaCD and khachhang.MaKH = '.$makh.'',
										);
			$this->response($data,200);
		}
	}


}

?>