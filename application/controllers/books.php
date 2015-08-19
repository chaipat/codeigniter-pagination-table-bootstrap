<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Books extends CI_Controller {

	public function index(){
		$this->page(0);
	}

	public function page($start_page = 0){

		$this->load->model('books_model');
		$this->load->library('table');
		$this->load->library('pagination');
		$this->load->helper('url');

		$list_page = 5;
		$search = '';
		$books_list = $this->books_model->list_data(null, $search, 'id', 'asc', $start_page, $list_page);

		$config['base_url'] = base_url('books/page/');
		$config['total_rows'] = $this->db->count_all('books'); 
		$config['per_page'] = $list_page;

		$this->pagination->initialize($config);
		$pagination = $this->pagination->create_links();

		$data = array(				
			"books_list" => $books_list,
			"pagination" => $pagination,
		);
		$this->load->view('list', $data);
	}

}
