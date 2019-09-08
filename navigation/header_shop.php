<?php
    session_start();
    include ("db/db.php");
    include ("function/function_shop.php");
?>

<?php
    
if(isset($_GET['product_id'])){
        
        $product_id = $_GET['product_id'];
        
        $get_product = "select * from products_all where product_id = '$product_id'";
        
        $run_product = mysqli_query($con,$get_product);
        
        $row_product = mysqli_fetch_array($run_product);
        
        $brand_id = $row_product['brand_id'];
    
        $product_title = $row_product['product_title'];
    
        $product_price = $row_product['product_price'];
    
        $product_desc = $row_product['product_desc'];
    
        $product_img1 = $row_product['product_image1'];
    
        $product_img2 = $row_product['product_image2'];
    
        $product_img3 = $row_product['product_image3'];
    
        $get_brand = "select * from brand where brand_id = '$brand_id'";
        
        $run_brand = mysqli_query($con,$get_brand);
        
        $row_brand = mysqli_fetch_array($run_brand);
        
        $brand_title = $row_brand['brand_title'];
}

?>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Footprints</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="font-awsome/css/font-awesome.min.css">
    <link rel="stylesheet" href="styles/style.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
    <link rel="icon" href="images/favicon.ico" type="image/ico">
</head>

<header>
    
    <div id="top"><!-- Top Begin -->
       
       <div class="container"><!-- container Begin -->
           
           <div class="col-md-6 offer"><!-- col-md-6 offer Begin -->
               
               <a href="#" class="btn btn-success btn-sm">
               
                    <?php
                    
                        if(!isset($_SESSION['customer_email'])){
                            echo "Welcome: User";
                        }else{
                            echo "Welcome: " . $_SESSION['customer_email'] . "";
                        }
                    
                    ?>

               </a>
                              
           </div><!-- col-md-6 offer Finish -->
           
           <div class="col-md-6"><!-- col-md-6 Begin -->
               
               <ul class="menu"><!-- cmenu Begin -->
                   
                   <li>
                       <a href="cart.php">Cart</a>
                   </li>
                   <li>
                       <a href="register.php">Register</a>
                   </li>
                   <li>
                       <a href="login.php">
                       
                            <?php
                            
                                if(!isset($_SESSION['customer_email'])){
                                    echo "<a href='login.php'> Login </a>";
                                }else{
                                    echo "<a href='logout.php'> Logout </a>";
                                }
                            
                            ?>
                       
                       </a>
                   </li>
                   <li class="<?php if($active=='Profile') echo"active"; ?>">

                   <?php
                   
                        echo"<a href='profile.php'><img src='images/dummy-image.png' id='avatar'></a>"
                        
                   ?>
                   
                   </li>
                   
               </ul><!-- menu Finish -->
               
           </div><!-- col-md-6 Finish -->
           
       </div><!-- container Finish -->
       
   </div><!-- Top Finish -->
    
    <div id="navbar" class="navbar navbar-default"><!-- navbar navbar-default Begin -->
       
       <div class="container"><!-- container Begin -->
           
           <div class="navbar-header"><!-- navbar-header Begin -->
               
               <a href="index.php" class="navbar-brand home"><!-- navbar-brand home Begin -->
                   
                   <img src="images/footprints-logo.png" id="logo" alt="Footprins Logo" class="hidden-xs">
                   <img src="images/footprints-logo-mobile.png" id="logo-mobile" alt="Footprins Logo Mobile" class="visible-xs">
                   
               </a><!-- navbar-brand home Finish -->
               
               <button class="navbar-toggle" data-toggle="collapse" data-target="#navigation">
                   
                   <span class="sr-only">Toggle Navigation</span>
                   
                   <i class="fa fa-align-justify"></i>
                   
               </button>
               
               <button class="navbar-toggle" data-toggle="collapse" data-target="#search">
                   
                   <span class="sr-only">Toggle Search</span>
                   
                   <i class="fa fa-search"></i>
                   
               </button>
               
           </div><!-- navbar-header Finish -->
           
           <div class="navbar-collapse collapse" id="navigation"><!-- navbar-collapse collapse Begin -->
               
               <div class="padding-nav"><!-- padding-nav Begin -->
                   
                   <ul class="nav navbar-nav left"><!-- nav navbar-nav left Begin -->
                       
                       <li>
                           <a href="index.php">Home</a>
                       </li>
                       <li>
                           <a href="men.php">Men</a>
                       </li>
                       <li>
                           <a href="women.php">Women</a>
                       </li>
                       <li>
                           <a href="contact.php">Contact Us</a>
                       </li>
                       
                   </ul><!-- nav navbar-nav left Finish -->
                   
               </div><!-- padding-nav Finish -->
                              
               
               
               <div class="search-container" id="search"><!-- collapse clearfix Begin -->
                   
                   <form method="get" action="#" class="navbar-form"><!-- navbar-form Begin -->
                       
                       <div class="input-group"><!-- input-group Begin -->
                           
                           <input type="text" class="form-control" placeholder="Search" name="user_query" required>
                           
                           <span class="input-group-btn"><!-- input-group-btn Begin -->
                           
                           <button type="submit" name="search" value="Search" class="btn btn-primary"><!-- btn btn-primary Begin -->
                               
                               <i class="fa fa-search"></i>
                               
                           </button><!-- btn btn-primary Finish -->
                           
                           </span><!-- input-group-btn Finish -->
                           
                       </div><!-- input-group Finish -->
                       
                   </form><!-- navbar-form Finish -->
                   
               </div><!-- collapse clearfix Finish -->
               
           </div><!-- navbar-collapse collapse Finish -->
           
       </div><!-- container Finish -->
       
   </div><!-- navbar navbar-default Finish -->
</header>