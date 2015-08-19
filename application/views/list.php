<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<title>Chaipat Test</title>
<?php 
		echo css_asset('bootstrap.min.css'); 
		echo css_asset('font-awesome.min.css');
		echo css_asset('main.css');
?>
		<!--[if !IE]> -->
		<script type="text/javascript">
			window.jQuery || document.write("<script src='<?php echo base_url('assets/js/jquery.min.js'); ?>'>"+"<"+"/script>");
		</script>
		<!-- <![endif]-->
<?php 
		echo js_asset('bootstrap.min.js');
?>
</head>
<body>

<div id="container">
<?php
		// Create caption
		$this->table->set_caption('Chaipat Test');
		// Set a table template to specify the design of table layout
		$table_property = array('table_open' => '<table id="dataTables-news" class="table-responsive table table-striped table-bordered table-hover ">');
		$this->table->set_template($table_property);

		// Create heading
		$header_col1 = array('data' => 'id', 'class' => 'col-xs-1 center');
		$header_col2 = array('data' => 'title', 'class' => 'col-xs-3 center');
		$header_col3 = array('data' => 'author', 'class' => 'col-xs-3 center');
		$header_col4 = array('data' => 'description', 'class' => 'col-xs-5 center');

		$this->table->set_heading($header_col1, $header_col2, $header_col3, $header_col4);

		if($books_list)
			for($i=0;$i<count($books_list);$i++){
					$id = $books_list[$i]['id'];
					$title = $books_list[$i]['title'];
					$author = $books_list[$i]['author'];
					$description = $books_list[$i]['description'];

					$col1 = array('data' => $id, 'class' => 'col-xs-1' );
					$col2 = array('data' => $title, 'class' => 'col-xs-3');
					$col3 = array('data' => $author, 'class' => 'col-xs-3');
					$col4 = array('data' => $description, 'class' => 'col-xs-5');
					$this->table->add_row($col1, $col2, $col3, $col4);
			}		
		// Generate table
		echo $this->table->generate();

		// Generate pagination
		echo $pagination;
?>
</div>
</body>
</html>