<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="t" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Bus timetable</title>
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
            float:right;
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
		
		h2{
		text-align: center;
		}
		
		.container{
		text-align: center;
		}
		
		table{
		border-collapse: collapse;
		width: 80%;
		margin: 20px auto;
		}
		
		th, td{
		border: 1px solid black;
		padding: 8px;
		text-align:center;
		}
		
		th{
		background-color: #fff;
		}
		
		.button{
		display: inline-block;
		padding: 5px 30px;
		background-color: black;
		color: #d1f1f0;;
		text-decoration: none;
		border: 1px solid black;
		}
		
		.button:hover{
		background-color: #52bde8;
		color: black;
		}
		
			.button1{
		display: inline-block;
		padding: 20px 60px;
		background-color: #0a31f0;
		color: #d1f1f0;;
		text-decoration: none;
		border: 2px solid black;
		border-radius: 10px;
		font-size:20px
		}
		
		.button1:hover{
		background-color: #52bde8;
		color: black;
		}
		

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
	<h2>Manage Timetable</h2>
	<div class="container">
	<table border = "1">
	<tr>
		<th>TID</th>
		<th>TMID</th>
		<th>Bus Number</th>
		<th>Date</th>
		<th>Time</th>
		<th>Origin</th>
		<th>Destination</th>
		<th>Price</th>
		<th>Action</th>
	</tr>
	
	<t:forEach items = "${timetableList}" var = "entry">
	
	<t:set var="tid" value="${entry.tid}" />
	<t:set var="tmid" value="${entry.tmid}" />
	<t:set var="tbusNumber" value="${entry.busNum}" />
	<t:set var="date" value="${entry.date}" />
	<t:set var="time" value="${entry.time}" />
	<t:set var="origin" value="${entry.origin}" />
	<t:set var="destination" value="${entry.destination}" />
	<t:set var="price" value="${entry.price}" />
	
	
	<tr>
	<td>${entry.tid}</td>
	<td>${entry.tmid}</td>
	<td>${entry.busNum}</td>
	<td>${entry.date}</td>
	<td>${entry.time}</td>
	<td>${entry.origin}</td>
	<td>${entry.destination}</td>
	<td>${entry.price}</td>
	
	<t:url value="Manager/editTimetable.jsp" var="timeedit">
	<t:param name="tid" value="${entry.tid}" />
	<t:param name="tmid" value="${entry.tmid}" />
	<t:param name="tbusNumber" value="${entry.busNum}" />
	<t:param name="date" value="${entry.date}" />
	<t:param name="time" value="${entry.time}" />
	<t:param name="origin" value="${entry.origin}" />
	<t:param name="destination" value="${entry.destination}" />
	<t:param name="price" value="${entry.price}" />
	</t:url>
	
	
	<td>
	<a href="${timeedit}"><input class="button" type="button" name="edit" value="Update" /></a>
	
	<t:url value="Manager/deleteBus.jsp" var="timedelete">
	<t:param name="tid" value="${entry.tid}" />
	<t:param name="tmid" value="${entry.tmid}" />
	<t:param name="tbusNumber" value="${entry.busNum}" />
	<t:param name="date" value="${entry.date}" />
	<t:param name="time" value="${entry.time}" />
	<t:param name="origin" value="${entry.origin}" />
	<t:param name="destination" value="${entry.destination}" />
	<t:param name="price" value="${entry.price}" />
	</t:url>
	<a href="${timedelete}"><input class="button" type="button" name="delete" value="Delete"/></a>
	</td>
	</tr>
	
	</t:forEach>
	
	</table>

	<a href = "Manager/addBus.jsp" class="button1">Add a New Bus-Route</a>
	</div>
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

</body>
</html>