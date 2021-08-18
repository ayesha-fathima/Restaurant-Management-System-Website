<?php
session_start();


?>

<!DOCTYPE html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
    <title>Home Page</title>
     <style  type="text/css">
      a.nav-link:hover{color:grey;
        font-size: 40px}
    </style>
    <style>
     
      .coupon {
        border: 5px dotted #bbb; /* Dotted border */
        width: 90%;
        border-radius: 15px; /* Rounded border */
        margin: 0 auto; /* Center the coupon */
       }

      .container {
        padding: 2px 16px;
        background-color: #f1f1f1;
      }

      .promo {
        background: #ccc;
        padding: 3px;
      }

      .expire {
        color: red;
      }

      .videoBack{

      }
      #myVideo {
        position: fixed;
        right: 0;
        bottom: 0;
        min-width: 100%;
        min-height: 100%;
        z-index:-1;
    }
    .row{
        --bs-gutter-x :0rem !important;
    }
    </style>
  </head>
  <body>
    <!--NAVBAR-->
    <?php include('layouts/header.php'); ?>
    <video autoplay muted loop id="myVideo">
        <source src="assets/bgvideo.mp4" type="video/mp4">
    </video>
    <!--CAROUSEL-->
    <br> 
    <div class="row p-2" >
        <div class="col-lg-7">
          <div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel" >
            <ol class="carousel-indicators center">
              <li data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" ></li>
              <li data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1"></li>
              <li data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2"></li>
            </ol>
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img src="assets/s3.jpg" class=" "  width="100%" alt="...">
                </div>
                <div class="carousel-item">
                    <img src="assets/s1.jpg" class=" "  width="100%" alt="...">
                </div>
                 <div class="carousel-item">
                    <img src="assets/s2.jpg" class=" "  width="100%" alt="...">
                </div>
                 
            </div>
            <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-bs-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Previous</span>
            </a>
            <a class="carousel-control-next float-right" href="#carouselExampleIndicators" role="button"   data-bs-slide="next">
                <span class="carousel-control-next-icon" style="" aria-hidden="true"></span>
                <span class="visually-hidden">Next</span>
            </a>
          </div>
        </div>
        <div class="col-lg-5">
          <div class="coupon bg-white">
          <div class="container">
            <h3>COUPON</h3>
          </div>
          <img src="assets/coupon.jpg" alt="Avatar" style="width:100%;">
          <div class="container" style="background-color:white">
            <h2><b>20% OFF  ON YOUR PURCHASE</b></h2>
            <p>Burger and Fries</p>
          </div>
          <div class="container">
            <p>Use Promo Code: <span class="promo">BOH232</span></p>
            <p class="expire">Expires: Feb 03, 2021</p>
          </div>
        </div>
        </div>
    </div>
    



        
 
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW" crossorigin="anonymous"></script>

    
   </body>
</html>