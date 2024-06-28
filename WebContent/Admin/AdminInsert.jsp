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
	<form action="../adm-insert" method="post">
		Name<input type="text" name="name"><br>
		Contact<input type="text" name="contact"><br>
		Email<input type="text" name="email"><br>
		User Name<input type="text" name="uid"><br>
		Password<input type="password" id="password" name="psw"><br>
		
		
		<input type="submit" name="submit" value="Create Admin">
	</form>
	
	<script>
    function validatePassword() {
      var password = document.getElementById('password').value;

      // Define regex patterns for the required elements
      var hasUpperCase = /[A-Z]/.test(password);
      var hasLowerCase = /[a-z]/.test(password);
      var hasDigit = /\d/.test(password);
      var hasSymbol = /[!@#$%^&*()_+{}\[\]:;<>,.?~\\/-]/.test(password);

      // Check if all conditions are met
      if (hasUpperCase && hasLowerCase && hasDigit && hasSymbol) {
        return true;
      } else {
        alert("Password must contain at least one uppercase letter, one lowercase letter, one digit, and one special character.");
        return false;
      }
    }
    function cancelForm() {
    	  
        window.location.href = "cancelPage.jsp";
    }
  </script>

</body>
</html>