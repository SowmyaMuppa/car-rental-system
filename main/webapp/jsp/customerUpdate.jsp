<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Customer Entry Page</title>
<style>
  /* Body Styling */
  body {
    background-color: #000; /* Black background */
    color: #ffd700; /* Golden text color */
    font-family: Arial, sans-serif;
    margin: 0;
    padding: 0;
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
  }

  /* Centered Container */
  div[align="center"] {
    width: 600px;
    margin: auto;
    padding: 20px;
    background-color: #111; /* Slightly lighter black for contrast */
    border-radius: 10px;
    text-align: center;
  }

  /* Header Styles */
  h1 {
    font-size: 2em;
    color: #ffd700; /* Golden color */
    text-transform: uppercase;
    text-decoration: underline;
    margin-bottom: 20px;
  }

  h2 {
    font-size: 1em;
    color: #ffd700;
    margin-bottom: 15px;
  }

  /* Form Styles */
  form {
    display: flex;
    flex-direction: column;
    align-items: center;
  }

  /* Input Field Styles */
  form input[type="text"],
  form input[type="number"],
  form input[type="date"] {
    width: 90%;
    padding: 12px;
    margin: 10px 0;
    border: 1px solid #ffd700;
    border-radius: 5px;
    background-color: #000;
    color: #ffd700;
    font-size: 1em;
    text-align: center;
  }

  form input[disabled] {
    background-color: #333; /* Darker background for disabled inputs */
    color: #888; /* Lighter gray for disabled text */
  }

  /* Button Styles */
  form button {
    width: 45%;
    padding: 10px;
    margin: 10px;
    border: 1px solid #ffd700;
    border-radius: 5px;
    background-color: #111;
    color: #ffd700;
    font-size: 1em;
    font-weight: bold;
    cursor: pointer;
    transition: background-color 0.3s ease, color 0.3s ease;
  }

  form button:hover {
    background-color: #ffd700; /* Golden background on hover */
    color: #000; /* Black text on hover */
  }

  /* Label Styling */
  label {
    font-size: 1em;
    color: #ffd700;
    text-align: left;
    margin-bottom: 5px;
  }
</style>
</head>

<body>
  <div align="center">
    <h1>Customer Entry Page</h1>
    <h2>
      <form:form action="/customerUpdate" method="post" modelAttribute="customer">
        <form:hidden path="username" />
        <form:hidden path="email" />
        User Name: <form:input path="username" disabled="true" />
        <br /><br />
        Email: <form:input path="email" disabled="true" />
        <br /><br />
        Enter First Name: <form:input path="firstName" />
        <br /><br />
        Enter Last Name: <form:input path="lastName" />
        <br /><br />
        Enter Address: <form:input path="address" />
        <br /><br />
        Enter Mobile Number: <form:input path="mobile" />
        <br /><br />
        Enter License Number: <form:input path="license" />
        <br /><br />
        Status: <form:input path="status" disabled="true" />
        <br /><br />
        Enter License Expiry Date: <form:input type="date" placeholder="dd-mm-yyyy" path="experiryDate" />
        <br /><br />
        <button type="submit">Submit</button>
        <button type="reset">Reset</button>
      </form:form>
    </h2>
  </div>
</body>
</html>