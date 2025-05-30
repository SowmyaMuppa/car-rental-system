<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Customer Report</title>
</head>
<body>
    <div class="main-container" id="customerReportMainContainer">
        <h1>Customer Report</h1>
        <br/>
        <div class="table-container">
        <table class="table" border="1">
            <tr class="table-header">
                <th>Username</th>
                <th>First Name</th>
                <th>Last Name</th>
                <th>Address</th>
                <th>Email</th>
                <th>Mobile</th>
                <th>License</th>
                <th>Expiry Date</th>
                <th>Status</th>
                  <th>Actions</th>
            </tr>
            
			<c:forEach items="${customers}" var="customer">
                <tr class="table-row">
                    <td>${customer.username}</td>
                    <td>${customer.firstName}</td>
                    <td>${customer.lastName}</td>
                    <td>${customer.address}</td>
                    <td>${customer.email}</td>
                    <td>${customer.mobile}</td>
                    <td>${customer.license}</td>
                    <td>${customer.expiryDate}</td>
                    <td>${customer.status}</td>
                    <td class="action-cell">
                  <a href="/customer/update/${customer.username}" class="action-btn update-btn">Update</a>
                  <a href="/customerDelete/${customer.username}" class="action-btn delete-btn">Delete</a>
              </td>
                </tr>
            </c:forEach>
        </table>
        </div>
        <br/>
        <h3><a class="return-link" href="/index">Return</a></h3>
    </div>
</body>
</html>
