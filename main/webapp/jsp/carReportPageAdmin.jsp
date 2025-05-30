<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Cars</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/styles.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/table.css">
</head>
<body>
  <div align="center">
        <h1>Car Report</h1>
        <br/>
        <div class="table-container">
        <table class="table" border="1">
            <tr class="table-header">
                <th>Car Number</th>
                <th>Car Name</th>
                <th>Car Color</th>
                <th>Manufacturer</th>
                <th>MFG Year</th>
                <th>Rent/Hour</th>
                <th>Varient Details</th>
                <th>Available</th>
                <th>Actions</th>
            </tr>
<c:if test="${empty carList}">
    <p>No cars available</p>
</c:if>
            <c:forEach items="${carList}" var="car">
                <tr class="table-row">
                    <td>${car.carNumber}</td>
                    <td>${car.carName}</td>
                    <td>${car.carColor}</td>
                    <td>${car.manufacturer}</td>
                    <td>${car.yearOfMfg}</td>
                    <td>${car.rentRate}/day</td>
                    <td>
                        <c:set var="carVariant" value="${variantMap[car.variantId]}" />
                        <c:if test="${carVariant != null}">
                            <table class="inner-table">
                                <tr>
                                    <th>Variant Id</th>
                                    <td>${carVariant.variantId}</td>
                                </tr>
                                <tr>
                                    <th>Variant Name</th>
                                    <td>${carVariant.variantName}</td>
                                </tr>
                                <tr>
                                    <th>No. of Seats</th>
                                    <td>${carVariant.numberOfSeat}</td>
                                </tr>
                                <tr>
                                    <th>Fuel</th>
                                    <td>${carVariant.fuel}</td>
                                </tr>
                            </table>
                        </c:if>
                    </td>
                    <td>
                        <c:choose>
                            <c:when test="${car.available == true}">Available</c:when>
                            <c:otherwise>Not Available</c:otherwise>
                        </c:choose>
                    </td>
                    <td class="action-cell">
                        <a href="carUpdate/${car.carNumber}" class="action-btn update-btn">Update</a>
                        <a href="/carDelete/${car.carNumber}" class="action-btn delete-btn">Delete</a>
                    </td>
                </tr>
            </c:forEach>
        </table>
      </div>
      <br />
      <h3><a class="return-link" href="/index">Return</a></h3>
  </div>
</body>
</html>
