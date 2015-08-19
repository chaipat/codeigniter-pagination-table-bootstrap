<?php
class books_model extends Model {
	
	function __construct(){
		parent::Model();
	}
	
	function get_books($num, $offset) {
		$query = $this->db->get('christian_books', $num, $offset);
		
		return $query;
	}
}
?>