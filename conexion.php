<?php 
   $host ="localhost";
	 $database = "busqueda";
	 $username = "m_user";
	 $password = "12345";

  $tableName ="estudiantes";

	error_reporting(0);

	$connection = new mysqli($host,$username,$password,$database);

	if($connection->connect_errno){
		echo "Hay fallos ";
		exit ();
	} 

	?>