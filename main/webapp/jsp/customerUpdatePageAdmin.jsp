<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Customer Update Page</title>
</head>
<body>
<div align ="center">
    <h1>Customer Update Page</h1>
    <form:form action="/myaccount/update" method="post" modelAttribute="customer">
    	<form:hidden path="username"/>
    	<form:hidden path="email"/>
    	<form:hidden path="status" />
    	<form:hidden path="firstName" />
    	<form:hidden path="mobile" />
    	<form:hidden path="license" />
        User Name:<form:input path="username"  id="username" class="input" disabled="true"/>
        <br/><br/>

        Email:<form:input path="email" id="email" class="input"  disabled="true"/>
        <br/><br/>
        

        First Name:<form:input path="firstName"  id="firstName" class="input" placeholder="First Name" disabled="true"/>
        <br/><br/>
        

        Update Last Name:<form:input path="lastName"  id="lastName" class="input" placeholder="Last Name"/>
        <br/><br/>
       

        Update Address:<form:input path="address" id="address" class="input" placeholder="Address"/>
        <br/><br/>
        
        
        Mobile Number:<form:input path="mobile" disabled="true" id="mobile" class="input" placeholder="Mobile Number" />
        <br/><br/>
        
        
        License Number:<form:input path="license" id="license" class="input" placeholder="License Driving Number" disabled="true"/>
        <br/><br/>
        
        
        Update License Expiry Date:<form:input path="expiryDate" id="expiryDate" class="input" placeholder="Expiry Date" />
        
        Status:<form:input path="status" id="status" class="input" placeholder="Status" />
        
        <div class="button-container">
                <button type="submit">Submit</button>
                <button type="reset">Reset</button>
            </div>
        
       </form:form> 
       </div>
       
       
</body>
</html>