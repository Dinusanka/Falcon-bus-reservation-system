<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@taglib prefix="a" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="../CSS/A Profile.css">
<style type="text/css">
/* Profile.css */

/* Profile.css */

body {
    font-family: Arial, sans-serif;
    background: #f8f9fa; /* Light gray background */
    margin: 0;
    display: flex;
    justify-content: center;
    align-items: center;
    min-height: 100vh;
}

.container {
    max-width: 800px;
    background: #fff;
    padding: 20px;
    border-radius: 10px;
    box-shadow: 0 0 10px rgba(0,0,0,0.1);
}

table {
    width: 100%;
    border-collapse: collapse;
    margin-bottom: 20px;
}

table, th, td {
    border: 1px solid #ccc;
}

th, td {
    padding: 10px;
    text-align: left;
}

th {
    background-color: #007bff; /* Blue header background */
    color: #fff;
}

tr:nth-child(even) {
    background-color: #f2f2f2; /* Light gray background for even rows */
}

input[type="button"], input[type="submit"] {
    background-color: #28a745; /* Green background */
    color: white;
    border: none;
    padding: 10px 20px;
    cursor: pointer;
    border-radius: 5px;
    font-size: 16px;
    margin-right: 10px;
}

input[type="button"]:hover, input[type="submit"]:hover {
    background-color: #218838; /* Darker green on hover */
}

a {
    text-decoration: none;
    color: #007bff; /* Blue link color */
    transition: color 0.3s;
}

a:hover {
    color: #0056b3; /* Slightly darker blue on hover */
}

btn{
	margin-top: 20px;
}

</style>
</head>
<body>
	<table>
	<a:forEach var="adm" items="${admDetails}">
	
	<a:set var="id" value="${adm.aid}"/>
	<a:set var="name" value="${adm.name}"/>
	<a:set var="contact" value="${adm.contact}"/>
	<a:set var="email" value="${adm.email}"/>
	<a:set var="username" value="${adm.userName}"/>
	<a:set var="password" value="${adm.password}"/>
	
	<tr>
		<td>ID</td>
		<td>${adm.aid}</td>
	</tr>
	<tr>
		<td>Admin Name</td>
		<td>${adm.name}</td>
	</tr>
	<tr>
		<td>Admin Contacts</td>
		<td>${adm.contact}</td>
	</tr>
	<tr>
		<td>Admin Email</td>
		<td>${adm.email}</td>
	</tr>
	<tr>
		<td>Admin Username</td>
		<td>${adm.userName}</td>
	</tr>
	<tr>
		<td>Admin Passward</td>
		<td>${adm.password}</td>
	</tr>
	
	</a:forEach>
	</table>
	
	<br>
	
	<div class="Btn">
		<a:url value="Admin/ProfileUpdate.jsp" var="profileUpdate">
			<a:param name="id" value="${id}"/>
			<a:param name="name" value="${name}"/>
			<a:param name="contact" value="${contact}"/>
			<a:param name="email" value="${email}"/>
			<a:param name="uname" value="${username}"/>
			<a:param name="pass" value="${password}"/>
		</a:url>
		
		<a href="${profileUpdate}">
		<input type="button" name="update" value="Edit Profile">
		</a>
		
		<br>
		
		<a:url value="Admin/AdminDelete.jsp" var="profileDelete">
			<a:param name="id" value="${id}"/>
			<a:param name="name" value="${name}"/>
			<a:param name="contact" value="${contact}"/>
			<a:param name="email" value="${email}"/>
			<a:param name="uname" value="${username}"/>
			<a:param name="pass" value="${password}"/>
		</a:url>
		
		<a href="${profileDelete}">
		<input type="button" name="delete" value="Delete Account">
		</a>
		
		<br>
		
		<a:url value="Admin/AdminInsert.jsp" var="createAdmin">
			
		</a:url>
		
		<a href="${createAdmin}">
		<input type="submit" name="submit" value="Create Admin">
		</a>
		
		
		<form action ="Route/AddRoute.jsp">
		
		<input type ="hidden" name ="id" value ="1">
		<input type ="submit" value ="Add Route">
		
		</form>
	</div>
	
</body>
</html>