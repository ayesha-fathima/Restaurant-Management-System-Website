<?php 
session_start();
include('dbcon.php');

 
    	$id = $_GET["id"];
 
	$SQL1 = "DELETE FROM cart WHERE id = $id";
 
 
	 
	if (($con->query($SQL1) === TRUE)) {
	 
			  header("Location:./cart.php?okay");
 
  
}  
else
{
	  header("Location:./cart.php?okay");
}


?>