<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Car Entry Page</title>
    <style>
        body {
            font-family: Cambria, serif;
            background-color: #4267B2;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .container {
            width: 400px;
            padding: 30px;
            background-color: rgba(255, 255, 255, 0.95);
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            text-align: left;
        }

        h1 {
            color: #000;
            margin-bottom: 20px;
            text-align: center;
            font-size: 24px;
            font-weight: bold;
            text-decoration: underline;
        }

        label {
            color: #000;
            font-weight: bold;
            font-size: 14px;
            display: block;
            margin-top: 10px;
        }

        .input-box {
            width: 100%;
            padding: 10px;
            margin-top: 5px;
            margin-bottom: 15px;
            border-radius: 5px;
            border: 1px solid #ddd;
            background-color: rgba(240, 240, 240, 0.7);
            box-sizing: border-box;
            font-size: 14px;
        }

        button {
            padding: 10px 20px;
            color: #fff;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-weight: bold;
            width: 48%;
            margin: 5px 1%;
        }

        button[type="submit"] {
            background-color: #28a745; /* Green for submit */
        }

        button[type="reset"] {
            background-color: #dc3545; /* Red for reset */
        }

        button:hover {
            opacity: 0.9;
        }

        .button-container {
            display: flex;
            justify-content: center;
            margin-top: 20px;
        }
    </style>
</head>
<body>
    <div class="form-container">
        <h1>Car Entry Page</h1>
        <form:form action="/carAdd" method="post" modelAttribute="carRecord">
         <form:hidden path="available" />
         <label class="label" for="carNumber">Car Registration Number:</label>
            <form:input path="carNumber" id="carNumber" class="input" placeholder="Registration number" />
            <br /><br />

            <label class="label" for="carName">Enter Car Name:</label>
            <form:input path="carName" id="carName" class="input" placeholder="Car name"/>
            <br /><br />

            <label class="label" for="carColor">Enter Car Color:</label>
            <form:input path="carColor" id="carColor" class="input" placeholder="Car color" />
            <br /><br />

            <label class="label" for="manufacturer">Enter Car Manufacturer Name:</label>
            <form:input path="manufacturer" id="manufacturer" class="input" placeholder="Manufacturer name" />
            <br /><br />

            <label class="label" for="yearOfMfg">Enter Year of manufacturing:</label>
            <form:input path="yearOfMfg" id="yearOfMfg" class="input" placeholder="Year of manufacturing" />
            <br /><br />

            <label class="label" for="rentRate">Enter Rent rate per hour:</label>
            <form:input path="rentRate" id="rentRate" class="input" placeholder="Rent rate per hour" />
            <br /><br />

            <div class="variantIdContainer">
                <label class="label" for="variantId">Select Variant:</label>
                <form:select path="variantId" class="input variantId" id="carVariantId">
                    <form:option value="" label="Select Variant Id" disabled="true" />
                    <c:forEach items="${variantIdList}" var="vids">
                        <form:option value="${vids}">${vids}</form:option>
                    </c:forEach>
                </form:select>
            </div>

            <button class="submit-button btn" type="submit">Submit</button>
            <button class="reset-button btn" type="reset">Reset</button>
        </form:form>
            
    </div>
</body>
</html>
