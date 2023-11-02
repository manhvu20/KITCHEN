<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ĐĂNG KÝ</title>
    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.15.4/css/all.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <link rel="shortcut icon" type="image/x-icon" href="https://cdn-icons-png.flaticon.com/512/561/561611.png">
    
    <style>
        body
        {
        	font-family: 'Montserrat', sans-serif;
            background: url(background.jpg);
            background-size: cover;
            /* background-position-y: -200px; */

        }
        #wrapper
        {
            min-height: 90vh;
            display: flex;
            justify-content: center;
            align-items: center;
            
        }
        #form-login
        {
            max-width: 350px;
            background: rgba(220, 123, 33, 0.8);
            flex-grow: 1;
            padding: 30px 30px 40px;
            box-shadow: 0px 0px 17px 2px rgba(228, 226, 226, 0.8);
        }
        .form-heading
        {
            font-size: 25px;
            color: white;
            text-align: center;
            margin-bottom: 30px;
        }
        
        .form-submit
        {
            background: transparent;
            border: 1px solid #fff;
            color: #fff;
            width: 100%;
            text-transform: uppercase;
            padding: 6px 10px;
            transition: 0.25s ease-in-out;
            margin-top: 30px;
        }
        .form-submit:hover
        {
            border: 1px solid rgb(57, 57, 231);
            
        }
        p
        {
            border-bottom: 1px solid #fff;
        }
        label {
            display: block;
            margin-bottom: 8px;
        }

        input {
            width: 100%;
            padding: 8px;
            margin-bottom: 16px;
            box-sizing: border-box;
        }

    </style>
</head>
<body>
   
    <div id = "wrapper">
    <form action="" id="form-login">
        <h1 class="form-heading">ĐĂNG KÝ</h1>
        
        <label for="fullName">Họ Tên:</label>
        <input type="text" id="fullName" name="fullName" required>
    
        <label for="username">Tên Tài Khoản:</label>
        <input type="text" id="username" name="username" required>
    
        <label for="email">Email:</label>
        <input type="email" id="email" name="email" required>
    
        <label for="password">Mật Khẩu:</label>
        <input type="password" id="password" name="password" required>
    
        <label for="confirmPassword">Nhập Lại Mật Khẩu:</label>
        <input type="password" id="confirmPassword" name="confirmPassword" required>
        <input type="submit" value="Đăng Nhập" class="form-submit">

    </form>
</div>
    


</body>
</html>