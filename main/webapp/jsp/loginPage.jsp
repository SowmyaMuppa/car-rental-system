<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Car Rental System Login</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
            background-color: #f0f2f5; 
            height: 100vh;
            display: flex;
            flex-direction: column;
            justify-content: space-between;
            color: #1877f2; 
        }

        .header {
            background-color: rgba(24, 119, 242, 0.8); 
            color: white;
            padding: 10px 20px;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .header .logo {
            font-size: 24px;
            font-weight: bold;
        }

        /* Main content */
        .content {
            display: flex;
            justify-content: space-around;
            align-items: center;
            flex: 1;
            color: #1877f2; 
            text-align: center;
        }

        .content-left {
            flex: 1;
            padding: 40px;
            display: flex;
            flex-direction: column;
            align-items: center;
        }

        .content-left img {
            max-width: 100%;
            height: auto;
            margin-bottom: 20px;
            width: 250px;
        }

        .content-left h1 {
            font-size: 36px;
            margin: 10px 0;
        }

        .content-left h2 {
            font-size: 20px;
            color: #333; /* Dark text color */
        }

        /* Login Box */
        .login-box {
            background-color: rgba(0, 0, 0, 0.8);
            border-radius: 10px;
            padding: 20px;
            max-width: 300px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.5);
            text-align: center;
            color: white;
        }

        .login-box h3 {
            margin-bottom: 15px;
        }

        .login-box label {
            font-weight: bold;
            color: white;
            display: block;
            margin-bottom: 5px;
            text-align: left;
            width: 100%;
        }

        .login-box input[type="text"],
        .login-box input[type="password"] {
            width: 90%;
            padding: 8px;
            margin: 10px 0;
            border: 1px solid #ccc;
            border-radius: 20px;
            box-sizing: border-box;
            font-size: 14px;
            text-align: center;
        }

        .login-box input[type="submit"] {
            background-color: #1877f2;
            color: white;
            padding: 8px;
            border: none;
            border-radius: 20px;
            cursor: pointer;
            width: 70%;
            font-size: 14px;
            margin-top: 10px;
        }

        .login-box input[type="submit"]:hover {
            background-color: #145dbf;
        }

        .login-box a {
            text-decoration: none;
            color: white;
            font-weight: bold;
            display: block;
            margin-top: 15px;
        }

        .footer {
            background-color: rgba(24, 119, 242, 0.8);
            padding: 10px 20px;
            text-align: center;
            color: white;
        }
    </style>
</head>
<body>
    
    <div class="header">
        <div class="logo">Cars</div>
    </div>

   
    <div class="content">
        <div class="content-left">
            
            <h1>Rent your favourite car</h1>
            <h2>Find the best rental deals now!</h2>
        </div>
       
        <div class="login-box">
            <h3>Login</h3>
            <form action="/login" method="post">
                <label for="username">Enter User Id:</label>
                <input type="text" id="username" name="username" required/>

                <label for="password">Enter Password:</label>
                <input type="password" id="password" name="password" required/>
               

                <input type="submit" value="Submit"/>
            </form>
            <a href="/register">Register for new User</a>
        </div>
    </div>

    
    <div class="footer">
        Car Rental System
    </div>

</body>
</html>
