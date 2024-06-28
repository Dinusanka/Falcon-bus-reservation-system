<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@taglib prefix="a" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
    table {
            border-collapse: collapse;
            width: 100%;
        }

        th, td {
            border: 1px solid #ddd;
            padding: 8px;
            text-align: left;
        }

        th {
            background-color: #f2f2f2;
        }
</style>
</head>
<body>
<table>

	<tr>
		<th>Route ID</th>
		<th>Route AdminID</th>
		<th>Origin</th>
		<th>Destination</th>
		<th>Price</th>
		<th>Action D</th>
		<th>Action U</th>
	
	</tr>
	
	<a:forEach var="rte" items="${rteDetails}">
	
	<a:set var="rid" value="${rte.rid}"/>
	<a:set var="raid" value="${rte.raid}"/>
	<a:set var="origin" value="${rte.origin}"/>
	<a:set var="destination" value="${rte.destination}"/>
	<a:set var="price" value="${rte.price}"/>
	
	<tr>
		<td>${rte.rid}</td>
		<td>${rte.raid}</td>
		<td>${rte.origin}</td>
		<td>${rte.destination}</td>
		<td>${rte.price}</td>
		<td>
		
			<a:url value="Route/DeleteRoute.jsp" var="deleteRoute">
			<a:param name="rid" value="${rid}"/>
			<a:param name="raid" value="${raid}"/>
			<a:param name="origin" value="${origin}"/>
			<a:param name="destination" value="${destination}"/>
			<a:param name="price" value="${price}"/>
			</a:url>
			
			<a href="${deleteRoute}">
			<input type="button" name="delete" value="Delete">
			</a>
	
		</td>
		
		<td>
		
			<a:url value="Route/UpdateRoute.jsp" var="UpdateRoute">
			<a:param name="rid" value="${rid}"/>
			<a:param name="raid" value="${raid}"/>
			<a:param name="origin" value="${origin}"/>
			<a:param name="destination" value="${destination}"/>
			<a:param name="price" value="${price}"/>
			</a:url>
	
			<a href="${UpdateRoute}">
			<input type="button" name="update" value="Update">
			</a>
	
		</td>
		
	</tr>


	
	</a:forEach>
	</table>
</body>
</html>