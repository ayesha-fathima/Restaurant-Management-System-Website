<?php 
session_start();
include('dbcon.php');
?>
<!DOCTYPE html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <title> Menu </title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
    <style  type="text/css">
      a.nav-link:hover{color:grey;
        font-size: 40px}
    </style>
    <style>
        .flip-card {
          background-color: white;
          width: 100%;
          height: 200px;
          margin: 5px;
          perspective: 1000px; /* Remove this if you don't want the 3D effect */
        }

        /* This container is needed to position the front and back side */
        .flip-card-inner {
          position: relative;
          width: 100%;
          height: 100%;
          text-align: center;
          transition: transform 0.8s;
          transform-style: preserve-3d;
        }

        /* Do an horizontal flip when you move the mouse over the flip box container */
        .flip-card:hover .flip-card-inner {
          transform: rotateY(180deg);
        }
        #myVideo {
        position: fixed;
        right: 0;
        bottom: 0;
        min-width: 100%;
        min-height: 100%;
        z-index:-1;
        backdrop-filter: blur(5px);
    }
    .row{
        --bs-gutter-x :0rem !important;
    }

        /* Position the front and back side */
        .flip-card-front, .flip-card-back {
          position: absolute;
          width: 100%;
          height: 100%;
          -webkit-backface-visibility: hidden; /* Safari */
          backface-visibility: hidden;
        }

        /* Style the front side (fallback if image is missing) */
        .flip-card-front {
          background-color: white;
          color: black;
        }
        .flip-card-front img{
          width: 100%;
        }

        /* Style the back side */
        .flip-card-back {
          background-color: dodgerblue;
          color: white;
          transform: rotateY(180deg);
        }
    </style>
  </head>
  <body>
     <video autoplay muted loop id="myVideo">
        <source src="assets/bgvideo.mp4" type="video/mp4">
    </video>
    <?php include('layouts/header.php'); ?>
    <div class="w3-row-padding">

     <?php 
     	$sql = "SELECT *FROM menu";
		$result = $con->query($sql);

		if ($result->num_rows > 0) {
			  // output data of each row
			  while($row = $result->fetch_assoc()) {

			    ?>
<div class="w3-col l3">
<div class="flip-card ">
  		<div class="flip-card-inner w3-card-2">
		    <div class="flip-card-front">
		      <img src="../user/<?php echo $row["image"]; ?>" alt="Avatar" height="100%">
		    </div>
		    <div class="flip-card-back">
		      <h6><?php echo $row["description"]; ?></h6>
		      <p>(<?php echo $row["quantity"]; ?>)</p>
		      <p>Rs.<?php echo $row["price"]; ?>/-</p>
		      <a href="addtocart.php?id=<?php echo $row['item_no']; ?>" class="w3-btn w3-white">Add to cart</a>
		    </div>
  		</div>
	</div>
</div>

			    <?php
			  }
			} else {
			  echo "0 results";
			}  ?>
  	
</body>
</html>