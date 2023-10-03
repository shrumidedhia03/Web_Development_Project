<?php
$server_name="localhost";
$username="id15478546_root1";
$password="Qwerty!23456789";
$database_name="id15478546_database123";

$conn=mysqli_connect($server_name,$username,$password,$database_name);
if(!$conn)
{
	die("Connection Failed:" .mysqli_connect_error());

}

if(isset($_POST['save']))
{
	$userid = $_POST['userid'];
	$passid = $_POST['passid'];
	$username = $_POST['username'];
	$address = $_POST['address'];
	$country = $_POST['country'];
    $zip = $_POST['zip'];
    $email = $_POST['email'];
    $sex = $_POST['sex'];
    $language = $_POST['en'];
    $about = $_POST['desc'];
	$sql_query = "INSERT INTO entry_details (user_id,password,name,address,country,zip_code,email,sex,language,about) VALUES ('$userid','$passid','$username','$address','$country','$zip','$email','$sex','$language','$about')";
	if(mysqli_query($conn, $sql_query))
	{
		echo "<script type='text/javascript'>alert('Account Successfully Created');
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