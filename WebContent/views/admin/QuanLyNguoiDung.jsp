<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
            /* font-weight: bold; */
            
        }

        .login-btn a:hover {
            color: #323232;
        }

        .col-md-12 {
            margin-bottom: 3em;
            margin-top: 2em;
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

        
        

        
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        th, td {
            border: 1px solid #ddd;
            padding: 8px;
            text-align: left;
          font-size: medium;
           
        }

        th {
            background-color: #f06e17;
            color: whitesmoke;
            

        }
        tr:hover
        {
            background-color: #cecece;
            cursor: pointer;
        }
       
        h2
        {
            padding: 10px 0 10px 0;
            
            
            color: black;
            font-family: 'Montserrat', sans-serif;
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

        <div class="container">
            <div class="col-md-12">
            	<h1 class="text-center">Quản Lý Người Dùng</h1>
                <form class="example" action="/action_page.php">
                    <input type="text" id="myInput" placeholder="Nhập tên người dùng..." name="search">
                    <button type="submit"><i class="fa fa-search"></i></button>
                </form>
            </div>
        </div>

        <div class="container">
            <div></div>
                    
                    <br>
                    <table id="myTable">
                        <thead>
                            <tr>
                                <th>Mã Người Dùng</th>
                                <th>Tên Người Dùng</th>
                                <th>Email</th>
                            </tr>
                        </thead>
                        <tbody>
                            
    						<c:forEach items="${users}" var="users">
        					<tr>
            					<td>${user.id}</td>
            					<td>${user.tenND}</td>
            					<td>${user.email}</td>
        					</tr>
    						</c:forEach>

                        </tbody>
                    </table>


                    
                    <script>
                        // lấy thẻ input
                        var input = document.getElementById("myInput");
                        // định nghĩa hàm xử lý myFunction
                        function myFunction() {
                          var filter, table, tr, td, i;
                          // lấy giá trị người dùng nhập
                          filter = input.value.toUpperCase();
                       
                          // lấy phần bảng hiển thị kết quả
                          table = document.getElementById("myTable");
                          // lấy tất cả các thẻ tr
                          tr = table.getElementsByTagName("tr");
                       
                          //Nếu filter không có giá trị ẩn các kết quả
                          if (!filter) {
                            table.style.display = "none";
                          }else{
                            // lặp qua tất cả các thẻ tr
                            for (i = 0; i < tr.length; i++) {
                              // lấy giá trị của thẻ td thứ ba đại diện cho tên club
                              td = tr[i].getElementsByTagName("td")[1] ;
                              if (td) {
                                // kiểm tra giá trị filter có tồn tại trong thẻ tr không
                                if (td.innerHTML.toUpperCase().indexOf(filter) > -1) {
                                  //nếu có hiển thị chúng
                                  table.style.display = "table";
                                  tr[i].style.display = "";
                                } else {
                                  // nếu không ẩn chúng
                                  tr[i].style.display = "none";
                                }
                              }       
                            }
                          }
                        }
                        //gán sự kiện cho thẻ input
                        input.addEventListener("keyup", myFunction);
                      </script>
                 

                
                    
                    
                        

                       
                    
                    
               
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
                
                <li class="menu__item"><a class="menu__link" href="#">Tin Tức</a></li>
              </ul>
              <p class="text-center">&copy;All Rights Reserved</p>
<script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
                <script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
        </div>
    </footer>
        
       
   
        
        
   

</body>
</html>