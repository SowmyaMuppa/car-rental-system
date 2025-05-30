<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Customer Entry Page</title>
</head>
<body>
<div align ="center">
    <h1>Customer Entry Page</h1>
    <form:form action="/myaccount/update" method="post" modelAttribute="customer">
    	<form:hidden path="username"/>
    	<form:hidden path="email"/>
    	<form:hidden path="status"/>
    	
        User Name:<form:input path="username"  id="username" class="input" disabled="true"/>
        <br/><br/>

        Email:<form:input path="email"   id="email" class="input"  disabled="true"/>
        <br/><br/>
        

        Enter First Name:<form:input path="firstName" id="firstName" class="input" placeholder="First Name" />
        <br/><br/>
        

        Enter Last Name:<form:input path="lastName" id="lastName" class="input" placeholder="Last Name"/>
        <br/><br/>
       

        Enter Address:<form:input path="address" id="address" class="input" placeholder="Address"/>
        <br/><br/>
        
        
        Enter Mobile Number:<form:input path="mobile" id="mobile" class="input" placeholder="Mobile Number"/>
        <br/><br/>
        
        
        Enter License Number:<form:input path="license" id="license" class="input" placeholder="License Driving Number" />
        <br/><br/>
        
        
        
        Enter License Expiry Date:<form:input  path="expiryDate" id="expiryDate" class="input" placeholder="Expiry Date" />
        <br/><br/>
                <button type="submit">Submit</button>
                <button type="reset">Reset</button>
        
       </form:form>
       </div> 
       
       
</body>
</html>