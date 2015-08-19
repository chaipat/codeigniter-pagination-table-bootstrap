<?php
class Books extends Controller {
	
	function __construct() {
		parent::Controller();
		$this->load->helper('url');
		$this->load->database();
	}
	
	function index() {
		
		//load pagination class
		$this->load->library('pagination');

		$config['base_url'] = base_url().'index.php/books/index/';
		$config['total_rows'] = $this->db->count_all('christian_books');
		$config['per_page'] = '5';
		$config['full_tag_open'] = '<p>';
		$config['full_tag_close'] = '</p>';

		$this->pagination->initialize($config);
		
		//load the model and get results
		$this->load->model('books_model');
		$data['results'] = $this->books_model->get_books($config['per_page'],$this->uri->segment(3));
		
		// load the HTML Table Class
		$this->load->library('table');
		$this->table->set_heading('ID', 'Title', 'Author', 'Description');
		
		// load the view
		$this->load->view('books_view', $data);
	}
}
?>