<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Reset Password</title>
</head>
<body>
 <h1>Reset Password</h1>
    <form action="reset" method="post">
        <input type="hidden" name="token" value="${param.token}">
        
        <label for="newPassword">New Password:</label>
        <input type="password" id="newPassword" name="newPassword" required><br><br>
        
        <label for="confirmPassword">Confirm Password:</label>
        <input type="password" id="confirmPassword" name="confirmPassword" required><br><br>
        
        <button type="submit">Reset Password</button>
    </form>
</body>
</html>