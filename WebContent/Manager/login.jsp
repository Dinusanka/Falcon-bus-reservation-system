<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>login</title>

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

		/*adding css to login*/
		.login-container{
			width: 300px;
			margin: 0 auto;
			padding: 20px;
			background-color: #f5f5f5;
			border: 1px solid black;
			border-radius: 5px;
			box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
			
		}
		
		
		.login-header{
			text-align: center;
			margin-bottom: 20px;
			color: #333;
		}
		
		.login-form{
			display: flex;
			flex-direction: column;
		}
		
		
		.login-input{
			margin: 10px 0;
			padding: 5px 65px;
			border: 1px solid #ccc;
			border-radius: 5px;
			font-size: 16px;
		}
		
		.login-btn{
			background-color: #0a31f0;
			color: #ccc;
			padding: 10px;
			border: none;
			border-radius: 5px;
			font-size: 18px;
			cursor: pointer;
			transition: background-color 0.3s;
		}
		
		.login-btn:hover{
			background-color: #52bde8;
			color: black;
		}
		/*closing css to login*/


       
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
      
      
      <!-- header end -->

<!-- need to add css -->
<div class = "login-container">
<div class = "login-header">


<h2>Manager Login</h2>
</div>
<form class="login-form" action = "../mlog" method = "post">

	
	User name <input class="login-input" type="text" name="uid"> <br>
	Password <input class ="login-input" type="password" name="pass"> <br>
	
	<button class ="login-btn" type="submit" name="submit" value="Login">Login</button><br>
	<div ><a href = ../Admin/Login.jsp>Admin Login</a></div>
	</form>
</div>
	
	
	
	
<!-- footer starts -->	
	<br><br>

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
        		 <a href="#home"><img class="social-icons" src="homeimages/SMicons.png"></a>
    			</div>
           </div>
       
    </footer>
<!-- footer ends -->
	
</body>
</html>