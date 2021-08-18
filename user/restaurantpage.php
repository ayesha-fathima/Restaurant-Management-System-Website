<?php 
session_start();
include('dbcon.php');
?>
<!DOCTYPE html>
<html lang="en">
  <head>
  	<style>
  		.card {
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
  max-width: 300px;
  margin: auto;
  text-align: center;
}

.title {
  color: grey;
  font-size: 18px;
}


button {
  border: none;
  outline: 0;
  display: inline-block;
  padding: 8px;
  color: white;
  background-color: #000;
  text-align: center;
  cursor: pointer;
  width: 100%;
  font-size: 18px;
}

a {
  text-decoration: none;
  font-size: 22px;
  color: black;
}

button:hover, a:hover {
  opacity: 0.7;
}
</style>
  	 <style  type="text/css">
      a.nav-link:hover{color:grey;
        font-size: 40px}
    </style>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
   
    <title>Restaurant Page</title>
  </head>
  <body>
    <?php include('layouts/header.php');  ?>
    <!-- Add icon library -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <br><br>
    <div class="row" style="top:40px;">
        <div class="col-lg-4">
            <div class="card">
                <img src="assets/Burgill.jpeg" alt="Burgill" style="width:100% ">
                <h1>Burgill</h1>
                <p class="title">Restaurant</p>
                <p>Basavanagudi</p>
                <a href="menu.php" <p><button>Choose</button></p> </a> 
            </div>
        </div>
        <div class="col-lg-4">
            <div class="card">
                <img src="assets/Pine & Dine.jpg" alt="Pine & Dine" style="width:100%; height:198.97px;">
                <h1>Pine & Dine</h1>
                <p class="title">Restaurant</p>
                <p>Jayanagar</p>
                <a href="menu.php" <p><button>Choose</button></p> </a> 
            </div>
        </div>
        <div class="col-lg-4">
            <div class="card">
                <img src="assets/Chill Out.png" alt="Chill Out" style="width:100%; height:198.97px;">
                <h1>Chill Out</h1>
                <p class="title">Restaurant</p>
                <p>BTM Layout</p>
                <a href="menu.php" <p><button>Choose</button></p> </a> 
            </div>
        </div>
    </div>
    
   
    

</body>
</html>