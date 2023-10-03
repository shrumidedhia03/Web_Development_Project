<?php 
session_start();
$connect = mysqli_connect("localhost", "root", "", "database123");

if(isset($_POST["AddtoCart"]))
{
	if(isset($_SESSION["shopping_cart"]))
	{
		$item_array_id = array_column($_SESSION["shopping_cart"], "item_id");
		if(!in_array($_GET["id"], $item_array_id))
		{
			$count = count($_SESSION["shopping_cart"]);
			$item_array = array(
				'item_id'			=>	$_GET["id"],
				'item_name'			=>	$_POST["hidden_name"],
				'item_price'		=>	$_POST["hidden_price"],
				'item_quantity'		=>	$_POST["quantity"]
			);
			$_SESSION["shopping_cart"][$count] = $item_array;
		}
		else
		{
			echo '<script>alert("Item Already Added")</script>';
		}
	}
	else
	{
		$item_array = array(
			'item_id'			=>	$_GET["id"],
			'item_name'			=>	$_POST["hidden_name"],
			'item_price'		=>	$_POST["hidden_price"],
			'item_quantity'		=>	$_POST["quantity"]
		);
		$_SESSION["shopping_cart"][0] = $item_array;
	}
}

if(isset($_GET["action"]))
{
	if($_GET["action"] == "delete")
	{
		foreach($_SESSION["shopping_cart"] as $keys => $values)
		{
			if($values["item_id"] == $_GET["id"])
			{
				unset($_SESSION["shopping_cart"][$keys]);
				echo '<script>alert("Item Removed")</script>';
				echo '<script>window.location="cart.php"</script>';
			}
		}
	}
}

?>
<!DOCTYPE html>
<html>
	<head>
        <meta charset="UTF-8">
        <meta name="viewport"content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
        <link rel="stylesheet"
	href="Slideshow.css">
		<title>Products Page</title>
		<body><div class="logo">
	<img src="logo.png">
</div>
	<div class="topnav">
      <a  href="http://localhost/Glimmer%20N%20Glow.html">Home</a>
      <a href="http://localhost/aboutus.html">About Us</a>
      <a href="http://localhost/signup2.html">Signup</a> 
      <a class="active" href="http://localhost/login.html">Products</a>
      <a href="http://localhost/Home%20Remedies.html">Home Remedies</a> 
      <a href="http://localhost/contactus.html">Contact</a>
      <a href="http://localhost/feedback.html">Feedback</a>
  </div></body>
            <style>
        @import url('https://fonts.googleapis.com/css?family=Titillium+Web');

        *{
            font-family: 'Titillium Web', sans-serif;
        }
            table,td{
            text-align: center;
            border: 3.5px solid #e75480;
      padding-top: 10px;
      padding-bottom: 10px;
      padding-left: 10px;
      padding-right: 100px;
      /* margin-right: -50px; */
      margin: auto;
      border: 10;
      /* width: 100%; */
      border-collapse: collapse; 
        }
        .logo img
        {height: 175px;
        	width: 346px;}
    img{
        padding:10px;
        height:200px;
        width:200px;
    }   
    div.card {
  width: 250px;
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
  text-align: center;
  float: left;
   margin:10px;

}

.card:hover{
  box-shadow: 0 4px 8px 3px gray;
}
    </style>
    
	</head>
	<body>
		<br />
		<div>
			<h2 style="text-align: center;">Shopping cart</h2>
			
			<?php
				$query = "SELECT * FROM tbl_product ORDER BY id ASC";
				$result = mysqli_query($connect, $query);
				if(mysqli_num_rows($result) > 0)
				{
					while($row = mysqli_fetch_array($result))
					{
				?>
			<div>
				<form method="post" action="cart.php?action=add&id=<?php echo $row["id"]; ?>">
					<div class="card">
						<img src="<?php echo $row["image"]; ?>" class="img-responsive" /><br />

						<h2><?php echo $row["name"]; ?></h4>

						<h3>Rs. <?php echo $row["price"]; ?></h4>

						<input type="number" name="quantity" min="1" alue="1"><br>

						<input type="hidden" name="hidden_name" value="<?php echo $row["name"]; ?>" />

						<input type="hidden" name="hidden_price" value="<?php echo $row["price"]; ?>" />

						<input type="submit" name="AddtoCart" style="margin-top:5px;margin-bottom:5px" value="Add to Cart" />

					</div>
				</form>
			</div>
			<?php
					}
				}
			?>
			<div style="clear:both"></div>
			<br />
			<h3>Order Details</h3>
			<div>
				<table>
					<tr>
						<th width="30%">Product Name</th>
						<th width="10%">Quantity</th>
						<th width="13%">Price</th>
						<th width="10%">Total</th>
						<th width="17%">Action</th>
					</tr>
					<?php
					if(!empty($_SESSION["shopping_cart"]))
					{
						$total = 0;
						foreach($_SESSION["shopping_cart"] as $keys => $values)
						{
					?>
					<tr>
						<td><?php echo $values["item_name"]; ?></td>
						<td><?php echo $values["item_quantity"]; ?></td>
						<td>Rs. <?php echo $values["item_price"]; ?></td>
						<td>Rs. <?php echo number_format($values["item_quantity"] * $values["item_price"], 2);?></td>
						<td><a href="cart.php?action=delete&id=<?php echo $values["item_id"]; ?>"><span>Remove</span></a></td>
					</tr>
					<?php
							$total = $total + ($values["item_quantity"] * $values["item_price"]);
						}
					?>
					<tr>
						<td colspan="3" align="right">Total</td>
						<th align="right">Rs. <?php echo number_format($total, 2); ?></th>
						<td></td>
					</tr>
					<?php
					}
					?>
						
				</table>
			</div>
		</div>
	</div>
	<br />
	</body>
</html>

<?php
//If you have use Older PHP Version, Please Uncomment this function for removing error 

/*function array_column($array, $column_name)
{
	$output = array();
	foreach($array as $keys => $values)
	{
		$output[] = $values[$column_name];
	}
	return $output;
}*/
?>