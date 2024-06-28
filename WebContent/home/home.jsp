<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="t" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home</title>
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
  flex-direction: row;
  
  
}

    li a {
    display: block;
    color: white;
    text-align: center;
    padding: 14px 16px;
    text-decoration: none;
    margin-bottom:13px;
    flex-direction: row;
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
      height: 150px;
     
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

    input[type="submit"] {
    background-color: #0059FF ;
    color: white;
    cursor: pointer;
    margin-right:510px;
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
<link rel="stylesheet" href="<c:url value='/CSS/timetable.css' />">
<link rel="stylesheet" type="text/css" href="CSS/HdStyle.css">
</head>

<body><div class="Top">
    <a href="#home"><img class="logo" src="logo.png"></a>
   
<div>
    <ul type = 'none'>
        <li><form action ="AllB" method="post"><input type ="hidden" name ="cusid" value ="<%=session.getAttribute("retrievedId") %>"><input class ="li" type ="submit" name="submit" value="My Bookings"></form></li>
        <li><form action ="../Driver/contactUs.jsp" method="post"><input class ="li" type ="submit" name="submit" value="Contact Us"></form></li>
        <li><form action ="../Manager/Terms&Conditions.jsp" method="post"><input class ="li" type ="submit" name="submit" value="Terms&Conditions"></form></li>
        <li><form action ="Profile" method="post"><input type ="hidden" name ="cusid" value ="<%=session.getAttribute("retrievedId") %>"><input  class ="li" type ="submit" name="submit" value="Profile"></form></li>
       
      </ul></div></div><br>
      <hr>


      <div class="search-container">
      <c:url value="search" var="searchUrl" />
      <form action="${searchUrl}" method="POST"><div class ="f"><label for="from">From:</label>
      <c:forEach var="cus" items="${cusDetails}">

	 <c:set var="cid" value="${cus.id}" />
        <input type="hidden" name="cusid" value="${cid}" /></c:forEach>
      
        
        <input type="text" id="from" class="search-input" name="origin" placeholder="Enter origin" > </div>
        
        <div class ="t"><label for="to">To:</label>
        <input type="text" id="to" class="search-input"name = "destination" placeholder="Enter destination"></div>
       
        <div class ="d"><label for="date">Date:</label> 
        <input type="text" id="date" name="date" class="date-input" placeholder="yyyy-mm-dd" required>
 </div>
      
       
       
       
       
        
    <t:url value = "timetableshow.jsp" var = "time">
	<t:param name = "origin" value = "${origin}"/>
	<t:param name = "destination" value = "${destination}"/>
	<t:param name = "date" value = "${date}"/>
	<t:param name = "cusid" value = "${cusid}"/>
	
        </t:url>
       
        <a href = "${time}"> <input class = "search-btn"type="submit" name="submit" value="Search"></a> </form> </div><br>
<hr>

<div class="slideshow-container">

    <div class="mySlides">
        <img src="homeImages/01.jpg" alt="Image 1">
        
    </div>

    <div class="mySlides">
        <img src="homeImages/02.jpg" alt="Image 2">
     
    </div>

    <div class="mySlides">
        <img src="homeImages/03.jpg" alt="Image 3">
      
    </div>

    <div class="mySlides">
        <img src="homeImages/04.jpg" alt="Image 3">
       
    </div>

    <div class="mySlides">
        <img src="homeImages/05.jpg" alt="Image 3">
       
    </div>

    <!-- Add more slides as needed -->

    
</div><hr>
 <footer><div class="footer-content">
        
            
            
            
            
                    <div class="link">
                    <a href="../Manager/Terms&Conditions.jsp">Terms of Service</a><br> 
                   <a href="../Driver/contactUs.jsp">Contact Us</a></div>
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
        
        document.getElementById('date').addEventListener('input', function () {
            const dateInput = this.value;

            // Check if the entered date matches the yyyy-mm-dd format
            const dateRegex = /^\d{4}-\d{2}-\d{2}$/;
            if (!dateRegex.test(dateInput)) {
                this.setCustomValidity('Please enter a date in the format yyyy-mm-dd');
            } else {
                this.setCustomValidity('');
            }
        });

        
        
        </script>
        
        
</body>
</html>