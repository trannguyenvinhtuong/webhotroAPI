<?php 
defined('BASEPATH') OR exit('No direct script access allowed');

require(APPPATH . 'libraries/RestController.php');
require(APPPATH . 'libraries/Format.php');

use chriskacerguis\RestServer\RestController;

class InsertMaKichHoat extends RestController
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
	    $MaKichHoat = $this->get('makichhoat');
	    $TrangThai = "0";

	    $data = array(
	    	'MaKhoaHoc' => $MaKhoaHoc,
	    	'MaKichHoat' => $MaKichHoat,
	    	'TrangThai' => $TrangThai	    	
	    );	    
	   	$this->M_DATA->insertdata('kichhoatkhoahoc',$data);
	   	$insert_id = $this->db->insert_id();
	   	$this->response($insert_id,200);
	}
}

?>