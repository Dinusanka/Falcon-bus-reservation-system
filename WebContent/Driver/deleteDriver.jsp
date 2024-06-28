<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Delete Driver Account</title>
<style type="text/css">
        body {
            font-family: Arial, sans-serif;
            background-color: teal; /* Set the background color to teal */
            color: black; /* Set text color to white for better visibility */
            text-align: center;
            margin: 0;
            padding: 0;
        }

        h1 {
            padding: 20px;
        }

        table {
            border-collapse: collapse;
            margin: 20px auto;
            background-color: white; /* Set the table background color to white */
            width: 80%; /* Adjust the table width */
        }

        table, th, td {
            border: 1px solid black;
            padding: 10px;
        }

        th {
            background-color: teal; /* Set header background color to teal */
            color: white; /* Set header text color to white */
        }

        input[type="text"] {
            width: 100%;
            padding: 5px;
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 3px;
        }

        input[type="submit"] {
            background-color: green; /* Set submit button background color to teal */
            color: white; /* Set submit button text color to white */
            padding: 10px 20px;
            border: none;
            border-radius: 3px;
            cursor: pointer;
        }
    </style>
</head>
<body>

 <%
    String id =request.getParameter("id");
    String name =request.getParameter("name");
    String email =request.getParameter("email");
    String contactNumber =request.getParameter("contactNumber");
    String busNumber =request.getParameter("busNumber");
    String licensesNumber =request.getParameter("licensesNumber");
    String nic =request.getParameter("nic");
    String username =request.getParameter("userName");
    String password =request.getParameter("password");
    %>
    
    <h1>Driver Account Delete</h1>
    
 <form action="../ddelete" method="post">

<table>
<tr>
<td>Driver ID</td>
<td><input type= "text" name="drid" value="<%= id%>"readonly></td>
</tr>
<tr>
<td>Driver Name</td>
<td><input type= "text" name="name" value="<%=name%>"readonly></td>
</tr>
<tr>
<td>Driver Email</td>
<td><input type= "text" name="email" value="<%=email%>"readonly></td>
</tr>
<tr>
<td>ContactNumber</td>
<td><input type= "text" name="phone" value="<%=contactNumber%>"readonly></td>
</tr>
<tr>

<td><input type= "hidden" name="phone" value="<%=busNumber%>"readonly></td>
</tr>
<tr>
<td>LicensesNumber</td>
<td><input type= "text" name="licensesNumber" value="<%=licensesNumber%>"readonly></td>
</tr>
<tr>
<td>Driver NIC</td>
<td><input type= "text" name="nic" value="<%=nic%>"readonly></td>
</tr>
<tr>
<td>Driver userName</td>
<td><input type= "text" name="uid" value="<%=username%>"readonly></td>
</tr>

</table>


<br>
<input type="submit" name="submit" value="Delete My Account"> <br>
</form>


</body>
</html>