<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
<link rel="stylesheet" href="CSS/Login.css">
<style>

 .form-container {
            margin-left: 900px;
            display: transparent;
            backdrop-filter: blur(15px);
            opacity: 0.45; 
            /* Set opacity as needed */
        }

        form {
            width: 300px;
            padding: 20px;
            background-color: #fff;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            display: transparent;
            backdrop-filter: blur(15px);
            opacity: 0.8; 
             display: transparent;
  justify-content: center;/* Set opacity as needed */
        }
        input[type="submit"] {
    background-color: #0059FF ;
    color: white;
    cursor: pointer;
}
        

h1 {
    text-align: center; /* Center the text */
}


.radio-container {
    display: flex;
    flex-direction: row; /* Align items horizontally */
}

.radio-item {
    margin-right: 10px; /* Adjust spacing between radio items */
}

.radio-item input[type="radio"] {
    display: none; /* Hide the default radio input */
}

.radio-item label {
    display: inline-block;
    width: 75px; /* Set the width of the square button */
    height: 20px; /* Set the height of the square button */
    background-color: #ddd; /* Set the background color of the unselected button */
    border: 1px solid #888; /* Add a border for style */
    border-radius: 4px; /* Optional: Add border-radius for rounded corners */
    text-align: center;
    line-height: 20px; /* Center the radio label vertically */
    cursor: pointer;
}

.radio-item input[type="radio"]:checked + label {
    background-color: #FF0000 ; /* Set the background color when selected */
    color: #fff; /* Set the text color when selected */
}



</style>
</head>
<body>
<img src="home/homeImages/csm_1-kachel_1d744448d7.jpg" alt="Background Image" style="width: 100%;
                                                                 height: 100%;
                                                                 object-fit: cover;
                                                                 position: fixed;
                                                                 top: 0;
                                                                 left: 0;
                                                                 z-index: -1;">
<div class ="form-container" ></div>
<form id="loginForm" method="POST">
 <h1>Login</h1>
    <label for="username">UserName:</label>
    <input type="text" id="username" name="uid" >

    <label for="password">Password:</label>
    <input type="password" id="password" name="psw" >

    <label>Select User Type:</label>
    <div class="radio-container">
    <div class="radio-item">
        <input type="radio" id="customer" name="userType" value="customer" checked>
        <label for="customer" class="radio-label">Customer</label>
    </div>
    <div class="radio-item">
        <input type="radio" id="driver" name="userType" value="driver">
        <label for="driver" class="radio-label">Driver</label>
    </div></div>

    <input type="submit" name="submit" value="Login">
    <p>Don't have an account?<a href="customerinsert.jsp">Register</a></p>
    <a href ="Manager/login.jsp">Administration Login</a>
</form>

<script>
    document.getElementById('loginForm').addEventListener('submit', function(event) {
        var userType = document.querySelector('input[name="userType"]:checked').value;
        if (userType === 'customer') {
            this.action = 'cuslog';
        } else if (userType === 'driver') {
            this.action = 'dlog';
        }
    });
</script>

</body>
</html>