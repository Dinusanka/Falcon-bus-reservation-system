<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>About Us</title>
<style type="text/css">
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
    padding:30px
    

  }
     	.social-icons {
	    width: 240px;
	    height: 45px;
	    margin-left: 1200px;
	    float:left;
	    margin-top:-70px

	   
			}
			
			.social-text {
	    width: 240px;
	    height: 45px;
	    margin-left: 1275px;
	    float:left;
	    margin-top:-110px

	   
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
  /* About Us */
.abimg img {
    width: 100%;
    height: 500px;
}

.abimg h2 {
    text-align: center;
    font-size: 50px;
    font-family: fantasy;
    color: teal; /* Change text color to teal */
}

.abimg p {
    text-align: center;
    margin: -25px 150px 75px 150px;
    font-size: 22px;
    font-weight: 500;
    color: teal; /* Change text color to teal */
}

@media (max-width: 700px) {
    .abimg p {
        margin: 30px;
        font-size: 18px;
        text-align: justify;
    }
}

.abimg p span {
    font-size: 25px;
    color: teal; /* Change text color to teal */
    font-weight: bold;
}

/* End Container */
.endcontainer {
    display: flex;
    background-color: white; /* Keep the background color white */
}

.leftsection {
    flex-basis: 33.33%;
}

.leftsection img {
    max-width: 100%;
    height: auto;
}

.middlesection {
    flex-basis: 33.33%;
    background-color: white; /* Keep the background color white */
}

.rightsection {
    flex-basis: 33.33%;
    background-color: white; /* Keep the background color white */
}

/* Mission and Vision Sections */
.Mcontainer {
    margin: 200px 50px 100px 50px;
    color: teal; /* Change text color to teal */
}

.Rcontainer {
    margin: 200px 50px 100px 50px;
    color: teal; /* Change text color to teal */
}

.Mcontainer h3 {
    font-size: 25px;
    color: teal; /* Change heading color to teal */
}

.Mcontainer p {
    font-size: 20px;
    font-family: 'Roboto', 'Lato', 'Open Sans', sans-serif;
    color: teal; /* Change text color to teal */
}

.Rcontainer h3 {
    font-size: 25px;
    color: teal; /* Change heading color to teal */
}

.Rcontainer p {
    font-size: 20px;
    font-family: 'Roboto', 'Lato', 'Open Sans', sans-serif;
    color: teal; /* Change text color to teal */
}

/* Logo */
.logo img {
    margin: 5px;
    position: absolute;
    width: 80px;
    height: 80px;
}
    
</style>
</head>
<body>
  <div class="Top">
    <a href="#home"><img class="logo" src="homeImages/falogo.png"></a>
   
<div class="ul">
    <ul type = 'none'>
    <li><a href="#home">Home</a></li>
        <li><a href="#news">News</a></li>
        <li><a href="#contact">Contact</a></li>
   		 <li><a href="#about">About</a></li>
       
      </ul></div></div><br>
      <hr><br>

    <div class="aboutus"> 
        <div class="abcontainer">
            <div class="abimg">
               <img src="">
               <h2 >ABOUT US</h2>
               <p >Welcome to<span>Falcon Bus</span>, "Welcome to Falcon Bus Service, your trusted partner in bus travel and reservations. At Falcon bus, we are dedicated to simplifying your travel experience and ensuring that your journey is as comfortable and convenient as possible. With years of expertise in the transportation industry, we have established ourselves as a leading online bus reservation platform.
               Our mission is to connect travelers with their destinations by offering a user-friendly, secure, and comprehensive bus booking service. We understand the importance of safe and punctual travel, which is why we partner with reputable bus operators to provide you with a wide range of routes and schedules.
               Whether you're a frequent traveler, a tourist exploring new destinations, or a manager coordinating group travel. We take pride in our commitment to customer satisfaction, reliability, and transparency. Your journey begins with us, and we're here to make it memorable.
               Thank you for choosing Falcon bus for your bus reservation needs. We look forward to serving you and ensuring your travel experience is smooth and enjoyable."</p>
            </div>
        </div>
      </div>

      <div class="endcontainer">
        <div class="leftsection">
            <img src="" alt="left image">
        </div >
        <div class="middlesection">
            <div class="Mcontainer">
                <h3>OUR VISION</h3>
                <p>"To be the foremost online bus reservation platform, setting new standards in transportation accessibility, convenience, and customer satisfaction.
                 We envision a future where bus travel connects people to their destinations, fostering memorable experiences and fostering exploration."
                </p>
            </div>
        </div>
        <div class="rightsection">
            <div class="Rcontainer">
                <h3>OUR MISSION</h3>
                <p>Our mission is to revolutionize the way people book and experience bus travel. 
                We are committed to providing a user-friendly and secure platform that offers a vast selection of routes, schedules, and travel options.
                 Our focus is on delivering a  and reliable booking experience, ensuring that passengers can access safe and punctual transportation services.
                </p>
            </div>

        </div>
      </div>
        
 
</div><br><br>

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

