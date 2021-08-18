<nav class="navbar navbar-expand-lg navbar-dark p-2 bg-danger">
    <a class="navbar-brand" href="index.php"> 
        <img src="assets/Restaurants.png" width="80"
         height="80">
    </a>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item active">
                <a class="nav-link active"style="color:white;    margin-left: 75px;"  href="index.php">Home</a>
            </li>
           
            <li class="nav-item">
                <a class="nav-link"style="color:white;  margin-left: 75px;" href="restaurantpage.php">Restaurants</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" style="color:white;  margin-left: 75px;" href="contact page.php">Contact_Us</a>
            </li>
            <?php if(!$_SESSION){ ?>
            <li class="nav-item">
                <a class="nav-link" style="color:white;  margin-left: 75px;" href="login.php">Login</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" style="color:white;  margin-left: 75px;" href="signup.php">Signup</a>
            </li>
          <?php } else {  ?>
            <li class="nav-item">
                <a class="nav-link" style="color:white;  margin-left: 75px;" href="logout.php">Logout</button></a>
            </li>
          <li class="nav-item right">
            <a class="nav-link" style="color:white;  margin-left: 125px;" href="cart.php"><img src="cart.jpg" class=" "  width="15%" alt="" style="margin-left: 175px"></a>
          </li> 
          <?php  } ?>
          
        </ul>
      </div>
    </nav>