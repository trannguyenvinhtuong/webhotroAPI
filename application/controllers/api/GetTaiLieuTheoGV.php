<?php 
defined('BASEPATH') OR exit('No direct script access allowed');

require(APPPATH . 'libraries/RestController.php');
require(APPPATH . 'libraries/Format.php');

use chriskacerguis\RestServer\RestController;

class GetTaiLieuTheoGV extends RestController
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
		
	    $idkh = $this->get('idkh');
	    if($idkh !== null){
	    	$data = $this->M_DATA->load_data('*','tailieu,giangvien,chude,capbac,khachhang,luutrutailieu','tailieu.MaGV = giangvien.MaGV and tailieu.MaCB=capbac.MaCB and chude.MaCD = tailieu.MaCD and tailieu.MaTL = luutrutailieu.MaTL and khachhang.MaKH = giangvien.MaKH and khachhang.MaKH = '.$idkh.'');
	    	$this->response($data,200);		    	
	    }

	    else{
	    	$this->response('error');	
	    }		
			
	}
}
?>