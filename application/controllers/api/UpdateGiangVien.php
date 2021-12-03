<?php 
defined('BASEPATH') OR exit('No direct script access allowed');

require(APPPATH . 'libraries/RestController.php');
require(APPPATH . 'libraries/Format.php');

use chriskacerguis\RestServer\RestController;

class UpdateGiangVien extends RestController
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
	    if($makh !== null){
	    	$this->M_DATA->updatedata('giangvien','NoiCongTac',$noicongtac,'MaKH',$makh);
	    	$this->M_DATA->updatedata('giangvien','TrinhDo',$trinhdo,'MaKH',$makh);
	    	$this->M_DATA->updatedata('giangvien','KinhNghiem',$kinhnghiem,'MaKH',$makh);
	    	$this->M_DATA->updatedata('giangvien','GioiThieuBanThan',$gioithieubanthan,'MaKH',$makh);
	    	$this->M_DATA->updatedata('giangvien','GioiThieuNgheNghiep',$gioithieunghenghiep,'MaKH',$makh);
	    	$this->M_DATA->updatedata('giangvien','GioiThieuKinhNghiem',$gioithieukinhnghiem,'MaKH',$makh);
	    	$this->M_DATA->updatedata('giangvien','MaCB',$macb,'MaKH',$makh);
	    	$this->M_DATA->updatedata('giangvien','ChuyenNganh',$chuyennganh,'MaKH',$makh);
	    	$this->response("sucess");
		}
		else{
			$this->response("error");	
		}
	}


}

?>