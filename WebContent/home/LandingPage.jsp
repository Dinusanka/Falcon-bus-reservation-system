<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Image Slideshow</title>
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
    .search-container {
      background-color: #fff;
      box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
      padding: 20px;
      margin-left: 90px;
      border-radius: 8px;
      width: 1300px;
      height: 140px;
     
      flex-direction: column;
      align-items: stretch;
    }

    .search-input,
    .date-input {
      width: 100%;
      padding: 10px;
      margin-left: 20px;
      margin-bottom: 10px;
      box-sizing: border-box;
    }

    .date-input {
      margin-bottom: 0;
    }
    .f{float: left;
    width: 300px;
    margin-left: 110px;

}
.t{float: left;
    width: 300px;
    margin-left: 100px;}
.d{
    float: left;
    width: 300px;
    margin-left:100px;;
}

    .search-btn {
      width: 300px;
      margin-top: 10px;
      padding: 10px;
    position: relative;
      background-color: #4caf50;
      color: #fff;
      border: none;
      border-radius: 4px;
      cursor: pointer;
      margin-right: 500px;
    }

    .search-btn:hover {
      background-color: #45a049;
     
    }
    

        .slideshow-container {
            
            width: 1700px;
            height:700px;
            margin-left: 120px;
            border-radius: 10px;
         
            
        }
        @keyframes fadeIn {
        0% { opacity: 0; }
        100% { opacity: 1; }
        }
        .mySlides {
            display: none;
             animation: fadeIn 5s; 
            width: 1000px;
            height:500px
        }
        .Top{
            width: auto;
            height: 150px;
           background-color: #52bde8;
        }

        img {
           
            width: 1300px;
            height:700px;
            float:left
        }

        .img1 {
            animation: fadeIn 5s; 
            width: 900px;
            height:500px
        }
        .logo {
            
            width: 90px;
            height:50px
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

 .link{
padding:30px;
float:left
 }
        .caption {
            

            bottom: 8px;
            width: 1270px;
            hight:100px;
            text-align: center;
            color: #f2f2f2;
            font-size: 15px;
            padding: 15px;
            background: rgba(0, 0, 0, 0.5);
            
        }
	.copy {
    text-align: center;
    padding:30px
    

}

.footer-content{
 width: auto;
 height: 100px;
 background-color: #52bde8;
}
       
    </style>
</head>
<body><div class="Top">
    <a href="#home"><img class="logo" src="homeImages/logo.png"></a>
   <form action ="../customerinsert.jsp"> <input type="submit" value="Sign Up" ></form>
   <form action ="../login.jsp"><input type="submit" value="Sign In" ></form>
<div class="ul">
    <ul type = 'none'>
    <li><a href="#home">Home</a></li>
        <li><a href="#news">News</a></li>
        <li><a href="#contact">Contact</a></li>
   		 <li><a href="#about">About</a></li>
       
      </ul></div></div><br>
      <hr>

      <div class="search-container">
        <form action ="../search" method="POST">
        <div class ="f"><label for="from">From:</label>
        <input type="text" id="from" name ="origin"class="search-input" placeholder="Enter origin"> </div>
        
        <div class ="t"><label for="to">To:</label>
        <input type="text" id="to" name="destination"class="search-input" placeholder="Enter destination"></div>
       
        <div class ="d"><label for="date">Date:</label> 
        <input type="text" id="date" class="date-input"> </div>
    <div ><input class="search-btn" name ="date"type="submit" value ="Search"></div></form>
        </div>
      <hr><br>

<div class="slideshow-container">

    <div class="mySlides">
        <img src="homeImages/01.jpg" alt="Image 1">
        <div class="caption"><h4>"Embark on a seamless journey with our cutting-edge Falcon.lk, where convenience meets efficiency, ensuring a hassle-free experience for all your travel needs."</h4></div>
    </div>

    <div class="mySlides">
        <img src="homeImages/02.jpg" alt="Image 2">
        <div class="caption">Caption 2</div>
    </div>

    <div class="mySlides">
        <img src="homeImages/03.jpg" alt="Image 3">
        <div class="caption">Caption 3</div>
    </div>

    <div class="mySlides">
        <img src="homeImages/04.jpg" alt="Image 3">
        <div class="caption">Caption 3</div>
    </div>

    <div class="mySlides">
        <img src="homeImages/05.jpg" alt="Image 3">
        <div class="caption">Caption 3</div>
    </div>

    <!-- Add more slides as needed -->

    
</div><br><br>
<div class="text"><h2></h2>
</div><hr>
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


<script>
    let slideIndex = 0;
    showSlides();

    function showSlides() {
        let i;
        const slides = document.getElementsByClassName("mySlides");

        for (i = 0; i < slides.length; i++) {
            slides[i].style.display = "none";
        }

        slideIndex++;

        if (slideIndex > slides.length) {
            slideIndex = 1;
        }

        slides[slideIndex - 1].style.display = "block";
        setTimeout(showSlides, 10000); // Change 2000 to set the time interval in milliseconds (2 seconds in this example)

        function searchBus() {
      // Add your search functionality here
      alert('Searching for buses...');
    }
    }
</script>

</body>
</html>
