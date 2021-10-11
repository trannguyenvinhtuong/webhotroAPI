<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class M_DATA extends CI_Model{
	public function __construct()
	{
		parent::__construct();
		$this->load->database();
	}

	public function load_alldata($select,$table){
		$result = $this->db->select($select)->from($table)->get();
		return $result->result_array();
	}

	public function load_data($select,$table,$where){
		$result = $this->db->select($select)->from($table)->where($where)->get();
		return $result->result_array();
	}

	public function load_datalimit($select,$table,$limit){
		$result = $this->db->select($select)->from($table)->limit($limit)->get();
		return $result->result_array();
	}
	public function load_datalimitcase($select,$table,$where,$order,$limit){
		$result = $this->db->select($select)->from($table)->where($where)->order_by($order,'desc')->limit($limit)->get();
		return $result->result_array();
	}
	public function updatedata($table,$column,$value,$wherecolumn,$where){
		$this->db->set($column,$value);
		$this->db->where($wherecolumn,$where);
		$this->db->update($table);
	}
}

?>