<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="m" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="s" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="t" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View useraccount</title>

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
		
		.p-image{
		width: 200px;
		height: 200px;
		float: left;
		margin-right: 70px;
		margin-left: 400px;
		border-radius: 50%;
		}
		
		.p-paragraph{
		text-align: left;
		margin-top: 100px;
		margin-bottom: 10px;
		font-size: 25px;
		}
		
		.container{
		text-align: center;
		}
		
		.button{
		display: block;
		padding: 5px 10px;
		background-color: #0a31f0;
		color: #d1f1f0;;
		text-decoration: none;
		border: 1px solid black;
		margin: 40px 10px;
		margin-bottom: 5px;
		margin-right: 250px;
		align: center;
		}
		
		.button:hover{
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

 <div class="container">
        <!-- Other content and links here -->
        
        <s:forEach var="feedbackList" items="${feedbackList}">
		
		<s:set var="sid" value="${feedbackList.sid}"/>
		<s:set var="sdid" value="${feedbackList.sdid}"/>
		<s:set var="type" value="${feedbackList.type}"/>
		<s:set var="description" value="${feedbackList.description}"/>
		<s:set var="location" value="${feedbackList.location}"/>
		<s:set var="date" value="${feedbackList.date}"/>
		<s:set var="mid" value="${feedbackList.mid}"/>
		<s:set var="reply" value="${feedbackList.reply}"/>
			
		</s:forEach>
		
		
		<m:forEach var="man" items="${manDetails}">
		
		<m:set var="id" value="${man.mid}"/>
		<m:set var="mname" value="${man.mname}"/>
		<m:set var="email" value="${man.email}"/>
		<m:set var="username" value="${man.username}"/>
		<m:set var="password" value="${man.password}"/>
        

		<img class="p-image" src="https://static.vecteezy.com/system/resources/previews/002/002/257/original/beautiful-woman-avatar-character-icon-free-vector.jpg" alt="Profile Image">
		<p class="p-paragraph">Manager ID: ${man.mid}<br>
        Manager Name: ${man.mname}<br>
        Manager Email: ${man.email}<br>
        Manager Password: ${man.password}<br>
        Manager Username: ${man.username}<br></p>
        <br><br>
        
        </m:forEach>

        <m:url value="Manager/EditManager.jsp" var="manupdate">
            <m:param name="id" value="${id}" />
            <m:param name="mname" value="${mname}" />
            <m:param name="email" value="${email}" />
            <m:param name="pass" value="${password}" />
            <m:param name="uname" value="${username}" />
        </m:url>

        <a href="${manupdate}">
            <input type="button" name="update" value="Update" class="button">
        </a>

        <form action="viewFeedback" method="post">
            <input type="hidden" name="mid" value="${man.mid}">
            <input type="submit" name="feedback" value="Feedback" class="button">
        </form>

        ${feedbacks.sdid}

        <s:url value="Manager/viewFeedback.jsp" var="viewFeedback">
            <s:param name="sid" value="${sid}" />
            <s:param name="sdid" value="${sdid}" />
            <s:param name="type" value="${type}" />
            <s:param name="description" value="${description}" />
            <s:param name="location" value="${location}" />
            <s:param name="date" value="${date}" />
            <s:param name="mid" value="${mid}" />
            <s:param name="reply" value="${reply}" />
        </s:url>
        
        
        ${Timetable.tmid}

        <form action="timetable" method="post">
            <input type="hidden" name="mid" value="${man.mid}">
            <input type="submit" name="timetable" value="Timetable" class="button">
        </form>

        <t:url value="Manager/timetable.jsp" var="timetable">
            <t:param name="tid" value="${tid}" />
            <t:param name="tmid" value="${tmid}" />
            <t:param name="tbusNumber" value="${tbusNumber}" />
            <t:param name="date" value="${date}" />
            <t:param name="time" value="${time}" />
            <t:param name="origin" value="${origin}" />
            <t:param name="destination" value="${destination}" />
            <t:param name="price" value="${price}" />
        </t:url>
        
    </div>


<!-- footer starts -->	
	<br><br><br><br><br><br>


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