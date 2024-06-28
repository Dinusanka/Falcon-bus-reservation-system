<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Bus Insert</title>
<style>
body {
    margin: 0;
    font-family: Arial, sans-serif;
    background-color: #ADD8E6;
}

input {
    margin-top: 10px;
    margin-bottom: 10px;
    padding: 5px;
    width: 100%;
    border-radius: 10px;
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

.busInsert-container {
    max-width: 400px;
    max-height: auto;
    margin: 0 auto;
    padding: 20px;
    background-color: #f5f5f5;
    border: 1px solid black;
    border-radius: 5px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    text-align: center; /* Center the content */
}

.busInsert-header {
    text-align: left;
    margin-bottom: 20px;
    color: #333;
}

.busInsert-form {
    display: flex;
    flex-direction: column;
}

.busInsert-input {
    margin: 10px auto; /* Center the form inputs */
    padding: 5px;
    border: 1px solid #ccc;
    border-radius: 5px;
    font-size: 16px;
    width: 100%;
}

.busInsert-btn {
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

.busInsert-btn:hover {
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
<div class="Top">
    <a href="#home"><img class="logo" src="homeImages/falogo.png"></a>
    <div class="ul">
        <ul type='none'>
            <li><a href="#home">Home</a></li>
            <li><a href="#news">News</a></li>
            <li><a href="#contact">Contact</a></li>
            <li><a href="#about">About</a></li>
        </ul>
    </div>
</div><br>
<hr><br>

<div class="busInsert-container">
    <div class="busInsert-header">
        <h1>Add Bus</h1>
        <h2>Bus Details</h2>
        <form class ="busInsert-form"action="../bus" method="post">
            
          
            Bus Number:<input type="text" id="busNumber" name="busNumber" required><br><br>

            Capacity:<input type="text" id="Capacity" name="Capacity" required><br><br>
            
            Manufacturer:<input type="text" id="Manufacturer" name="Manufacturer" required><br><br>

            
            Model:<input type="text" id="Model" name="Model" required><br><br>

           
            YearOfManufacture:<input type="text" id="YearOfManufacture" name="YearOfManufacture" required><br><br>

            <button class="busInsert-btn" type="submit">Submit</button><br>
        </form>
    </div>
</div><br><br>

<hr>

<footer>
    <div class="footer-content">
        <div class="link">
            <a href="#">Terms of Service</a><br>
            <a href="#">Contact Us</a>
        </div>
        <div class="footer-right">
            <div class="copy">
                <p>&copy; 2023 Bus Reservation System. All rights reserved.</p>
            </div>
            <div class="social-text">
                <p>social media</p>
            </div>
            <a href="#home"><img class="social-icons" src="homeImages/SMicons.png"></a>
        </div>
    </div>
</footer>
</body>
</html>
