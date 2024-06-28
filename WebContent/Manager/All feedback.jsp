<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="s" uri="http://java.sun.com/jsp/jstl/core"%>
      <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View All Feedback</title>

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
		
		h2{
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
		
		button{
		background-color: black;
		color: #d1f1f0;
		padding:5px 10px;
		border: 1px solid black;
		cursor: pointer;
		}
		
		button:hover{
		background-color: #0a31f0;
		color: white;
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
      
      
      <!-- header end -->

    <h2>Feedback List</h2>
    <c:out value="${mid1}" />
    <table border="1">
        <tr>
            <th>SID</th>
            <th>SDID</th>
            <th>Type</th>
            <th>Description</th>
            <th>Location</th>
            <th>Date</th>
            <th>MID</th>
            <th>Reply</th>
            <th>Action</th>
        </tr>

        <s:forEach var="feedback" items="${feedbackList}">
            <tr>
                <td><c:out value="${feedback.sid}" /></td>
                <td><c:out value="${feedback.sdid}" /></td>
                <td><c:out value="${feedback.type}" /></td>
                <td><c:out value="${feedback.description}" /></td>
                <td><c:out value="${feedback.location}" /></td>
                <td><c:out value="${feedback.date}" /></td>
                <td><c:out value="${feedback.mid}" /></td>
                <td><c:out value="${feedback.reply}" /></td>
                <td>
                    <s:url value="viewFeedback.jsp" var="viewFeedback">
                        <s:param name="sid" value="${feedback.sid}" />
                        <s:param name="sdid" value="${feedback.sdid}" />
                        <s:param name="type" value="${feedback.type}" />
                        <s:param name="description" value="${feedback.description}" />
                        <s:param name="location" value="${feedback.location}" />
                        <s:param name="date" value="${feedback.date}" />
                        <s:param name="mid" value="${feedback.mid}" />
                        <s:param name="reply" value="${feedback.reply}" />
                    </s:url>
                    <a href="${viewFeedback}">
                        <button name="feed">View Feedback</button>
                    </a>
                </td>
            </tr>
        </s:forEach>
    </table>

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