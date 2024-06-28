<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="m" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View one Feedback</title>

<style>
        body {
            margin: 0;
            font-family: Arial, sans-serif;
            background-color: #d1f1f0;
        }

        input{
            margin-top: 40px;
            margin-bottom: 5px;
            margin-right: 20px;
            padding: auto;
            width: 170px;
            height: 35px;
            border-radius: 10px;
            float:right

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
	    margin-bottom:13px
	    }

    /* Change the link color to #111 (black) on hover */
	    li a:hover {
	    background-color: #130341;
	    }
	    
		.copy {
	    text-align: center;
	    padding:30px;
	 	}
	 	
     	.social-icons {
	    width: 240px;
	    height: 45px;
	    margin-left: 1200px;
	    float:left;
	    margin-top:-70px;	   
		}
			
		.social-text {
	    width: 240px;
	    height: 45px;
	    margin-left: 1275px;
	    float:left;
	    margin-top:-110px;	   
		}
        
        .slideshow-container {
            
         width: 1700px;
         height:900px;
         margin-left: 120px;
         border-radius: 10px;            
        }
        
        .mySlides {   
         width: 1500px;
         height:900px;
         }
         
        .Top{
	     width: auto;
	     height: 150px;
         background-color: #52bde8;
        }

        img {
           
        width: 1500px;
        height:900px;            
        }
        
		.link{
		padding:30px;
		float:left
		 }
       
        .logo {  
        width: 90px;
        height:50px
        }
		

		.footer-content{
		 width: auto;
		 height: 100px;
		 background-color: #52bde8;
		}
		     
		/*adding css to viewfeedback*/
		.viewfeedback-container{
			width: 300px;
			margin: 0 auto;
			padding: 20px;
			background-color: #f5f5f5;
			border: 1px solid black;
			border-radius: 5px;
			box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);	
			}


		.viewfeedback-header{
			text-align: center;
			margin-bottom: 20px;
			color: #333;
		}
		
		.viewfeedback-form{
			display: flex;
			flex-direction: column;
		}
		
		
		.viewfeedback-input{
			margin: 10px 0;
			padding: 5px 65px;
			border: 1px solid #ccc;
			border-radius: 5px;
			font-size: 16px;
		}
		
		.viewfeedback-btn{
			background-color: #0a31f0;
			color: #ccc;
			padding: 10px;
			border: none;
			border-radius: 5px;
			font-size: 18px;
			cursor: pointer;
			transition: background-color 0.3s;
		}
		
		.viewfeedback-btn:hover{
			background-color: #52bde8;
			color: black;
		}
		/*closing css to viewfeedback*/
       
    </style>

</head>
<body>	
<div class="Top">
    <a href="#home"><img class="logo" src="homeimages/falogo.png"></a>
   
<div class="ul">
    <ul type = 'none'>
    <li><a href="#home">Home</a></li>
        <li><a href="#news">News</a></li>
        <li><a href="#contact">Contact</a></li>
   		 <li><a href="#about">About</a></li>
       
      </ul></div></div><br>
       
      <hr><br>

	<%
	    
		String sid = request.getParameter("sid");
		String sdid = request.getParameter("sdid");
		String type = request.getParameter("type");
		String description = request.getParameter("description");
		String location = request.getParameter("location");
		String date = request.getParameter("date");
		String mid = request.getParameter("mid");
		String reply = request.getParameter("reply");
		
	%>
	
	<div class = "viewfeedback-container">
	<div class = "viewfeedback-header">
	<h2>View Feedback</h2>
	</div>
	<form class="viewfeedback-form" action = "submitFeedback" method="post">
	SID<input class="viewfeedback-input" type="text" name="sid" value="<%= sid %>" readonly><br>
	SDID<input class="viewfeedback-input" type="text" name="sdid" value="<%= sdid %>"readonly><br>
	Type<input class="viewfeedback-input" type="text" name="type" value="<%= type %>"readonly><br>
	Description<input class="viewfeedback-input" type="text" name="description" value="<%= description%>"readonly><br>
	Location<input class="viewfeedback-input" type="text" name="location" value="<%= location%>"readonly><br>
	Date<input class="viewfeedback-input" type="text" name="date" value="<%= date%>"readonly><br>
	MID<input class="viewfeedback-input" type="text" name="mid" value="<%= mid%>"readonly><br>
	Reply<input class="viewfeedback-input" type="text" name="reply" value="<%= reply%>"><br>
	
	
	<button class="viewfeedback-btn" type="submit" name="submit">Send</button>
	
	
	
	</form>
	</div>
	<!-- footer starts -->	
	<br><br>

<hr>
<footer>
	<div class="footer-content">    
 		<div class="link">
			<a href="#">Terms of Service</a><br>
			<a href="#">Contact Us</a></div>
		<div class="footer-right">
                
        <div class="copy">
        	<p>&copy; 2023 Bus Reservation System. All rights reserved.</p>
        </div> </div><div>  
            <div class="social-text"><p >social media</p> </div>               
        		 <a href="#home"><img class="social-icons" src="homeimages/SMicons.png"></a>
    			</div>
    </div>
       
</footer>
<!-- footer ends -->
</body>
</html>