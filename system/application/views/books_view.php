<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en-us" lang="en-us">
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<link rel="stylesheet" href='<?php echo base_url(); ?>css/main.css' type="text/css" media="screen, projection" />
<title>CodeIgniter Pagination Tutorial</title>
</head>
<body>
<h1>Christian Books</h1>
<?php echo $this->table->generate($results); ?>
<?php echo $this->pagination->create_links(); ?>
</body>
</html>