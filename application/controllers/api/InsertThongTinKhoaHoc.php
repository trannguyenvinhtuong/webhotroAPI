<?php 
defined('BASEPATH') OR exit('No direct script access allowed');

require(APPPATH . 'libraries/RestController.php');
require(APPPATH . 'libraries/Format.php');

use chriskacerguis\RestServer\RestController;

class InsertThongTinKhoaHoc extends RestController
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
		$MaKhoaHoc = $this->get('makhoahoc');
		$GioiThieuKH = $this->get('gioithieu');
	    $Marketing1 = $this->get('dieu1');
	    $Marketing2 = $this->get('dieu2');
	    $Marketing3 = $this->get('dieu3');
	    $Marketing4 = $this->get('dieu4');
	    $Marketing5 = $this->get('dieu5');
	    $Marketing6 = $this->get('dieu6');
		
	    $data = array(
	    	'MaKhoaHoc' => $MaKhoaHoc,
	    	'GioiThieuKH' => $GioiThieuKH,
	    	'Marketing1' => $Marketing1,
	    	'Marketing2' => $Marketing2,
	    	'Marketing3' => $Marketing3,
	    	'Marketing4' => $Marketing4,
	    	'Marketing5' => $Marketing5,
	    	'Marketing6' => $Marketing6
	    );	

	   	$this->M_DATA->insertdata('thongtinkhoahoc',$data);
	   	$insert_id = $this->db->insert_id();
	   	$this->response($insert_id,200);
	}


}

?>