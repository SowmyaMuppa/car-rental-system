<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div align="center">
<h1>Car Variant Entry Page</h1>
<form:form action="/variantAdd" method="post" modelAttribute="variantRecord">
<form:hidden path="variantId"/>
Variant Id:<form:input path="variantId" id="variantId" class="input" disabled="true"/>
<br/><br/>
Enter Variant Name: <form:input path="variantName" class="input" placeholder="Variant name" />
<br/><br/>
Enter Number of seats:<form:input path="numberOfSeat"  id="numberOfSeat" class="input" placeholder="No. of seats"/>
<br/><br/>
Enter Type of Fuel:<form:input path="fuel"  id="fuel" class="input" placeholder="Fuel type"/>
<br/><br/>
<button type="submit">Submit</button>
<button type="reset">Reset</button>
</form:form>

</div>
</body>
</html>