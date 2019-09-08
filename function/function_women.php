<?php
    include ("db/db.php");


    //Begin, Make Category Dynamically
    function getBrands(){
        
        global $con;
        
        $get_brand = "select * from brand";

        $run_brand = mysqli_query($con,$get_brand);

        while($row_brand=mysqli_fetch_array($run_brand)){

            $brand_id = $row_brand['brand_id'];

            $brand_title = $row_brand['brand_title'];

            echo "

                <li>
                
                    <a href='women.php?brand=$brand_id'> $brand_title </a>
                
                </li>
            
            ";

        }
    }

    function getModels(){
        
        global $con;
        
        $get_model = "select * from models";

        $run_model = mysqli_query($con,$get_model);

        while($row_model=mysqli_fetch_array($run_model)){

            $model_id = $row_model['model_id'];

            $model_title = $row_model['model_title'];

            echo "

                <li>
                
                    <a href='women.php?models=$model_id'> $model_title </a>
                
                </li>
            
            ";

        }
    }//Finish, Make Category Dynamically


    //Begin, Make Product Image dynamically
    function getPro(){
        
        global $con;
        
        $get_pro = "select * from products_women order by 1 DESC LIMIT 0,6";

        $run_pro = mysqli_query($con,$get_pro);

        while($row_pro=mysqli_fetch_array($run_pro)){

            $product_id = $row_pro['product_id'];

            $product_title = $row_pro['product_title'];

            $product_price = $row_pro['product_price'];

            $product_image = $row_pro['product_image1'];

            echo "

            <div class='col-md-4 col-md-6 center-responsive'>
        
                <div class='product'>

                    <a href='details.php?product_id=$product_id'><img class='img-responsive' src='images/Product-Images/$product_image'></a>

                    <div class='text'>

                        <h3><a href='details.php?product_id=$product_id'>$product_title</a></h3>

                        <p class='price'>$ $product_price</p>

                        <p class='button'><a class='btn btn-default' href='details.php?product_id=$product_id'>View Details</a>

                            <a class='btn btn-primary' href='cart.php'><i class='fa fa-shopping-cart'></i> Add to Cart</a>

                        </p>

                    </div>
                    
                </div>
                
            </div>
            
            ";

        }
    }//Finish, Make Product Image dynamically


    // Begin side bar get production by brand function //
    function getCatBrand()
    {
        global $con;
        
        if(isset($_GET['brand'])){
            
            $brand_id = $_GET['brand'];
            
            $get_brand = "select * from brand where brand_id = '$brand_id'";
            
            $run_brand = mysqli_query($con,$get_brand);
            
            $row_brand = mysqli_fetch_array($run_brand);
            
            $brand_title = $row_brand['brand_title'];
            
            $brand_desc = $row_brand['brand_desc'];
            
            $get_products = "select * from products_women where brand_id = '$brand_id'";
            
            $run_products = mysqli_query($con,$get_products);
            
            $count = mysqli_num_rows($run_products);
            
            
            while($row_products = mysqli_fetch_array($run_products))
            {
                $product_id = $row_products['product_id'];
            
                $product_title = $row_products['product_title'];
            
                $product_price = $row_products['product_price'];
                
                $product_desc = $row_products['product_desc'];
            
                $product_img1 = $row_products['product_image1'];
                
                echo "
            
                <div class='col-md-4 col-sm-6 center-responsive'>

                    <div class='product'>

                        <a href='details.php?product_id=$product_id'>

                            <img class='img-responsive' src='images/Product-Images/$product_img1'>

                        </a>

                        <div class='text'>

                            <h3><a href='details.php?product_id=$product_id'>$product_title</a></h3>

                            <p class='price'>$ $product_price</p>

                            <p class='button'><a class='btn btn-default' href='details.php?product_id=$product_id'>View Details</a>

                                <a class='btn btn-primary' href='cart.php?product_id=$product_id'><i class='fa fa-shopping-cart'></i> Add to Cart</a>

                            </p>

                        </div>

                    </div>

                </div>

                ";
            }
        }
        
        
    }// Finish side bar get production by brand function //

    // Begin side bar get production by model function //
    function getCatModel()
    {
        global $con;
        
        if(isset($_GET['models'])){
            
            $model_id = $_GET['models'];
            
            $get_model = "select * from models where model_id = '$model_id'";
            
            $run_model = mysqli_query($con,$get_model);
            
            $row_model = mysqli_fetch_array($run_model);
            
            $model_title = $row_model['model_title'];
            
            $model_desc = $row_model['model_desc'];
            
            $get_products = "select * from products_women where model_id = '$model_id'";
            
            $run_products = mysqli_query($con,$get_products);
            
            $count = mysqli_num_rows($run_products);
            
            
            while($row_products = mysqli_fetch_array($run_products))
            {
                $product_id = $row_products['product_id'];
            
                $product_title = $row_products['product_title'];
            
                $product_price = $row_products['product_price'];
                
                $product_desc = $row_products['product_desc'];
            
                $product_img1 = $row_products['product_image1'];
                
                echo "
            
                <div class='col-md-4 col-sm-6 center-responsive'>

                    <div class='product'>

                        <a href='details.php?product_id=$product_id'>

                            <img class='img-responsive' src='images/Product-Images/$product_img1'>

                        </a>

                        <div class='text'>

                            <h3><a href='details.php?product_id=$product_id'>$product_title</a></h3>

                            <p class='price'>$ $product_price</p>

                            <p class='button'><a class='btn btn-default' href='details.php?product_id=$product_id'>View Details</a>

                                <a class='btn btn-primary' href='cart.php?product_id=$product_id'><i class='fa fa-shopping-cart'></i> Add to Cart</a>

                            </p>

                        </div>

                    </div>

                </div>

                ";
            }
        }
        
        
    }// Finish side bar get production by model function //
    
?>