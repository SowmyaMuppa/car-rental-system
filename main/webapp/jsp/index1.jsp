<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!-- admin -->
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Car Rental Page</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <style>
        body {
            font-family: Arial, Helvetica, sans-serif;
            background-color: #f0f2f5;
            margin: 0;
            padding: 0;
        }

        h1 {
            color: #1877f2;
            font-family: Arial, sans-serif;
            font-size: 2.5em;
            margin-top: 30px;
        }

        .navbar {
            overflow: hidden;
            background-color: #1877f2; 
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            margin: 20px auto;
            width: 90%;
        }

        .navbar a, .dropdown .dropbtn {
            float: left;
            font-size: 16px;
            color: white;
            text-align: center;
            padding: 14px 20px;
            text-decoration: none;
            transition: background-color 0.3s;
        }

        .dropdown {
            float: left;
            overflow: hidden;
        }

        .dropdown .dropbtn {
            border: none;
            outline: none;
            background-color: inherit;
            font-family: inherit;
            margin: 0;
            cursor: pointer;
        }

        .navbar a:hover, .dropdown:hover .dropbtn {
            background-color: #145dbf; 
            border-radius: 5px;
        }

        .dropdown-content {
            display: none;
            position: absolute;
            background-color: #ffffff;
            min-width: 180px;
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
            z-index: 1;
            border-radius: 8px;
            padding-top: 8px;
        }

        .dropdown-content a {
            float: none;
            color: #4b4f56;
            padding: 12px 16px;
            text-decoration: none;
            display: block;
            text-align: left;
            border-radius: 5px;
            transition: background-color 0.3s;
        }

        .dropdown-content a:hover {
            background-color: #e4e6eb;
        }

        .dropdown:hover .dropdown-content {
            display: block;
        }

        .logout {
            float: right;
            font-size: 16px;
            padding: 14px 20px;
            color: white;
            text-decoration: none;
            background-color: #1877f2;
            border-radius: 5px;
        }

        .logout:hover {
            background-color: #145dbf;
        }
    </style>
</head>

<body>
    <div align="center">
        <h1>Welcome To Car Rental Page</h1>
        <div class="navbar">
            <div class="dropdown">
                <button class="dropbtn">Customer</button>
                <div class="dropdown-content">
         <a href="/customerReport">Customer Reports</a>
                </div>
            </div>
            <div class="dropdown">
                <button class="dropbtn">Variant</button>
                <div class="dropdown-content">
                    <a href="/variantAdd">Variant Addition</a>
                    <a href="/variantReport">Variant Reports</a>
                </div>
            </div>
             <div class="dropdown">
                    <button class="dropbtn">Car</button>
                    <div class="dropdown-content">
                        <a href="/carAdd">Car Addition</a>
                        <a href="/carReport">Car Report</a>
                    </div>
                </div>
           
            <div class="dropdown">
                <button class="dropbtn">Booking</button>
                <div class="dropdown-content">
                    <a href="/bookingPayments">Booking Payments</a>
                    <a href="/bookingReport">Booking Report</a>
                </div>
            </div>
            <a href="/logout" class="logout">Logout</a>
        </div>
    </div>
</body>
</html>
