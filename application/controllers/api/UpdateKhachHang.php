<?php 
defined('BASEPATH') OR exit('No direct script access allowed');

require(APPPATH . 'libraries/RestController.php');
require(APPPATH . 'libraries/Format.php');

use chriskacerguis\RestServer\RestController;

class UpdateKhachHang extends RestController
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
	    $sdt = $this->get('sdt');
	    $diachi = $this->get('diachi');
	    $email = $this->get('email');
	    if($makh !== null && $tenkh !== null && $sdt !== null && $diachi !== null && $email !== null){
	    	$this->M_DATA->updatedata('khachhang','TenKH',$tenkh,'MaKH',$makh);
	    	$this->M_DATA->updatedata('khachhang','SDT',$sdt,'MaKH',$makh);
	    	$this->M_DATA->updatedata('khachhang','DiaChi',$diachi,'MaKH',$makh);
	    	$this->M_DATA->updatedata('khachhang','Email',$email,'MaKH',$makh);
	    	$this->response("sucess");
		}
		else{
			$this->response("error");	
		}
	}


}

?>