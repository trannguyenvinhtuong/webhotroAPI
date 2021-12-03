<?php 
defined('BASEPATH') OR exit('No direct script access allowed');

require(APPPATH . 'libraries/RestController.php');
require(APPPATH . 'libraries/Format.php');

use chriskacerguis\RestServer\RestController;

class UpdateKhoaHoc extends RestController
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
	    $tenkh = $this->get('tenkh');
	    $mota = $this->get('mota');
	    $giakh = $this->get('giakh');
	    $magv = $this->get('magv');
	    $macd = $this->get('macd');
	    $macb = $this->get('macb');
	    $anhkh = $this->get('anhkh');
	    $videogt = $this->get('videogt');
	    $ngaydang = $this->get('ngaydang');
	    $sohs = $this->get('sohs');
	    $mar1 = $this->get('mar1');
	    $mar2 = $this->get('mar2');
	    $mar3 = $this->get('mar3');
	    $mar4 = $this->get('mar4');
	    $mar5 = $this->get('mar5');
	    $mar6 = $this->get('mar6');
	    $gtkh = $this->get('gtkh');
	   

	    if($makh !== null && $tenkh !== null){
	    	$this->M_DATA->updatedata('khoahoc','TenKhoaHoc',$tenkh,'MaKhoaHoc',$makh);
	    	$this->M_DATA->updatedata('khoahoc','MoTa',$mota,'MaKhoaHoc',$makh);
	    	$this->M_DATA->updatedata('khoahoc','GiaKH',$giakh,'MaKhoaHoc',$makh);
	    	$this->M_DATA->updatedata('khoahoc','MaGV',$magv,'MaKhoaHoc',$makh);
	    	$this->M_DATA->updatedata('khoahoc','MaCD',$macd,'MaKhoaHoc',$makh);
	    	$this->M_DATA->updatedata('khoahoc','MaCB',$macb,'MaKhoaHoc',$makh);
	    	$this->M_DATA->updatedata('khoahoc','AnhKhoaHoc',$anhkh,'MaKhoaHoc',$makh);
	    	$this->M_DATA->updatedata('khoahoc','VideoGT',$videogt,'MaKhoaHoc',$makh);
	    	$this->M_DATA->updatedata('khoahoc','NgayDang',$ngaydang,'MaKhoaHoc',$makh);
	    	$this->M_DATA->updatedata('khoahoc','SoHS',$sohs,'MaKhoaHoc',$makh);
	    	$this->M_DATA->updatedata('thongtinkhoahoc','Marketing1',$mar1,'MaKhoaHoc',$makh);
	    	$this->M_DATA->updatedata('thongtinkhoahoc','Marketing2',$mar2,'MaKhoaHoc',$makh);
	    	$this->M_DATA->updatedata('thongtinkhoahoc','Marketing3',$mar3,'MaKhoaHoc',$makh);
	    	$this->M_DATA->updatedata('thongtinkhoahoc','Marketing4',$mar4,'MaKhoaHoc',$makh);
	    	$this->M_DATA->updatedata('thongtinkhoahoc','Marketing5',$mar5,'MaKhoaHoc',$makh);
	    	$this->M_DATA->updatedata('thongtinkhoahoc','Marketing6',$mar6,'MaKhoaHoc',$makh);
	    	$this->M_DATA->updatedata('thongtinkhoahoc','GioiThieuKH',$gtkh,'MaKhoaHoc',$makh);
	    	$this->response("sucess");
		}
		else{
			$this->response("error");	
		}
	}


}

?>