<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Driver Registration</title>
<style type="text/css">
        <!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registration</title>
<style >
    body {
        margin: 0;
        font-family: Arial, sans-serif;
        background-color: #ADD8E6;
    }

    input {
        margin-top: 40px;
        margin-bottom: 5px;
        margin-right: 20px;
        padding: auto;
        width: 170px;
        height: 35px;
        border-radius: 10px;
        float: right;
    }

    .ul {
        position: relative;
        align-items: left;
        margin-top: 40;
        float: left;
        top: 10px;
        width: 100%;
        background-color: #0a31f0;
    }

    li {
        float: left;
    }

    li a {
        display: block;
        color: white;
        text-align: center;
        padding: 14px 16px;
        text-decoration: none;
        margin-bottom: 13px;
    }

    li a:hover {
        background-color: #130341;
    }

    .copy {
        text-align: center;
        padding: 30px;
    }

    .social-icons {
        width: 240px;
        height: 45px;
        margin-left: 1200px;
        float: left;
        margin-top: -70px;
    }

    .social-text {
        width: 240px;
        height: 45px;
        margin-left: 1275px;
        float: left;
        margin-top: -110px;
    }

    .slideshow-container {
        width: 1700px;
        height: 900px;
        margin-left: 120px;
        border-radius: 10px;
    }
    .form-container{
    margin-left:700px;
    
    
    
    
    }

    .mySlides {
        width: 1500px;
        height: 900px;
    }

    .Top {
        width: auto;
        height: 150px;
        background-color: #52bde8;
    }

    img {
        width: 1500px;
        height: 900px;
    }

    .link {
        padding: 30px;
        float: left;
    }

    .logo {
        width: 90px;
        height: 50px;
    }

    .registration-container {
        max-width: 400px;
        max-height: auto;
        margin: 0 auto;
        padding: 20px;
        background-color: #f5f5f5;
        border: 1px solid black;
        border-radius: 5px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }

    .registration-header {
        text-align: center;
        margin-bottom: 20px;
        color: #333;
    }

    .registration-form {
        display: flex;
        flex-direction: column;
    }

    .registration-input {
        margin: 10px 0;
        padding: 5px;
        border: 1px solid #ccc;
        border-radius: 5px;
        font-size: 16px;
        display: block;
        width: 100%;
    }

    .registration-btn {
        background-color: #0a31f0;
        color: #ccc;
        padding: 10px;
        border: none;
        border-radius: 5px;
        font-size: 18px;
        cursor: pointer;
        transition: background-color 0.3s;
        display: inline-block;
        width: 100%;
    }

    .registration-btn:hover {
        background-color: #52bde8;
        color: black;
    }

    .footer-content {
        width: auto;
        height: 100px;
        background-color: #52bde8;
    }
</style>
</head>
<body>
<img src="../home/homeImages/driverr.jpg" alt="Background Image" style="width: 1920px;
                                                                 height: 1080px;
                                                                 object-fit: cover;
                                                                 position: fixed;
                                                                 top: 0;
                                                                 left: 0;
                                                                 z-index: -1;">
                                                                 
<div class ="form-container">
<div class="registration-container">
    <div class="registration-header">
        <h1>Driver Registration</h1>
    </div>

<h2>Personal Details</h2>


<form class="registration-form" action="../dinsert" method="post" onsubmit="return validateForm()">

    Name:<input class="registration-input" type="text" name="name" required><br>      
    Email:<input class="registration-input" type="text" name= "email" required><br>
    Contact Number:<input class="registration-input" type="text" name="phone" required><br>
    Bus Number:<input class="registration-input" type="text" name="busNumber" required><br>
    Licenses Number:<input class="registration-input" type="text" name="Licenses" required><br>
    NIC:<input class="registration-input" type="text" name="nic" required><br>
    <label for="photo">Photo:</label>
    <input class="registration-input" type="file" id="photo" name="photo" accept="image/*"><br><br><br>

    <h2>Login Details</h2>
    User Name:<input class="registration-input" type="text" name="uid" required><br>
    Password:<input class="registration-input" type="password" name="pswd" id="password" required>
    <span id="passwordError" class="error"></span><br>

    <button class="registration-btn" type="submit">Register</button> <br>
   
    <p class="login-link">Already have an account? <a href="../login.jsp">Login</a></p>
</form>
</div>
<script>
function validateForm() {
    var password = document.getElementById("password").value;
    var passwordError = document.getElementById("passwordError");

    var lowercasePattern = /[a-z]/;
    var uppercasePattern = /[A-Z]/;
    var specialCharacterPattern = /[!@#$%^&*()_+{}\[\]:;<>,.?~\\/-]/;

    if (password.length < 8) {
        passwordError.innerHTML = "Password must be at least 8 characters long.";
        return false;
    }

    if (!lowercasePattern.test(password)) {
        passwordError.innerHTML = "Password must contain at least one lowercase letter.";
        return false;
    }

    if (!uppercasePattern.test(password)) {
        passwordError.innerHTML = "Password must contain at least one uppercase letter.";
        return false;
    }

    if (!specialCharacterPattern.test(password)) {
        passwordError.innerHTML = "Password must contain at least one special character.";
        return false;
    }

    
    return true;
}

function cancelForm() {
  
    window.location.href = "cancelPage.jsp";
}
</script>

</div>


</body>
</html>
        