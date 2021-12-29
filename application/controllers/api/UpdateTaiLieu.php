<?php 
defined('BASEPATH') OR exit('No direct script access allowed');

require(APPPATH . 'libraries/RestController.php');
require(APPPATH . 'libraries/Format.php');

use chriskacerguis\RestServer\RestController;

class UpdateTaiLieu extends RestController
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
		
	    $matl = $this->get('matl');
	    $tentl = $this->get('tentl');
	    $mota = $this->get('mota');
	    $magv = $this->get('magv');
	    $macb = $this->get('macb');
	    $macd = $this->get('macd');
	    $giatl = $this->get('giatl');
	    $anhtl = $this->get('anhtl');
	    $demo = $this->get('demo');
	    $sotrang = $this->get('sotrang');
	    $ngaydang = $this->get('ngaydang');
	    $link = $this->get('link');
	    $AnhTLNew = 'https://drive.google.com/uc?export=view&id='.$anhtl.'';
	    
	    if($matl !== null && $tentl !== null && $mota !== null && $magv !== null && $macb !== null && $macd !== null && $giatl !== null && $anhtl !== null && $demo !== null && $sotrang !== null && $ngaydang !== null){
	    	$this->M_DATA->updatedata('tailieu','TenTL',$tentl,'MaTL',$matl);
	    	$this->M_DATA->updatedata('tailieu','MoTa',$mota,'MaTL',$matl);
	    	$this->M_DATA->updatedata('tailieu','MaGV',$magv,'MaTL',$matl);
	    	$this->M_DATA->updatedata('tailieu','MaCB',$macb,'MaTL',$matl);
	    	$this->M_DATA->updatedata('tailieu','MaCD',$macd,'MaTL',$matl);
	    	$this->M_DATA->updatedata('tailieu','GiaTL',$giatl,'MaTL',$matl);
	    	$this->M_DATA->updatedata('tailieu','AnhTL',$AnhTLNew,'MaTL',$matl);
	    	$this->M_DATA->updatedata('tailieu','Demo',$demo,'MaTL',$matl);
	    	$this->M_DATA->updatedata('tailieu','SoTrang',$sotrang,'MaTL',$matl);
	    	$this->M_DATA->updatedata('tailieu','NgayDang',$ngaydang,'MaTL',$matl);
	    	$this->M_DATA->updatedata('luutrutailieu','Link',$link,'MaTL',$matl);
	    	
	    	$this->response("sucess");
		}
		else{
			$this->response("error");	
		}
	}


}

?>