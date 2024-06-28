<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<%
		String rid = request.getParameter("rid");
		String raid = request.getParameter("raid");
		String origin = request.getParameter("origin");
		String destination = request.getParameter("destination");
		String price = request.getParameter("price");
		
	%>
	
	<form action="../Update-Route" method="post">
		Route ID <input type="text" name="rid" value="<%= rid %>" readonly><br>
		Route AdminID <input type="text" name="raid" value="<%= raid %>"><br>
		Origin <input type="text" name="origin" value="<%= origin %>"><br>
		Destination <input type="text" name="destination" value="<%= destination %>"><br>
		Price <input type="text" name="price" value="<%= price %>"><br>
		
		<input type="submit" name="submit" value="Update"><br>
	</form>
</body>
</html>