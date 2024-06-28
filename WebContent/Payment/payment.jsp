<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Payment Page</title>
    <link rel="stylesheet" href="../CSS/paymentStyle.css">
</head>
<body>
<% 

	String cid = request.getParameter("cusid");
   String bid = request.getParameter("bid");
   String price = request.getParameter("price");
	
	
	%>


<div class="container1">
    <h2>Secure Payment</h2>

    <!-- Credit Card Form -->
    <form  action="../Pay" method="POST">
    
    	 <label for="cardHolder">Card Holder name:</label>
        <input type="text" id="cardNumber" name="cardHoldername" placeholder="CardHolder name" >
        
        <label for="cardNumber">Card Number:</label>
        <input type="text" id="cardNumber" name="cardNumber" placeholder="Card Number" >
	        
        <label for="expiryDate">Expiry Date:</label>
        <input type="text" id="expiryDate" name="expiryDate" placeholder="MM/YY" >

        <label for="cvv">CVV:</label>
        <input type="text" id="cvv" name="cvv" placeholder="CVV" required>
        <input type="hidden" id="id" name="cid" value="<%=session.getAttribute("retrievedId") %>" readonly>
		 <input type="text" id="id" name="price" value="<%=price %>" readonly>
		  <input type="hidden" id="bid" name="bid" value="<%=bid %>" readonly>
        <input type="submit" id ="submit" name ="submit"value ="Pay">
    </form></div>
        <!-- PayPal Form <div class="container2">

<form id="paypalForm">
    <label for="username">userName:</label>
    <input type="text" id="username" name="uid" ><br><br>

    <label for="password">Password:</label>
    <input type="password" id="password" name="psw" ><br><br>

 


   
        <button type="submit">Pay with PayPal</button>
    </form>
</div>-->

</body>
</html>
