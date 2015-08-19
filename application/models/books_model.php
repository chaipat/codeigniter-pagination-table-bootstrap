<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Books_model extends CI_Model {

    public function __construct(){
		parent::__construct();
    }

    public function list_data($id=null, $search_string=null, $order = 'id', $order_type='Asc', $limit_start = 0, $listpage = 5){
		
		$this->db->select('*');
		$this->db->from('books ');

		if($id != null && $id > 0){
			$this->db->where('id', $id);
		}

		if($search_string){
			$this->db->like('title', $search_string);
		}

		if($order){
			$this->db->order_by($order, $order_type);
		}else{
		    $this->db->order_by('id', $order_type);
		}
		$this->db->limit($listpage, $limit_start);

		$query = $this->db->get();		
		//echo $this->db->last_query();
		return $query->result_array();
    }
}
