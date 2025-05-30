<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Customer Profile</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/styles.css">
</head>
<body>
    <div class="profile-container">
        <c:choose>
            <c:when test="${customer == null}">
                <div class="incomplete-prof-container">
                    <p class="incomplete-message">Looks like you have not completed your profile yet! Please complete your profile by providing your details.</p>
                    <a href="/myaccount/completeProfile" class="complete-profile-button">Complete profile!</a>
                </div>
            </c:when>
            <c:otherwise>
                    <div class="section my-account">
                        <h2 class="primary-heading">My Account</h2>
                        <a href="/customer/update/${customer.username}" class="update-button">Update Details</a>
                    </div>
                    <div class="section my-details">
                        <h2 class="section-heading">Customer details:</h2>
                        <p class="detail-item"><strong>Username:</strong> <span class="detail-value">${customer.username}</span></p>
                        <p class="detail-item"><strong>First Name:</strong> <span class="detail-value">${customer.firstName}</span></p>
                        <p class="detail-item"><strong>Last Name:</strong> <span class="detail-value">${customer.lastName}</span></p>
                        <p class="detail-item"><strong>Address:</strong> <span class="detail-value">${customer.address}</span></p>
                        <p class="detail-item"><strong>Email:</strong> <span class="detail-value">${customer.email}</span></p>
                        <p class="detail-item"><strong>Mobile:</strong> <span class="detail-value">${customer.mobile}</span></p>
                    </div>

                    <div class="section license">
                        <h2 class="section-heading">License details:</h2>
                        <p class="detail-item"><strong>License Number:</strong> <span class="detail-value">${customer.license}</span></p>
                        <p class="detail-item"><strong>Expiry Date:</strong> <span class="detail-value">${customer.expiryDate}</span></p>
                    </div>
            </c:otherwise>
        </c:choose>
    </div>
</body>
</html>