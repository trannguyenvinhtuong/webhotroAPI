<?php 
defined('BASEPATH') OR exit('No direct script access allowed');

class Handling extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->load->helper('url');	
		$this->load->model('M_DATA');
		$this->load->library('session');
			
	}

	public function Index(){
		$giaodien['body'] = $this->load->view('page/index',null,true);
		$this->load->view('master',$giaodien);
	}


}

?>