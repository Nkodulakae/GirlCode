<?php
	$servername = "localhost";
	$username = "root";
	$password = "";
	$database = "secure_travelling";

	//Create database connection
	$conn = new mysqli($servername, $username, $password, $database);

	//Check database connection
	if ($conn->connect_error) {
		die("Connection failed -- Error : " . $conn->connect_error);
		echo("DB connection failed");
	}
 ?>