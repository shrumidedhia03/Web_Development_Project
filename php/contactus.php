<?php
$username="id15478546_root1";
$password="Qwerty!23456789";
$database_name="id15478546_database123";
$conn=mysqli_connect("localhost","id15478546_root1","Qwerty!23456789","id15478546_database123") ;
if(!$conn)
{
	die("Connection Failed:" .mysqli_connect_error());

}

if(isset($_POST['save']))
{
	$userid = $_POST['userid'];
	$email = $_POST['email'];
	$query = $_POST['message'];
	$sql_query = "INSERT INTO contactus (userid,email,query) VALUES ('$userid','$email','$query')";
	if(mysqli_query($conn, $sql_query))
	{
		echo "<script type='text/javascript'>alert('Query Recorded');
			  window.location='Glimmer N Glow.html';
			</script>";
	}
	else
	{
	    echo "Error:" . $sql ."" . mysqli_error($conn);  	
	}
	mysqli_close($conn);   
}
?>