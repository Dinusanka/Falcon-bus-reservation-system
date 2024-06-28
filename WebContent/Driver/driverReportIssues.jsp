<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Report Issues</title>
<style>
    body {
        margin: 0;
        font-family: Arial, sans-serif;
        background-color: #d1f1f0;
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

    .reportIssue-container {
        max-width: 400px;
        max-height: auto;
        margin: 0 auto;
        padding: 20px;
        background-color: #f5f5f5;
        border: 1px solid black;
        border-radius: 5px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }

    .reportIssue-header {
        text-align: center;
        margin-bottom: 20px;
        color: #333;
    }

    .report-issues-form {
        display: flex;
        flex-direction: column;
    }

    .reportIssue-input {
        margin: 10px 0;
        padding: 5px;
        border: 1px solid #ccc;
        border-radius: 5px;
        font-size: 16px;
        display: block;
        width: 100%;
    }

    .reportIssue-btn {
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

    .reportIssue-btn:hover {
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

<div class="reportIssue-container">
    <div class="reportIssue-header">
        <h2>Report Issues</h2>
    </div>
    <form class="report-issues-form" action="../issue" method="post">
        Issue Type <input class="reportIssue-input" type="text" id="issueType" name="type" required>
        Issue Description <textarea class="reportIssue-input" id="issueDescription" name="description" rows="4" cols="50" required></textarea>
        Photo <input class="reportIssue-input" type="file" id="Photo" name="Photo">
        Location <input class="reportIssue-input" type="text" id="location" name="location" required>
        Date <input class="reportIssue-input" type="date" id="date" name="date" required>
        <input type="hidden"name="id" value="<%=session.getAttribute("retrievedId") %>" />
        <button class="reportIssue-btn" type="submit">Submit</button>
    </form>
</div>
<hr>
 <footer><div class="footer-content">
                    <div class="link">
                    <a href="#">Terms of Service</a><br>
                   <a href="#">Contact Us</a></div>
       <div class="footer-right">
                
               
                <div class="copy">
                <p>&copy; 2023 Bus Reservation System. All rights reserved.</p>
            </div> </div><div>  
            <div class="social-text"><p >social media</p> </div>               
        		 <a href="#home"><img class="social-icons" src="homeImages/SMicons.png"></a>
    			</div>
           </div>
       
    </footer>



</body>
</html>