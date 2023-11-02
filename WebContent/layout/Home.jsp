<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
	<link rel="shortcut icon" type="image/x-icon" href="https://cdn-icons-png.flaticon.com/512/561/561611.png">
	<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;700&display=swap">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
	
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
  	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    
  	
	<title>KITCHEN</title>
	<style>
		/* Reset CSS */
        * 
        {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Montserrat', sans-serif;
        }
        /* Header Styles */
		 header 
		{
            font-family: 'Montserrat', sans-serif;
            background-color: rgb(255, 102, 0);
            color: #fff;
            padding: 10px 0;
            text-decoration: none;
        }
        .container {
            display: flex;
            justify-content: space-between;
            align-items: center;
            /* max-width: 1200px;
            margin: 0 auto;
            padding: 0 20px; */
        }
        .logo {
            font-size: 32px;
            /* font-weight: bold; */
            text-transform: uppercase;
            
        }
        nav ul {
            list-style: none;
            display: flex;
            margin-bottom: auto;
            
        }

        nav li {
            margin-right: 20px;
        }

        nav a {
            
            text-decoration: none;
            color: #fff;
            /* font-weight: bold; */
            font-size: 18px;
        }
        nav a:hover {
            color: black;
            text-decoration: none;
        }
        .login-btn{
            /* background-color: transparent; */
            background-color: #ff6600;
            border: 2px solid #fff;
            /* color: #fff; */
            padding: 8px 20px;
            border-radius: 4px;
            cursor: pointer;
        }

        .login-btn a {
            color: #fff;
            text-decoration: none;
            font-weight: bold;
            
        }

        .login-btn a:hover {
            color: #323232;
        }
        .dropbtn {
            background-color: #ff6600;
            color: #fff;
            /* padding: 16px; */
            font-size: 18px;
            /* font-weight: bold; */
            border: none;
            cursor: pointer;
        }

        .dropbtn:hover, .dropbtn:focus {
            background-color: #ff6600;
            color: #323232;
        }

        .dropdown {
            position: relative;
            display: inline-block;
        }

        .dropdown-content {
            display: none;
            position: absolute;
            background-color: #f1f1f1;
            min-width: 200px;
            overflow: auto;
            box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
            z-index: 1;
        }

        .dropdown-content a {
            color: #323232;
            padding: 12px 16px;
            text-decoration: none;
            display: block;
            border-bottom: 2px solid #323232;
        }

        .dropdown a:hover {background-color: #ff6600;}

        .show {display: block;}
        
        /* Main Styles */
        main {
            font-family: 'Montserrat', sans-serif;
            position: relative;
            width: 100%;
            margin-bottom: 50px;
            background-color: #fff;
            min-height: 100px;
            
        }
        .banner-image {
            /* width: 70em; 
            height: 20em; */
            /* width: auto; */
            object-fit: cover;
            width: 1920px;
            height: 500px;
            /* height: auto; */
            display: block;
            /* margin: 20px auto; Điều chỉnh khoảng cách dưới header  */
            max-width: 100%;
        }
        form.example input[type=text] {
            
            position: absolute;
            top: 210px;
            right: 250px;
            padding: 10px;
            font-size: 17px;
            border: 1px solid grey;
            float: left;
            width: 960px;
            background: #f1f1f1;
            border-radius: 20px;
        }

        

        

        form.example i {
            position: absolute;
            top: 210px;
            right: 250px;
            /* right: 250px; */
            /* float: left; */
            /* width: 20%; */
            padding: 15px;
            /* background: #2196F3; */
            /* color: white; */
            color: #323232;
            font-size: 17px;
            /* border: 1px solid grey; */
            /* border-left: none; */
            cursor: pointer;
            
        }

        

        /* form.example button:hover {
            background: #0b7dda;
        } */

        form.example::after {
            content: "";
            clear: both;
            display: table;
        }
        .MAIN {
            background: url("https://bitly.li/YKla");
            background-size: cover;
            /* font-family: Arial, Helvetica, sans-serif; */
            font-family: 'Montserrat', sans-serif;
            background-color: #f1f1f1;
            color: red;
            text-align: center;
            height: 100%;
            width: 100%;
            padding: 110px 0px;
            /* width: 10em;
            height: 10em; */
            /* width: 200px;
            height: 200px; */
        }
        
        .MAIN:hover{
            cursor: pointer;
        }

        .DESSERT {
            background: url("https://bitly.li/PrY9");
            background-size: cover;
            /* font-family: Arial, Helvetica, sans-serif; */
            font-family: 'Montserrat', sans-serif;
            background-color: #f1f1f1;
            color: red;
            text-align: center;
            padding: 110px 0px;
            height: 100%;
            width: 100%;
            /* width: 600px;
            height: 480px; */
            
        }

        .DESSERT:hover {
            cursor: pointer;
        }

        .BREAKFAST {
            background: url("https://bitly.li/UXJD");
            background-size:cover;
            /* font-family: Arial, Helvetica, sans-serif; */
            font-family: 'Montserrat', sans-serif;
            background-color: #f1f1f1;
            color: red;
            text-align: center;
            padding: 110px 0px;
            /* padding-top: 100%; */
            height: 100%;
            width: 100%
        }

        .BREAKFAST:hover {
            cursor: pointer;
        }

        .FASTFOOD {
            background: url("https://bitly.li/ntis");
            background-size: cover;
            /* font-family: Arial, Helvetica, sans-serif; */
            font-family: 'Montserrat', sans-serif;
            background-color: #f1f1f1;
            color: red;
            text-align: center;
            padding: 110px 0px;
            height: 100%;
            width: 100%;
        }

        .FASTFOOD:hover {
            cursor: pointer;
        }
        .col-md-12 h1 {
            text-decoration: none;
            margin-left: 0.5em;
            margin-top: 1em;
            margin-bottom: 1em;

        }
        .card {
            margin-bottom: 2.5em;
            position: relative;
            display: flex;
            flex-direction: column;
            min-width: 0;
            word-wrap: break-word;
            background-color: #fff;
            background-clip: border-box;
            border: 1px solid rgba(0, 0, 0, 0.125);
            border-radius: 10px;
        }
        .meal-image
        {
            width: 30em;
            height: 20em;
            /* height: auto; */
            /* display: block; */
            display: flex;
            margin-bottom: 10px;

            
        }
        .card-img {
            width: 100%;
            border-radius: 10px;
        }
        .Name-meal
        {
            text-align: center;
            font-weight: 3px;
            /* font-family: 'Times New Roman', Times, serif; */
            font-family: 'Montserrat', sans-serif; 
            /* font-size: 5em; */
        }
        
        .Name-meal a {
            color: #323232;
            font-size: 18px;
            text-decoration: underline;
            
        }

        .Name-meal a:hover {
            color: #ff6600;
            font-size: 18px;
            text-decoration: underline;
            
        }
        h5 {
            font-size: 20px;
            font-family: 'Montserrat', sans-serif;
        }
        div .card:hover {
            border: 1px solid #ff6600;
            cursor: pointer;
        }
        .btn-view
        {
            padding: 5px 30px 5px 30px;
            /* margin-bottom: 1em; */
            /* padding: 5px 30px 5px 30px; */
            background-color: rgb(255, 255, 255);
            border-radius: 10px;
            border: 1px solid #333;
            text-align: center;
            /* margin-left: 8em; */
            margin-right: 2em;
            width: 100%;
            font-size: 18px;
            font-weight: bold;
           
            
        }

        .btn-view:hover
        {
            background-color: #ff6600;
            color: #fff;
            border: 1px solid #ff6600;
        }

        .btn {
            text-align: center;
            justify-content: center;
        }
        
        /* Footer Styles */
        footer {
            font-family: 'Montserrat', sans-serif;
            position: relative;
            width: 100%;
            background: #ff6600;
            min-height: 100px;
            padding: 20px 50px;
            display: flex;
            justify-content: center;
            align-items: center;
            flex-direction: column;
        }
        .social-icon,
        .menu {
            position: relative;
            display: flex;
            justify-content: center;
            align-items: center;
            margin: 10px 0;
            flex-wrap: wrap;
        }

        .social-icon__item,
        .menu__item {
            list-style: none;
        }

        .social-icon__link {
            font-size: 2rem;
            color: #fff;
            margin: 0 10px;
            display: inline-block;
            transition: 0.5s;
        }
        .social-icon__link:hover {
            transform: translateY(-10px);
        }

        .menu__link {
            font-size: 1.2rem;
            color: #fff;
            margin: 0 10px;
            display: inline-block;
            transition: 0.5s;
            text-decoration: none;
            opacity: 0.75;
            font-weight: 300;
        }

        .menu__link:hover {
            opacity: 1;
            text-decoration: none;
        }

        .footer p {
            color: #fff;
            margin: 15px 0 10px 0;
            font-size: 1rem;
            font-weight: 300;
            font-family: 'Montserrat', sans-serif;
        }
        p {
            /* font-family: system-ui, -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Open Sans', 'Helvetica Neue', sans-serif; */
            font-family: 'Montserrat', sans-serif;
            font-size: 16px;
            font-weight: bold;
            margin-right: 5px;
            
        }
        p:hover {
            cursor: pointer;
        }
        
	</style>
	
</head>
<body>
	<header>
		<div class="container">
            <div class="logo">KITCHEN</div>
                <nav>
                    <ul>
                        <li><a href="Home.jsp">Trang Chủ</a></li>
                       
                        <li class="dropdown">
                            <button onclick="myFunction()" class="dropbtn">Danh Mục
                                <i class="fa fa-caret-down"></i>
                                
                                <div id="myDropdown" class="dropdown-content"> 
                                    <a href="#">Danh Mục Món Ăn</a>
                                    <!-- <a href="GoiYMonAn.html">Gợi Ý Hôm Nay</a> -->
                                    <a href="TimKiemMonAn.html">Tìm Kiếm Món Ăn</a>
                                    <a href="MonAnPhoBien.html">Món Ăn Phổ Biến</a>
                                    <!-- <a href="DSYeuThich.html">Danh Sách Yêu Thích</a> -->
                                    <!-- <a href="TaoMon.html">Tạo Món Ăn</a> -->
                                </div>
                            </button>
                        </li>
        
                        <script>
                            /* When the user clicks on the button, 
                            toggle between hiding and showing the dropdown content */
                            function myFunction() {
                                document.getElementById("myDropdown").classList.toggle("show");
                            }
                                
                            // Close the dropdown if the user clicks outside of it
                            window.onclick = function(event) {
                                if (!event.target.matches('.dropbtn')) {
                                var dropdowns = document.getElementsByClassName("dropdown-content");
                                var i;
                                for (i = 0; i < dropdowns.length; i++) {
                                    var openDropdown = dropdowns[i];
                                    if (openDropdown.classList.contains('show')) {
                                        openDropdown.classList.remove('show');
                                    }
                                    }
                                }
                                }
                            </script>
        
                            
                            <li><a href="#">Tin Tức</a></li>
                        </ul>
                </nav>
                    <button class="login-btn"><a href="DangNhap.jsp" >Đăng Nhập</a></button>
        </div>
	</header>
	
	<main> 
        <div>
            
            <img class="banner-image" src="https://goeco.link/VwwdLW" alt="Banner Image" class="w-100">
            <form class="example" action="/action_page.php" style="margin:auto;max-width:300px">
                <input type="text" placeholder="Nhập các nguyên liệu..." name="search">
                   
                <button type="submit"><i class="fa fa-search"></i></button>
            </form>
            <!-- <div class="search-box">
                <input type="text" name="name" class="search-txt" placeholder="Nhập vào các nguyên liệu..." />
                <a class="search-btn" href="#">
                    <i class="fa fa-search" aria-hidden="true"></i>
                  </a>
            </div> -->
        </div>
        
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="col-md-3">
                        <a href="#"><h2 class="MAIN image-container"><marquee diection="left">MAIN FOOD</marquee></h2></a>
                    </div>

                    <div class="col-md-3">
                        <a href="#"><h2 class="DESSERT image-container"><marquee direction="right">DESSERT FOOD</marquee></h2></a>
                    </div>

                    <div class="col-md-3">
                        <a href="#"><h2 class="BREAKFAST image-container"><marquee direction="left">BREAKFAST FOOD</marquee></h2></a>
                    </div>

                    <div class="col-md-3">
                        <div class="">
                            <a href="#"><h2 class="FASTFOOD image-container"><marquee direction="right">FAST FOOD</marquee></h2></a>
                        </div>
                        
                        
                        
                        
                    </div>
                    

                </div>
            </div>
        </div>

        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <h1 class="text-center">Các món được tìm kiếm nhiều nhất</h1>
                    <div class="col-md-4">
                        <div class="image-container">
                            <div class="card">
                                <img class="meal-image card-img" src="https://goeco.link/YpZGm" alt="Banner Image">
                                <div class="Name-meal">
                                    <h5>Bánh bao chiên</h5>
                                    <div class="btn"></div>
                                    <a href="#"><button class="btn-view" type="button">Xem</button></a>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-4">
                        <div class="image-container">
                            <div class="card">
                                <img class="meal-image card-img" src="https://goeco.link/ZRylO" alt="Banner Image">
                                <div class="Name-meal">
                                    <h5>Sườn Xào Chua Ngọt</h5>
                                    <!-- <a href="ChiTietMonAn.html">Xem chi tiết</a> -->
                                    <div class="btn"></div>
                                    <a href="ChiTietMonAn.html"><button class="btn-view" type="button">Xem</button></a>
                                </div>
                                
                            </div>
                        </div>
                    </div>

                    <div class="col-md-4">
                        <div class="image-container">
                            <div class="card">
                                <img class="meal-image card-img" src="https://goeco.link/oAFzB" alt="Banner Image">
                                <div class="Name-meal">
                                    <h5>Gà Xào Sả Ớt</h5>
                                    <div class="btn"></div>
                                    <a href="#"><button class="btn-view" type="button">Xem</button></a>
                                </div>
                            </div>
                        </div>
                    </div>

                

                
                    <div class="col-md-4">
                        <div class="image-container">
                            <div class="card">
                                <img class="meal-image card-img" src="https://goeco.link/YpZGm" alt="Banner Image">
                                <div class="Name-meal">
                                    <h5>Bánh bao chiên</h5>
                                    <div class="btn"></div>
                                <a href="#"><button class="btn-view" type="button">Xem</button></a>
                                </div>
                            </div>
                        </div>
                    </div>
                    
                        <div class="col-md-4">
                            <div class="image-container">
                                <div class="card">
                                    <img class="meal-image card-img" src="https://goeco.link/ZRylO" alt="Banner Image">
                                    <div class="Name-meal">
                                        <h5>Sườn Xào Chua Ngọt</h5>
                                        <div class="btn"></div>
                                        <a href="ChiTietMonAn.html"><button class="btn-view" type="button">Xem</button></a>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-md-4">
                            <div class="image-container">
                                <div class="card">
                                    <img class="meal-image card-img" src="https://goeco.link/oAFzB" alt="Banner Image">
                                    <div class="Name-meal">
                                        <h5>Gà Xào Sả Ớt</h5>
                                        <div class="btn"></div>
                                        <a href="#"><button class="btn-view" type="button">Xem</button></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    
                    
                </div>
                
            </div>
        </div>
    </main> 
    
    <footer >
    	<div class="footer">
            
            <ul class="social-icon">
                <li class="social-icon__item"><a class="social-icon__link" href="#">
                    <ion-icon name="logo-facebook"></ion-icon>
                  </a></li>
                <li class="social-icon__item"><a class="social-icon__link" href="#">
                    <ion-icon name="logo-twitter"></ion-icon>
                  </a></li>
                <li class="social-icon__item"><a class="social-icon__link" href="#">
                    <ion-icon name="logo-linkedin"></ion-icon>
                  </a></li>
                <li class="social-icon__item"><a class="social-icon__link" href="#">
                    <ion-icon name="logo-instagram"></ion-icon>
                  </a></li>
              </ul>
              <ul class="menu">
                <li class="menu__item"><a class="menu__link" href="#">Trang chủ</a></li>
                <li class="menu__item"><a class="menu__link" href="#">Danh Mục</a></li>
                <!-- <li class="menu__item"><a class="menu__link" href="#">Nấu Ăn</a></li> -->
                <li class="menu__item"><a class="menu__link" href="#">Tin Tức</a></li>
              </ul>
              <p class="text-center">&copy;All Rights Reserved</p>
              <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
                <script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
        </div>
    </footer>
    
</body>
</html>