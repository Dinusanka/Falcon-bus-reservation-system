<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

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

<form action="Deleted" method="POST">

	<label for="cusid">CusID:</label>
    <input type="text" id="name" name="cusid" value = "<%=id %>" readonly><br><br>

	<label for="name">Name:</label>
    <input type="text" id="name" name="name" value = "<%=name %>" readonly><br><br>

 	<label for="email">Email:</label>
    <input type="text" id="email" name="email" value = "<%=email %>" readonly><br><br>
    
    <label for="phone">Contact No:</label>
    <input type="text" id="phone" name="phone" value = "<%=phone %>" readonly><br><br>

    <label for="username">userName:</label>
    <input type="text" id="username" name="uname" value = "<%=username  %>" readonly><br><br>



    <input type="submit" name="submit" value="DeleteAccount">
</form>
</body>
</html>