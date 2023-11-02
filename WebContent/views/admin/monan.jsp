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

        
        .logo {
            font-size: 32px;
            
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
            
            font-size: 18px;
        }
        nav a:hover {
            color: black;
            text-decoration: none;
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

            
            
        }

        .login-btn a:hover {
            color: #323232;
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
        } */
        
        /* .col-md-12
        {
            margin-right: 50em;
        } */

        .col-md-12 h1 {
            text-decoration: underline;
            margin-left: 0.5em;
            margin-top: 1em;
            margin-bottom: 1em;

        }
        
        .Name-meal
        {
            text-align: center;
            
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

        
        .card-img {
            width: 100%;
            border-radius: 10px;
        }

        .py-5 {
            padding-top: 3rem !important;
            padding-bottom: 3rem !important;
        }

        h5 {
            font-size: 20px;
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
            /* width: 40%; */
            float: left;
            font-size: 13px;
            font-weight: bold;
            display: block;
            justify-content: right;
            
        }
        .btn-delete
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
            width: 40%;
            float: right;
            font-size: 15px;
            font-weight: bold;
            display: block;
            justify-content: right;
        }

        .btn-view:hover,.btn-choose:hover
        {
            background-color: #ff6600;
            color: #fff;
            border: 1px solid #ff6600;
        }

        .btn,.btn-choose {
            text-align: center;
            justify-content: center;
        }
        .btn-choose
        {
            padding: 5px 2px 5px 2px;
            align-items: center;
        }
        select
        {
            padding: 5px 0 5px 0;
            margin-bottom: 2em;
            margin-top:0.5em;
        }
        option
        {
        
            padding: 10px 0 10px 0;
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
            margin-top: 2em;
        }
        
        .card-menu
        {
            margin-bottom: 2.5em;
            
            margin-top: 2em;
            position: relative;
            display: flex;
            flex-direction: column;
            min-width: 0;
            max-width: 22em;
            word-wrap: break-word;
            background-color: #fff;
            background-clip: border-box;
            border: 1px solid rgba(0, 0, 0, 0.125);
            border-radius: 10px;
            height: 30em;
            
        }
        /* p{
            
           margin-left: 1em;
            font-size: 2.5em;
            padding: 10px 0 10px 0;
            border-bottom: 1px solid black;
            border-left: 1px solid black;
        } */
        .col-md-12 h1 {
            text-decoration: none;
        }
        
        .container_swap{

            width: 100%;
            /* padding: 5px 30px 5px 30px; */

        }

        .div_left {
            width: 40%;
            float: left;
            text-align: center;
            /* padding: 5px 30px 5px 30px; */
            border-radius: 10px;
            margin-bottom: 1em;
            margin-left: 2.5em;

        }

        .div_right {
            width: 40%;
            float: right;
            text-align: center;
            /* padding: 5px 30px 5px 30px; */
            border-radius: 10px;
            margin-right: 0.25em
            
        }

        form.example input[type=text] {
            
            position: absolute;
            /* top: 210px; */
            /* right: 250px; */
            padding: 10px;
            margin-left: 21em;
            font-size: 17px;
            border: 1px solid #323232;
            /* float: left; */
            
            width: 580px;
            background: #fff;
            border-radius: 10px;
            
        }

        form.example i {
            position: absolute;
            margin-left: 53em;
            color: gray;
            font-size: 17px;
            cursor: pointer;
            
        }

        form.example::after {
            content: "";
            clear: both;
            display: table;
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
		
		#menu-trai {
			margin-top:2em;
			background-color: #eee;
			width: 100%;
		}
		
		
		#accordion .cap {
			background: #ff6600;
			padding: 8px 10px;
			font-weight: bold; text-transform: uppercase; 
        	cursor: pointer; color: white;font-size: 18px;
		}
		#accordion > .ck > label {
	        margin: 8px 0 8px 30px;
	        font-size: 18px; 
	        display: block; 
	        cursor: pointer; 
		}
		#accordion > .ck input { width: 16px; height: 16px; margin-right: 10px;}
		
		
       

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
					
					<li class="nav-item dropdown">
					  <a class="nav-link dropdown-toggle" href="#" data-bs-toggle="dropdown">
						Quản Lý
					  </a>
					  <ul class="dropdown-menu" >
						<li><a class="dropdown-item" href="QuanLyNguoiDung.jsp">Quản Lý Người Dùng</a></li>
						<li><a class="dropdown-item" href="QuanLyMonAn.jsp">Quản Lý Món Ăn</a></li>
						<li><a class="dropdown-item" href="QuanLyBaiDang.jsp">Quản Lý Bài Đăng</a></li>
						<li><a class="dropdown-item" href="QuanLyDanhMuc.jsp">Quản Lý Danh Mục</a></li>
							
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
    			<div class="col-md-3">
		    		<div id="menu-trai">
		    			<div id="accordion">
		    				<div class="cap">Chọn món</div>
		    				<div class="ck">
		    					
		    					<label><input type="checkbox" class="chon_mon" value="Món Chính">Món Chính</label>
		    					<label><input type="checkbox" class="chon_mon" value="Món Ăn Sáng">Món Ăn Sáng</label>
		    					<label><input type="checkbox" class="chon_mon" value="Món Ăn Nhanh">Món Ăn Nhanh</label>
		    					<label><input type="checkbox" class="chon_mon" value="Món Tráng Miệng">Món Tráng Miệng</label>
		    					
		    				</div>
		    			</div>
		    		</div>
		    	</div>
    			
    			<div class="col-md-9">
    				<div class="row">
			    		<div class="col-md-4">
	                                <div class="image-container">
	                                    <div class="card">
	        								<img class="meal-image card-img" src="https://bitly.li/xsnX" alt="Banner Image" type="p1">
	                                        <div class="Name-meal">
	                                            <h5>Mì Ống Sốt Alfredo</h5>
	                                            <div class="container_swap">
	                                                <div class="div_left"><a href="#"><button class="btn-view" type="button">Xem</button></a></div>
	                                                <div class="div_right"><a href="#"><button class="btn-view" style="background: red;" type="button">Xóa</button></a></div>
	                                            </div>
	                                        </div>
	                                    </div>
	                                </div>
	                            </div>
	                            
	                    
	                    <div class="col-md-4">
	                                <div class="image-container">
	                                    <div class="card">
	                                        <img class="meal-image card-img" src="https://bitly.li/1g0z" alt="Banner Image" type="p1">
	                                        <div class="Name-meal">
	                                            <h5>Cơm Gà Mơ</h5>
	                                            <!-- <a href="ChiTietMonAn.html">Xem chi tiết</a> -->
	                                            <div class="container_swap">
	                                                <div class="div_left"><a href="#"><button class="btn-view" type="button">Xem</button></a></div>
	                                                <div class="div_right"><a href="#"><button class="btn-view" style="background: red;" type="button">Xóa</button></a></div>
	                                            </div>
	                                        </div>
	                                        
	                                    </div>
	                                </div>
	                            </div>
	                            
	                      <div class="col-md-4">
	                                <div class="image-container">
	                                    <div class="card">
	                                        <img class="meal-image card-img" src="https://bitly.li/mZr1" alt="Banner Image" type="p1">
	                                        <div class="Name-meal">
	                                            <h5>Thịt Bò Burgundy</h5>
	                                            <div class="container_swap">
	                                                <div class="div_left"><a href="#"><button class="btn-view" type="button">Xem</button></a></div>
	                                                <div class="div_right"><a href="#"><button class="btn-view" style="background: red;" type="button">Xóa</button></a></div>
	                                            </div>
	                                        </div>
	                                    </div>
	                                </div>
	                            </div>
	                            
	                     <div class="col-md-4">
	                                <div class="image-container">
	                                    <div class="card">
	                                        <img class="meal-image card-img" src="https://s.net.vn/uApF" alt="Banner Image" type="p2">
	                                        <div class="Name-meal">
	                                            <h5>Bánh Mì Trứng Nướng</h5>
	                                            <div class="container_swap">
	                                                <div class="div_left"><a href="#"><button class="btn-view" type="button">Xem</button></a></div>
	                                                <div class="div_right"><a href="#"><button class="btn-view" style="background: red;" type="button">Xóa</button></a></div>
	                                            </div>
	                                        </div>
	                                    </div>
	                                </div>
	                            </div>
	                            
	                                <div class="col-md-4">
	                                    <div class="image-container">
	                                        <div class="card">
	        <img class="meal-image card-img" src="https://s.net.vn/72Sa" alt="Banner Image" type="p2">
	                                            <div class="Name-meal">
	                                                <h5>Súp Rau Củ</h5>
	                                                <div class="container_swap">
	                                                    <div class="div_left"><a href="#"><button class="btn-view" type="button">Xem</button></a></div>
	                                                    <div class="div_right"><a href="#"><button class="btn-view" style="background: red;" type="button">Xóa</button></a></div>
	                                                </div>
	                                            </div>
	                                        </div>
	                                    </div>
	                                </div>
	        
	                                <div class="col-md-4">
	                                    <div class="image-container">
	                                        <div class="card">
	                                            <img class="meal-image card-img" src="https://goeco.link/oAFzB" alt="Banner Image" type="p1">
	                                            <div class="Name-meal">
	                                                <h5>Gà Xào Sả Ớt</h5>
	                                                <div class="container_swap">
	                                                    <div class="div_left"><a href="#"><button class="btn-view" type="button">Xem</button></a></div>
	                                                    <div class="div_right"><a href="#"><button class="btn-view" style="background: red;" type="button">Xóa</button></a></div>
	                                                </div>
	                                            </div>
	                                        </div>
	                                    </div>
	                                </div>
	                    
	                    
	                     
			    		
			    		
			    	</div>
	    		
	    		</div>
	    	</div>
    	</div>
    	
    	
    	<script>
    		var imgList = document.querySelectorAll('img')
    		var container = document.querySelector('.container')
    		var btnList = document..querySelectorAll('button')
    		
    		//init data
    		var arr = []
    		imgList.forEach(item=>{
    			arr.push({
    				src: item.src,
    				type: item.getAttribute('type')
    			})
    		})
    		
    		btnList.forEach(btn=>{
    			btn.addEventListener('click', e=>{
    				let type = e.currentTarget.getAttribute('type')
    				let filterData = arr.filter(food=>{
    					return food.type == type
    				})
    				render(filterData)
    			})
    		})
    		
    		
    		function render(list) {
    			container.innerJSP = ''
    			list.forEach(item=>{
    				let imgElement = document.createElement('img')
    				imgElement.src= item.src
    				imgElement.setAttribute('type', item.type)
    				container.append(imgElement)
    			})
    		}
    		
    		console.log(arr);
    	</script>
    	
    	
    	
    	
    	
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
               
                <li class="menu__item"><a class="menu__link" href="#">Tin Tức</a></li>
              </ul>
              <p class="text-center">&copy;All Rights Reserved</p>
<script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
                <script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
        </div>
    </footer>
        
       
   
        
        
   

</body>
</html>