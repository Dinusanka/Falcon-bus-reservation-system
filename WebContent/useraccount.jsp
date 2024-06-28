<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <link rel="stylesheet" type="text/css" href="CSS/Profile.css">
        <link rel="stylesheet" type="text/css" href="CSS/HdStyle.css">
   
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

<c:forEach var="cus" items="${cusDetails}">
    <div class="container">
        <div class="customer-details">
            <div>ID:</div>
            <div>${cus.id}</div>
            <div>Name:</div>
            <div>${cus.name}</div>
            <div>Email:</div>
            <div>${cus.email}</div>
            <div>Phone:</div>
            <div>${cus.phone}</div>
            <div>Username:</div>
            <div>${cus.username}</div>
            
        </div>

        <c:url value="updatecustomer.jsp" var="cusupdate">
            <c:param name="id" value="${cus.id}"/>
            <c:param name="name" value="${cus.name}"/>
            <c:param name="email" value="${cus.email}"/>
            <c:param name="phone" value="${cus.phone}"/>
            <c:param name="uname" value="${cus.username}"/>
            <c:param name="pass" value="${cus.password}"/>
        </c:url>
        
        <a href="${cusupdate}">
            <button>Update</button>
        </a>

        <c:url value="deletecustomer.jsp" var="cusdelete">
            <c:param name="id" value="${cus.id}"/>
            <c:param name="name" value="${cus.name}"/>
            <c:param name="email" value="${cus.email}"/>
            <c:param name="phone" value="${cus.phone}"/>
            <c:param name="uname" value="${cus.username}"/>
            <c:param name="pass" value="${cus.password}"/>
        </c:url>

        <a href="${cusdelete}">
            <button>Delete</button>
        </a>
    </div>
</c:forEach>
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
