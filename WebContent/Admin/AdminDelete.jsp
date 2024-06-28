<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
body {
    font-family: Arial, sans-serif;
    background-color: #f5f5f5;
    text-align: center;
    margin: 0;
    padding: 20px;
}

h1 {
    color: #333;
}

form {
    max-width: 400px;
    margin: auto;
    background-color: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
}

input[type="text"] {
    width: 100%;
    padding: 10px;
    margin-bottom: 10px;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
}

input[type="submit"] {
    background-color: #4caf50;
    color: #fff;
    padding: 10px 20px;
    border: none;
    border-radius: 4px;
    cursor: pointer;
    font-size: 16px;
}

input[type="submit"]:hover {
    background-color: #45a049;
}


</style>
</head>
<body>

	<%
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String contact = request.getParameter("contact");
		String email = request.getParameter("email");
		String userName = request.getParameter("uname");
		String password = request.getParameter("pass");
	%>
	
	<h1>Admin Account Delete</h1>
	
	<form action="../adm-delete" method="post">
		Admin ID <input type="text" name="aid" value="<%= id %>" readonly><br>
		Name <input type="text" name="name" value="<%= name %>" readonly><br>
		Contact <input type="text" name="contact" value="<%= contact %>" readonly><br>
		E mail <input type="text" name="email" value="<%= email %>" readonly><br>
		User Name <input type="text" name="uname" value="<%= userName %>" readonly><br>
		
		<input type="submit" name="submit" value="Delete"><br>
	</form>
	
</body>
</html>