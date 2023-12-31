<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <link rel="shortcut icon" type="image/x-icon" href="https://cdn-icons-png.flaticon.com/512/561/561611.png">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
  <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;700&display=swap">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
  
    <title>KITCHEN</title>
    <style>
        /* Reset CSS */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Montserrat', sans-serif;
        }

        /* Header Styles */
        header {
            font-family: 'Montserrat', sans-serif;
            background-color: #ff6600;
            color: #fff;
            padding: 10px 0;
            text-decoration: none;
        }

        main {
            font-family: 'Montserrat', sans-serif;
            position: relative;
            width: 100%;
            margin-bottom: 50px;
            background-color: #fff;
            min-height: 100px;
            
        }

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

        .col-md-12 h1 {
            text-decoration: none;
            margin-left: 0.5em;
            margin-top: 1em;
            margin-bottom: 1em;
            
            margin-right: 0.5em;
        }

        
        /* .col-md-12 h1{

            margin-top: 1.5em;
            margin-left: 2em;
            margin-right: 0.5em;
            
            padding: 15px 0px 15px 15px;
            font-size: 25px;
            font-family: 'Times New Roman', Times, serif;
            font-weight: bold;
            background-color: rgb(198, 195, 195);
            text-align: start;
            
        } */

        h5 {
            font-size: 20px;
            font-family: 'Montserrat', sans-serif;
        }
        
        

        .logo {
            font-size: 32px;
            font-weight: bold;
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
            /* font-weight: bold; */
            
        }

        .login-btn a:hover {
            color: #323232;
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

        

        .card-img {
            width: 100%;
            border-radius: 10px;
        }

        .search-box {
            display: flex;
            align-items: center;
        }

        .search-input {
            border: none;
            padding: 8px;
            border-radius: 10px;
        }

        .search-icon {
            margin-right: 10px;
            font-size: 24px;
        }

        
        
        .meal-image
        {
            width: 30em;
            height: 20em;
            /* height: auto; */
            /* display: block; */
            display: flex;
            margin-bottom: 10px;

            /* width: 15em;
            height: 15em;
            align-items: right; */
            /* display: block; */
            /* margin: 20px auto; /* Điều chỉnh khoảng cách dưới header 
         max-width: 100%; */
        }
        /* .image-container {
            margin-top:  50px; 
            margin-left: 2.3em;
        }
         */
        /* .col-md-12
        {
            margin-right: 50em;
        } */

        
        .Name-meal
        {
            text-align: center;
            font-weight: 3px;
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

        .card {
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

        .card1 {
            position: relative;
            display: flex;
            flex-direction: column;
            min-width: 0;
            word-wrap: break-word;
            background-color: #323232;
            background-clip: border-box;
            border: 1px solid #ff6600;
            border-radius: 10px;
        }

        .card-img {
            width: 100%;
            border-radius: 10px;
        }

        div .card:hover {
            border: 1px solid #ff6600;
            cursor: pointer;
        }
        /* .col-md-12
        {
            margin-right: 50em;
        }
         */

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
            margin-right: 11.5em;
            width: 100%;
            font-size: 18px;
            font-weight: bold;
            display: inline-block;
           
            
        }

        
        

        .btn-view:hover
        {
            background-color: #ff6600;
            color: #fff;
            border: 1px solid #ff6600;
        }

        .btn-viewall
        {
            padding: 5px 30px 5px 30px;
            background-color: rgb(255, 255, 255);
            border: 2px solid #333;
            border-radius: 10px;
            text-align: center;
            margin-left: 71em;
            /* margin-top: 5em; */
        }
        .btn-viewall:hover
        {
            background-color: #ff6600;
            color: #fff;
            border: 2px solid #ff6600;
        }

        .navbar-brand{
        	color: #fff;
        	font-size: 32px
        }
        .navbar-brand:hover{
        	color: #fff
        }
        .nav-link {
        	color: #fff;
        	font-size: 20px
        }
        .dropdown-item {
        	border-bottom: 1px solid black;
        	font-size: 20px;
        	
        }
        
        
        
        #menu .nav-link{ padding: 5px 20px }
		#menu .nav-link:hover {color: black}
		#menu .dropdown-item{ text-align: center; position: relative; padding: 10px;}
		#menu .dropdown-item:after{ content: ""; position: absolute; width: 40%; height: 2px;}
        
        
    </style>
</head>
<body>
    <header>
	 	<nav class="navbar navbar-expand-lg">
			<div class="container">
				<div>
		            <a class="navbar-brand" aria-curent="location" href="/KITCHEN/views/home.jsp">KITCHEN</a>
		        </div>
		        
			    <button type="button" class="navbar-toggler" data-bs-toggle="collapse" data-bs-target="#menu"> 
					<span class="navbar-toggler-icon"></span>
				</button>
	        
            <div class="collapse navbar-collapse" id="menu">
				<ul class="navbar-nav mx-auto">
					<li class="nav-item">
					  <a class="nav-link" aria-curent="location" href="/KITCHEN/views/home.jsp">Trang Chủ</a>
					</li>
					
					<li class="nav-item dropdown">
					  <a class="nav-link dropdown-toggle" href="#" data-bs-toggle="dropdown">
						Danh Mục
					  </a>
					  <ul class="dropdown-menu" >
						<li><a class="dropdown-item" href="DanhMucMonAn.jsp">Danh Mục Món Ăn</a></li>
						<li><a class="dropdown-item" href="GoiYHomNay.jsp">Gợi Ý Hôm Nay</a></li>
						<li><a class="dropdown-item" href="TimKiemMonAn.jsp">Tìm Kiếm Món Ăn</a></li>
						<li><a class="dropdown-item" href="MonAnPhoBien.jsp">Món Ăn Phổ Biến</a></li>
						<li><a class="dropdown-item" href="DanhSachYeuThich.jsp">Danh Sách Yêu Thích</a></li> 
						<li><a class="dropdown-item" href="TaoMonAn.jsp">Tạo Món Ăn</a></li> 	
					  </ul>
					</li>
					
					<li class="nav-item">
					  <a class="nav-link" href="#">Tin Tức</a>
					</li>
			  	</ul>
			  	
				
			
			
				<div>
	                <button class="login-btn">
	                	<a aria-curent="location" href="/KITCHEN/views/account.jsp">Tài Khoản</a>
	                </button>
	            </div>
	    	</div>
            
        </div>
        </nav>
      </header>

    <main>
        <div class="container py-5">
            <div class="row">
                
                    <h1 class="text-center">Món Ăn Buổi Sáng</h1>
                        <div class="col-md-4">
                            <div class="image-container">
                                <div class="card">
                                    <img class="meal-image card-img" src="https://s.net.vn/L5Dq" alt="Banner Image">
                                    <div class="Name-meal">
                                        <h5>Cháo Yến Mạch</h5>
                                        <div class="btn"></div>
                                        <a href="#"><button class="btn-view" type="button">Xem</button></a>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-md-4">
                            <div class="image-container">
                                <div class="card">
                                    <img class="meal-image card-img" src="https://s.net.vn/yQ1p" alt="Banner Image">
                                    <div class="Name-meal">
                                        <h5>Salad Trứng</h5>
                                        <!-- <a href="ChiTietMonAn.html">Xem chi tiết</a> -->
                                        <div class="btn"></div>
                                       
                                        <a href="#"><button class="btn-view" type="button">Xem</button></a>
                                        
                                        
                                        
                                    </div>
                                    
                                </div>
                            </div>
                        </div>

                        <div class="col-md-4">
                            <div class="image-container">
                                <div class="card">
                                    <img class="meal-image card-img" src="https://s.net.vn/uApF" alt="Banner Image">
                                    <div class="Name-meal">
                                        <h5>Bánh Mì Trứng Nướng</h5>
                                        <div class="btn"></div>
                                        <a href="#"><button class="btn-view" type="button">Xem</button></a>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-md-4">
                            <div class="image-container">
                                <div class="card">
                                    <img class="meal-image card-img" src="https://s.net.vn/gSYd" alt="Banner Image">
                                    <div class="Name-meal">
                                        <h5>Smoothie Trái Cây</h5>
                                        <div class="btn"></div>
                                    <a href="#"><button class="btn-view" type="button">Xem</button></a>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-md-4">
                            <div class="image-container">
                                <div class="card">
                                    <img class="meal-image card-img" src="https://s.net.vn/72Sa" alt="Banner Image">
                                    <div class="Name-meal">
                                        <h5>Súp Rau Củ</h5>
                                        <div class="btn"></div>
                                        <a href="#"><button class="btn-view" type="button">Xem</button></a>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-md-4">
                            <div class="image-container">
                                <div class="card">
                                    <img class="meal-image card-img" src="https://s.net.vn/mKvn" alt="Banner Image">
                                    <div class="Name-meal">
                                        <h5>Sữa Chua Hoa Quả</h5>
                                        <div class="btn"></div>
                                        <a href="#"><button class="btn-view" type="button">Xem</button></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    
	                    <div>
	                    	<button class="btn-viewall" type="submit">Xem Thêm <i class="fa-solid fa-share"></i></button>
	                    </div>
                </div>
            
        </div>  
        
        <hr style="border: 1px solid black; margin-left: 12em; margin-right: 12em;">
        
        <div class="container py-4">
            <div class="row">
                
                    <h1 class="text-center">Món Ăn Buổi Trưa</h1>
                        <div class="col-md-4">
                            <div class="image-container">
                                <div class="card">
                                    <img class="meal-image card-img" src="https://goeco.link/YpZGm" alt="Banner Image">
                                    <div class="Name-meal">
                                        <h5>Bánh Bao Chiên</h5>
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
                                        <a href="#"><button class="btn-view" type="button">Xem</button></a>
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
                                        <h5>Bánh Bao Chiên</h5>
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
                                        <a href="#"><button class="btn-view" type="button">Xem</button></a>
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
                    
                    	<div>
                    		<button class="btn-viewall" type="submit">Xem Thêm <i class="fa-solid fa-share"></i></button>
                    	</div>
                </div>
          
            
        </div> 
        
        <hr style="border: 1px solid black; margin-left: 12em; margin-right: 12em;">    
              
        <div class="container py-4">
            <div class="row">
                
                    <h1 class="text-center">Món Ăn Buổi Tối</h1>
                        <div class="col-md-4">
                            <div class="image-container">
                                <div class="card">
                                    <img class="meal-image card-img" src="https://s.net.vn/3yAm" alt="Banner Image">
                                    <div class="Name-meal">
                                        <h5>Cánh Gà Nướng Rau Củ</h5>
                                        <div class="btn"></div>
                                        <a href="#"><button class="btn-view" type="button">Xem</button></a>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-md-4">
                            <div class="image-container">
                                <div class="card">
                                    <img class="meal-image card-img" src="https://s.net.vn/A0RP" alt="Banner Image">
                                    <div class="Name-meal">
                                        <h5>Đậu bắp luộc rưới nước tương</h5>
                                        <!-- <a href="ChiTietMonAn.html">Xem chi tiết</a> -->
                                        <div class="btn"></div>
                                        <a href="#"><button class="btn-view" type="button">Xem</button></a>
                                    </div>
                                    
                                </div>
                            </div>
                        </div>

                        <div class="col-md-4">
                            <div class="image-container">
                                <div class="card">
                                    <img class="meal-image card-img" src="https://s.net.vn/9UJH" alt="Banner Image">
                                    <div class="Name-meal">
                                        <h5>Canh Rong Biển</h5>
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
                                        <h5>Bánh Bao Chiên</h5>
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
                                        <a href="#"><button class="btn-view" type="button">Xem</button></a>
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
	                    
	                    <div>
	                    	<button class="btn-viewall" type="submit">Xem Thêm <i class="fa-solid fa-share"></i></button>
	                    </div>
                </div>
           
            
        </div>
        
        <hr style="border: 1px solid black; margin-left: 12em; margin-right: 12em;"> 
             
        <div class="container py-4">
            <div class="row">
                
                    <h1 class="text-center">Món Ăn Tráng Miệng</h1>
                        <div class="col-md-4">
                            <div class="image-container">
                                <div class="card">
                                    <img class="meal-image card-img" src="https://s.net.vn/Dvua" alt="Banner Image">
                                    <div class="Name-meal">
                                        <h5>Yaourt Sữa Tươi</h5>
                                        <div class="btn"></div>
                                        <a href="#"><button class="btn-view" type="button">Xem</button></a>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-md-4">
                            <div class="image-container">
                                <div class="card">
                                    <img class="meal-image card-img" src="https://s.net.vn/XuoO" alt="Banner Image">
                                    <div class="Name-meal">
                                        <h5>Chè Nhãn Lồng Hạt Sen</h5>
                                        <!-- <a href="ChiTietMonAn.html">Xem chi tiết</a> -->
                                        <div class="btn"></div>
                                        <a href="#"><button class="btn-view" type="button">Xem</button></a>
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
                                        <h5>Bánh Bao Chiên</h5>
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
                                        <a href="#"><button class="btn-view" type="button">Xem</button></a>
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
                    
	                    <div>
	                    	<button class="btn-viewall" type="submit">Xem Thêm <i class="fa-solid fa-share"></i></button>
	                    </div>
                </div>
            </div>
            
       
    
        
    </main>
    
    <footer>
        <div class="footer">
            <!-- <div class="waves">
                <div class="wave" id="wave1"></div>
                <div class="wave" id="wave2"></div>
                <div class="wave" id="wave3"></div>
                <div class="wave" id="wave4"></div>
            </div> -->
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