<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Customer Registration</title>
<link rel="stylesheet" href="CSS/insert.css">
<style type="text/css">
input[type="submit"] {
    background-color:  #0059FF;
    color: white;
    cursor: pointer;
}
form{width:400px;
hight:auto;
}
input[type="submit"]:hover {
    background-color: #0059FF;
}</style>
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
</head>
<body>
<img src="home/homeImages/content-mbbo-greater-exchange-of-air-01.jpg" alt="Background Image" style="width: 1920px;
                                                                 height: 1080px;
                                                                 object-fit: cover;
                                                                 position: fixed;
                                                                 top: 0;
                                                                 left: 0;
                                                                 z-index: -1;">
                                                                 
<form action="insert" method="POST">
<h3>Register As Customer</h3>
	<label for="name">Name:</label>
    <input type="text" id="name" name="name" ><br><br>

 	<label for="email">Email:</label>
    <input type="text" id="email" name="email" ><br><br>
    
    <label for="phone">Contact No:</label>
    <input type="text" id="phone" name="phone" ><br><br>

    <label for="username">userName:</label>
    <input type="text" id="username" name="uid" ><br><br>

    <label for="password">Password:</label>
    <input type="password" id="password" name="psw" ><br><br>

    <input type="submit" name="submit" value="submit">
    <button class="registration-btn" type="button" onclick="cancelForm()">Cancel</button>
     <p>Already  have an account?   <a href="login.jsp">Login</a></p>
      <p>   <a href="Driver/driverRegistrationInsert.jsp">Register As Driver</a></p>
</form>

</body>
</html>