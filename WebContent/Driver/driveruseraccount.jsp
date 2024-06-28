<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@taglib prefix= "c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Driver Account</title>
<style type="text/css">
    body {
        font-family: Arial, sans-serif;
        background-color:#BCF3F0; /* Set the background color to teal */
        color: white; /* Set text color to white for better visibility */
        text-align: center;
        margin: 0;
        padding: 0;
    }
    input[type="submit"] {
  background-color: #004BF7;
 width:450px;
  height:70px;
  font-size:20px;
  color:white;
}
   input[type="submit"]:hover {
  background-color: #061586 ;
  width:450px;
  height:70px;
}
 input[type="button"] {
  background-color: #004BF7;
  width:450px;
   height:70px;
   font-size:20px;
    color:white;
}
   input[type="button"]:hover {
  background-color: #061586 ;
  width:450px;
  height:70px;
}

    table {
        width: 80%;
        margin: 20px auto;
        border-collapse: collapse;
    }

    th, td {
        border: 1px solid white; /* Set border color for table cells */
        padding: 10px;
    }

    th {
        background-color: white; /* Dark background color for table header */
        font-weight: bold;
    }

    tr:nth-child(even) {
        background-color: black; /* Dark background color for even rows */
    }

    tr:nth-child(odd) {
        background-color: black; /* Darker background color for odd rows */
    }
    a{
     background-color: #004BF7;
  width:300px;
  hight:60px;
    }
    .button-container {
        margin: 20px auto;
        text-align: center;
    }

    .button-container a {
        text-decoration: none;
    }

    .button {
        display: inline-block;
        padding: 10px 20px;
        background-color: green; /* Green background color for buttons */
        color: white;
        border: none;
        border-radius: 5px;
        margin-right: 10px;
        cursor: pointer;
    }
    
    .d-image{
		width: 200px;
		height: 200px;
		float: left;
		margin-right: 400px;
		margin-left: 650px;
		border-radius: 50%;
		
		}
</style>
</head>
<body>

 <img class="d-image" src="https://img.freepik.com/premium-vector/man-character_665280-46970.jpg?w=740" alt="Profile Image">

<table>
   <c:forEach var="dr" items="${drDetails}">
   
   <c:set var="id" value="${dr.id }"/>
   <c:set var="name" value="${dr.name }"/>
   <c:set var="email" value="${dr.email }"/>
   <c:set var="contactNumber" value="${dr.contactNumber }"/>
    <c:set var="busNumber" value="${dr.busNumber }"/>
   <c:set var="LicensesNumber" value="${dr.licensesNumber }"/>
   <c:set var="nic" value="${dr.nic}"/>
   <c:set var="userName" value="${dr.username }"/>
   <c:set var="password" value="${dr.password }"/>
   
   <p><%=session.getAttribute("retrievedName") %></p>
   
   <tr>
     <td> Driver ID:</td>
     <td>${dr.id}</td>
   </tr>
   <tr>
      <td> Driver Name:</td>
      <td> ${dr.name}</td>
   </tr>
   <tr>
     <td> Driver Email:</td>
     <td>${dr.email}</td>
   </tr>
   <tr>
     <td> Driver Contact Number:</td>
     <td>${dr.contactNumber}</td>
   </tr>
   <tr>
     <td> Driver bus Number:</td>
     <td>${dr.busNumber}</td>
   </tr>
   <tr>
     <td> Driver Licenses Number:</td>
     <td>${dr.licensesNumber}</td>
   </tr>
   <tr>
     <td> Driver NIC:</td>
     <td>${dr.nic}</td>
   </tr>
   <tr>
     <td> Driver UserName:</td>
     <td>${dr.username}</td>
   </tr>
   <tr>
     <td> Driver Password:</td>
     <td>${dr.password}</td>
   </tr>
   
   
   </c:forEach>
   </table>
   
   <c:url value="Driver/updateDriver.jsp" var="driverUpdate">
     <c:param name="id" value="${id }"/>
      <c:param name="name" value="${name}"/>
       <c:param name="email" value="${email }"/>
        <c:param name="contactNumber" value="${ contactNumber}"/>
        <c:param name="busNumber" value="${ busNumber}"/>
        <c:param name="licensesNumber" value="${LicensesNumber}"/>
        <c:param name="nic" value="${nic}"/>
        <c:param name="userName" value="${userName}"/>
        <c:param name="password" value="${password }"/>
   </c:url>
   
   <a href="${driverUpdate}">
   <input type="button" name="Update" value="Update"> <br>
   </a>
   
   <br>
   <c:url value="Driver/deleteDriver.jsp" var="driverDelete">
     <c:param name="id" value="${id }"/>
      <c:param name="name" value="${name}"/>
       <c:param name="email" value="${email }"/>
        <c:param name="contactNumber" value="${ contactNumber}"/>
        <c:param name="busNumber" value="${ busNumber}"/>
        <c:param name="licensesNumber" value="${LicensesNumber}"/>
        <c:param name="nic" value="${nic}"/>
        <c:param name="userName" value="${userName}"/>
        <c:param name="password" value="${password }"/>
   
   </c:url>
   <a href="${driverDelete}">
   <input type="button" name="Delete" value="Delete My Account">
    </a>
   <form action="Driver/busInsert.jsp" method="post"><br>
   <input type="submit" name="submit" value="Add Bus">
   </form>
   
   <form action="Driver/driverReportIssues.jsp" method="post"> <br>
   <input type="submit" name="submit" value="Report Issues">
   </form>
   
  
</body>
</html>