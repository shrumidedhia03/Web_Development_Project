<?php
	$conn = new mysqli("localhost","id15478546_root","Qwerty!23456789","id15478546_cart_system");
	if($conn->connect_error){
		die("Connection Failed!".$conn->connect_error);
	}
?>