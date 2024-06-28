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
		String rid = request.getParameter("rid");
		String raid = request.getParameter("raid");
		String origin = request.getParameter("origin");
		String destination = request.getParameter("destination");
		String price = request.getParameter("price");
		
	%>
	
	<h1>Delete Route</h1>
	
	<form action="../Delete-Route" method="post">
		Route ID <input type="text" name="rid" value="<%= rid %>" readonly><br>
		Route AdminID <input type="text" name="raid" value="<%= raid %>" readonly><br>
		Origin <input type="text" name="origin" value="<%= origin %>" readonly><br>
		Destination <input type="text" name="destination" value="<%= destination %>" readonly><br>
		Price <input type="text" name="price" value="<%= price %>" readonly><br>
		
		<input type="submit" name="submit" value="Delete"><br>
	</form>

</body>
</html>