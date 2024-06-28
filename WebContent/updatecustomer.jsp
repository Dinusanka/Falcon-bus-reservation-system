<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="CSS/insert.css">
</head>
<body>

<% 
	String id = request.getParameter("id");
	String name = request.getParameter("name");
	String email = request.getParameter("email");
	String phone = request.getParameter("phone");
	String username= request.getParameter("uname");
	String password = request.getParameter("pass");


%>




<form action="Updated" method="POST">

	<label for="cusid"></label>
    <input type="hidden" id="name" name="cusid" value = "<%=id %>" readonly><br><br>

	<label for="name">Name:</label>
    <input type="text" id="name" name="name" value = "<%=name %>"><br><br>

 	<label for="email">Email:</label>
    <input type="text" id="email" name="email" value = "<%=email %>"><br><br>
    
    <label for="phone">Contact No:</label>
    <input type="text" id="phone" name="phone" value = "<%=phone %>"><br><br>

    <label for="username">userName:</label>
    <input type="text" id="username" name="uname" value = "<%=username  %>"><br><br>

    <label for="password">Password:</label>
    <input type="text" id="pass" name="pass" value = "<%=password %>"><br><br>

    <input type="submit" name="submit" value="Update">
</form>
</body>
</html>