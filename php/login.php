<?php
$con=mysqli_connect("localhost","id15478546_root1","Qwerty!23456789","id15478546_database123") or die("error".mysql_error);
$sel=mysqli_query($con,"SELECT * from entry_details");
$x=0;
while($log=mysqli_fetch_array($sel))
	{
		if($_POST['userid']==$log['user_id'] && $_POST['passid']==$log['password'])
			{
				++$x;
			}
	}
if($x==1)
	{
		echo "<script type='text/javascript'>alert('Successfully Logged In');
			  window.location='Shopping cart/index.php';
			</script>";
	}
else
	{
		echo "<script type='text/javascript'>alert('Login Failed');
			  window.location='login.html';
			</script>";
	}
?>