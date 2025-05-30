<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <script type="text/javascript">
        function validateEntries() {
            var pass1 = document.getElementById("pass1").value;
            var pass2 = document.getElementById("pass2").value;
            var email = document.getElementById("email").value;

            if (pass1.length < 5 || pass1.length > 10) {
                alert("Password length must be between 5 to 10 characters.");
                return;
            }

            var passwordRegex = /^(?=.*[A-Z])(?=.*\d)(?=.*[!@#$%^&*]).{5,10}$/;
            if (!passwordRegex.test(pass1)) {
                alert("Password must contain at least one uppercase letter, one digit, and one special character.");
                return;
            }

            if (pass1 !== pass2) {
                alert("Passwords do not match.");
                return;
            }

            var emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
            if (!emailRegex.test(email)) {
                alert("Please enter a valid email address.");
                return;
            }

            document.getElementById("registrationForm").submit();
        }
    </script>
    <title>Register New User</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #ffffff; 
            margin: 0;
            padding: 0;
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            color: #333;
        }

        header {
            width: 100%;
            background-color: #24292e; 
            color: white;
            padding: 10px 20px;
            display: flex;
            justify-content: space-between;
            align-items: center;
            position: fixed;
            top: 0;
            z-index: 1000;
        }

        .logo {
            font-size: 26px;
            font-weight: bold;
            color: #ffffff;
        }

        .login-btn {
            background-color: #2ea44f; /
            color: white;
            padding: 8px 15px;
            border-radius: 5px;
            text-decoration: none;
            font-size: 18px;
        }

        .login-btn:hover {
            background-color: #22863a;
        }

        .form-container {
            background-color: #24292e; 
            padding: 25px;
            border-radius: 8px;
            max-width: 400px;
            width: 100%;
            box-shadow: 0px 0px 15px rgba(0, 0, 0, 0.2);
            text-align: center;
            color: #ffffff;
        }

        h2 {
            color: #ffffff;
            margin-bottom: 20px;
        }

        label {
            color: #ffffff;
            margin-top: 15px;
            font-size: 16px;
            font-weight: bold;
            display: block;
        }

        .input-field {
            width: 100%;
            padding: 8px;
            font-size: 16px;
            margin-top: 5px;
            margin-bottom: 10px;
            border: 1px solid #d1d5da; 
            border-radius: 5px;
            background-color: #f6f8fa; 
            color: #24292e; 
        }

        button[type="button"], button[type="reset"] {
            width: 100%;
            padding: 10px;
            border: none;
            border-radius: 5px;
            font-size: 16px;
            cursor: pointer;
        }

        button[type="button"] {
            background-color: #2ea44f; 
            color: white;
            margin-top: 15px;
        }

        button[type="button"]:hover {
            background-color: #22863a;
        }

        button[type="reset"] {
            background-color: #e36209; 
            color: white;
            margin-top: 10px;
        }

        button[type="reset"]:hover {
            background-color: #cc4409;
        }
    </style>
</head>
<body>
    <header>
        <div class="logo">CarRentalSystem</div>
        <a href="/loginpage" class="login-btn">Login</a>
    </header>

    <div class="form-container">
        <form:form id="registrationForm" method="post" action="/register" modelAttribute="userRecord" class="form-container">
            <h2>Register New User</h2>

            <label>Enter User ID:</label>
            <form:input path="username" class="input-field"/>

            <label>Enter Password:</label>
            <form:input type="password" path="password" id="pass1" class="input-field"/>

            <label>Re-type Password:</label>
            <input type="password" id="pass2" class="input-field"/>

            <label>Enter Email:</label>
            <form:input path="email" class="input-field" id="email"/>

            <label>Select User Type:</label>
            <form:select path="role" class="input userType">
                    <form:option value="" label="Select User Type" disabled="true"/>
                    <form:option value="Customer" label="Customer"/>
                    <form:option value="Admin" label="Admin"/>
                </form:select>

            <button type="button" onclick="validateEntries();">Submit</button>
            <button type="reset">Reset</button>
        </form:form>
    </div>
</body>
</html>
