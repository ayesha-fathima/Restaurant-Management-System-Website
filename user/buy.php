<?php 
session_start();
include('dbcon.php');

 
   	$cust_id = $_SESSION["uid"];
   	$amount = $_GET["tempdata"];

 	$sql1 = "SELECT *FROM cart WHERE userid = $cust_id";
 	$itemIds = array();
  	$result1 = $con->query($sql1);
	if ($result1->num_rows > 0) {
			  // output data of each row
			  while($row1 = $result1->fetch_assoc()) {
			  	     $item_id = $row1["item_id"];
			  	     array_push($itemIds,$item_id);
			  			
			  		}
			 	}

			 	print_r($itemIds);

	$convertIds = serialize($itemIds);
    echo

	$SQL1 = "DELETE FROM cart WHERE userid = $cust_id";
	$SQL2 = "INSERT INTO orders (ID_no, item_ids, customer_id, status, amount)
	 VALUES (0,'$convertIds',$cust_id, 0, $amount)";


 
	 
	if (($con->query($SQL1) === TRUE)) {
		if(($con->query($SQL2) === TRUE))
		{
			  header("Location:./menu.php?okay=$cust_id;");

		}
  
}  
else
{
	echo "";
}


?>