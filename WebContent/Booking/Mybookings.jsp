<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
 <%@ taglib prefix="b" uri="http://java.sun.com/jsp/jstl/core"%>
  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

        <link rel="stylesheet" type="text/css" href="CSS/HdStyle.css">
        <link rel="stylesheet" href="../CSS/AllBook.css">
   <style>
   
    table {
            border-collapse: collapse;
            width: 100%;
        }

        th, td {
            border: 1px solid #ddd;
            padding: 8px;
            text-align: left;
        }

        th {
            background-color: #f2f2f2;
        }
        .pay-button {
            background-color: #3498db; /* Blue */
            color: white;
            border: 1px solid #3498db;
        }

        .update-button {
            background-color: #2ecc71; /* Green */
            color: white;
            border: 1px solid #2ecc71;
            margin-left:22px
        }

        .delete-button {
            background-color: #e74c3c; /* Red */
            color: white;
            border: 1px solid #e74c3c;
            margin-left:26px
        }
   
   
   
   </style>
</head>
<body>
<%@ page import="javax.servlet.http.HttpSession" %>
<%@ page import="Com.customer.Customer" %>
<%
    // Retrieving the value using EL
    String priceParam = (String)request.getAttribute("priceParam");
%>
<div class="Top">
    <a href="#home"><img class="logo" src="homeImages/falogo.png"></a>
   
<div class="ul">
    <ul type = 'none'>
    <li><a href="#home">Home</a></li>
        <li><a href="#news">News</a></li>
        <li><a href="#contact">Contact</a></li>
   		 <li><a href="#about">About</a></li>
       
      </ul></div></div><br>
  <c:forEach var="seat" items="${bookedSeatsList}">
  
</c:forEach>

      
      <hr><br>
<table>
    <tr>
        <th>Booking Date</th>
        <th>Booking Time</th>
        <th>Bus Number</th>
        <th>Origin</th>
        <th>Destination</th>
        <th>Seat Numbers</th>
        <th>Payment Status</th>
		<th>Total Price</th>
		<th>Actions</th>
<c:forEach var="seat" items="${bookedSeatsList}">
 <c:set var ="seat" value=" ${seat}" /> 
</c:forEach>
<b:forEach var="booking" items="${bookingDetails}">

 <!-- Retrieve customer id from session -->
        <b:set var="customerId" value="${sessionScope.customerId}" />

<b:set var ="id" value="${booking.id}" />
<b:set var ="cid" value="${booking.cid}" />
<b:set var ="date" value="${booking.date}" />
<b:set var ="time" value="${booking.time}" />
<b:set var ="busNumber" value="${booking.busNumber}" />
<b:set var ="origin" value="${booking.origin}" />
<b:set var ="destination" value="${booking.destination}" /> 
<b:set var ="seatNumbers" value="${booking.seatNumbers}" />
<b:set var ="paymentStatus" value="${booking.paymentStatus}" />

        
    <tr>
	<td>${booking.date}</td>
	<td>${booking.time}</td>
	<td>${booking.busNumber} </td>
	<td>${booking.origin}</td>
    <td>${booking.destination}</td>
	<td>${booking.seatNumbers}</td>
	<td>${booking.paymentStatus}</td>
	
	<%String price = request.getParameter("totalPrice"); %>
	  <% double totalPrice = (double)request.getAttribute("totalPrice"); %>
      

        <!-- Your existing code -->
	
	<b:url value = "Payment/payment.jsp" var = "payment"> 
	<b:param name = "id" value = "${id}"/>
	<b:param name = "cid" value = "${cid}"/>
	<b:param name ="date" value="${date}" />
	<b:param name = "time" value = "${time}"/>
	<b:param name = "busNumber" value = "${busNumber}"/>
	<b:param name = "origin" value = "${origin}"/>
	<b:param name = "destination" value = "${destination}"/>
	<b:param name = "seatNumbers" value = "${seatNumbers}"/>
	<b:param name = "paymentStatus" value = "${paymentStatus}"/></b:url>
	<td><form >
	<label for="from"></label><input type="text" name="price" value=" <%=totalPrice %>" readonly/>
	
	</form></td>
    <td class="action-container">
	<form action ="Payment/payment.jsp"><label for="from"></label><input type="hidden" name="cusid" value=" ${booking.cid}" />
	<input type="hidden" name="bid" value=" ${booking.id}" />
	<label for="from"></label><input type="hidden" name="price" value=" <%=totalPrice %>" />
	
	<input type ="submit" value ="Pay" ${paymentStatus == 'Paid' ? 'disabled' : ''}></form>
	
		
	

	
	
	
	
	<b:url value = "Booking/updateBooking.jsp" var = "bookingupdate"> 
	<b:param name = "id" value = "${id}"/>
	<b:param name = "cid" value = "${cid}"/>
	<b:param name ="date" value="${date}" />
	<b:param name = "time" value = "${time}"/>
	<b:param name = "busNumber" value = "${busNumber}"/>
	<b:param name = "origin" value = "${origin}"/>
	<b:param name = "destination" value = "${destination}"/>
	<b:param name = "seatNumbers" value = "${seatNumbers}"/>
	<c:param name = "bookedSeatsList" value = "${seat}"/>
	<b:param name ="paymentStatus" value="${booking.paymentStatus}" />
	<b:param name = "price" value = "<%=priceParam %>"/>
	
		
	</b:url>
	
	<a href = "${bookingupdate}"><input type ="button" name="update" value ="Update"${paymentStatus == 'Paid' ? 'disabled' : ''}>
	</a><br>
	
	<b:url value = "Booking/deleteBooking.jsp" var = "bookingdelete"> 
	<b:param name = "id" value = "${id}"/>

	<b:param name = "cid" value = "${cid}"/>
	<b:param name ="date" value="${date}" />
	<b:param name = "time" value = "${time}"/>
	<b:param name = "busNumber" value = "${busNumber}"/>
	<b:param name = "origin" value = "${origin}"/>
	<b:param name = "destination" value = "${destination}"/>
	<b:param name = "seatNumbers" value = "${seatNumbers}"/>
	<b:param name ="paymentStatus" value="${booking.paymentStatus}" />
	<b:param name="price" value="<%=String.valueOf(totalPrice) %>"/></b:url>
	 
	<a href = "${bookingdelete}"><input type ="button" name="delete" value ="Delete">
	</a></td><tr></b:forEach></table>
	
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