<?php 
session_start();
include('dbcon.php');

if(!$_SESSION["uid"])
{
    header("Location:login.php");
}

if($_GET)
{
	$item_id = $_GET["id"];
	$userid = $_SESSION["uid"];

	echo " $userid";

	$SQL = "INSERT INTO cart (item_id, userid) VALUES ($item_id, $userid)";
	if ($con->query($SQL) === TRUE) {
  echo "New record created successfully";
  header("Location:menu.php");
}  
}


?>
