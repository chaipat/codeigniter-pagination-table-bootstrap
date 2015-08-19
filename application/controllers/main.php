<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Main extends CI_Controller {

	public function index(){

		$this->load->model('christian_books_model');
		$this->load->library('pagination');


		$config['base_url'] = base_url('books/page/');
		$config['total_rows'] = '200'; 
		$config['per_page'] = '20';

		$this->pagination->initialize($config);
		$datainput = $this->input->get();
		$search = '';

		$christian_books_list = $this->christian_books_model->get_data(null, $search);

		$this->load->view('list');


	}
}
