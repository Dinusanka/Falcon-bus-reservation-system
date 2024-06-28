<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<style>


/* Style for the form container */
body {
    font-family: Arial, sans-serif;
    background-color: #f8f9fa; /* Light gray background */
    display: flex;
    justify-content: center;
    align-items: center;
    min-height: 100vh;
}

/* Style for the form */
table {
    border-collapse: collapse;
    width: 100%;
    max-width: 400px; /* Set a maximum width for the form */
    background-color: #fff;
    padding: 80px;
    border-radius: 10px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    margin: 0 auto; /* Center the form */
}

table input[type="text"],
table input[type="password"] {
    width: 100%;
    padding: 12px;
    margin-bottom: 20px;
    border: 2px solid #007bff; /* Blue border */
    border-radius: 5px;
    box-sizing: border-box;
}

table input[type="text"]:focus,
table input[type="password"]:focus {
    border-color: #0056b3; /* Darker blue on focus */
}

table input[type="submit"] {
    background-color: #007bff; /* Blue background */
    color: #fff;
    border: none;
    padding: 12px 20px;
    cursor: pointer;
    border-radius: 5px;
    font-size: 16px;
    transition: background-color 0.3s;
}

table input[type="submit"]:hover {
    background-color: #0056b3; /* Darker blue on hover */
}

/* Style for the form elements */
label {
    font-weight: bold;
    color: #007bff; /* Blue label color */
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
	
	
	    <form action="../adm-update" method="post">
        <table>
            <tr>
                <td>Admin ID</td>
                <td><input type="text" name="aid" value="<%= id %>" readonly></td>
            </tr>
            <tr>
                <td>Name</td>
                <td><input type="text" name="name" value="<%= name %>"></td>
            </tr>
            <tr>
                <td>Contact</td>
                <td><input type="text" name="contact" value="<%= contact %>"></td>
            </tr>
            <tr>
                <td>Email</td>
                <td><input type="text" name="email" value="<%= email %>"></td>
            </tr>
            <tr>
                <td>User Name</td>
                <td><input type="text" name="uname" value="<%= userName %>"></td>
            </tr>
            <tr>
                <td>Password</td>
                <td><input type="password" name="pass" value="<%= password %>"></td>
            </tr>
        </table>

        <input type="submit" name="submit" value="Update"><br>
    	</form>
	
</body>
</html>