<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link rel="stylesheet" href="../CSS/BookingStyles.css">
<style type="text/css">
    
   body{
   background-color:#E2F8FF ;
   } /* Existing styles */
.bus {
    width: 700px;
    margin: 50px auto;
    position: relative;
    background-color: #FBF0C7; /* Green */
    border-radius: 10px;
    padding: 20px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

.seat {
    width: 40px;
    height: 40px;
    margin: 5px;
    border: 1px solid #ccc;
    border-radius:2px;
    text-align: center;
    line-height: 40px;
    font-size: 14px;
    cursor: pointer;
    background-color: #54F70D; /* White */
    color: #333; /* Dark Gray */
    transition: background-color 0.3s ease;
}
h2{
text-align:center;
}

.seat:hover {
    background-color: #e0e0e0;
}

.seat.disabled {
    background-color: #ff1100; /* Red */
    color: #fff; /* White */
    cursor: not-allowed;
}

/* Additional styles for better visualization */
.container {
    display: flex;
    flex-wrap: wrap;
    justify-content: center; /* Center the seats */
}

/* Add shadows to seats for a 3D effect */
.seat {
    box-shadow: 0 0 5px rgba(0, 0, 0, 0.2);
    background-color: #3498db;
     background-color: #54F70D;
    
}

/* Style the selected seats differently */
.seat.selected {
    background-color: #3498db; /* Blue */
    color: #fff; /* White */
}

/* Style for the Submit button */
input[type="submit"] {
    background-color: #3498db; /* Blue */
    color: #fff; /* White */
    padding: 10px;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    transition: background-color 0.3s ease;
}

input[type="submit"]:hover {
    background-color: #2980b9; /* Darker Blue on hover */
}
    
    
    
  
    .seat {
        display: inline-block; /* Display seats in a line */
        margin-right: 10px; /* Add some space between seats */
        /* Add other styles as needed */
    }
/* Basic styling for form container */
.form-container {
    max-width: 600px;
    margin: 20px auto;
    padding: 20px;
    border: 1px solid #ccc;
    border-radius: 8px;
    background-color: #f9f9f9;
    margin-top:-10px;
}

/* Style for form labels */
.form-container label {
    display: block;
    margin-bottom: 8px;
    font-weight: bold;
}

/* Style for form input fields */
.form-container .search-input,
.form-container .datepicker {
    width: calc(50% - 12px); /* Adjust the width as needed, considering margin and box-sizing */
    padding: 8px;
    margin-bottom: 12px;
    box-sizing: border-box;
    border: 1px solid #ccc;
    border-radius: 4px;
    display: inline-block;
}

/* Additional styles for hidden input */
.form-container input[type="hidden"] {
    display: none;
}

/* Style for the form submit button (assuming you have one) */
.form-container button {
    background-color: #4caf50;
    color: white;
    padding: 10px 15px;
    border: none;
    border-radius: 4px;
    cursor: pointer;
    display: inline-block;
}

.form-container button:hover {
    background-color: #45a049;
}

    /* Column Styles */
.f, .t, .d {
    grid-column: span 1;
    float:left;
}

/* Additional Columns for Selected Seats */
.m,.n {
    grid-column: span 2;}
    
   
    </style>

<title>Update Booking</title>
</head>
<body>


<% 
 	String bid = request.getParameter("id");
	String cid = request.getParameter("cid");
	String date = request.getParameter("date");
	String time = request.getParameter("time");
	String busNumber = request.getParameter("busNumber");
	String origin= request.getParameter("origin");
	String destination = request.getParameter("destination");
	String seatNumbers = request.getParameter("seatNumbers");
	String price = request.getParameter("price");
	String seat = request.getParameter("bookedSeatsList");
%>
       
    
 

<h2>Bus Seat Selection</h2>
        <div class="container">
            <div class="bus">
                <div id="seat-container">
                    <!-- Generate seat grid dynamically -->
                    <c:forEach var="row" begin="1" end="5">
                        <c:forEach var="col" begin="1" end="10">
                            <c:set var="seatInfo" value="${row}-${col}" />
                            <c:set var="isSeatBooked" value="${bookedSeatsList.contains(seatInfo)}" />
                            <div class="seat" data-seat-info='${seatInfo}'
                                 onclick="handleSeatClick('${seatInfo}', ${isSeatBooked})"
                                 style="background-color: ${isSeatBooked ? '#ff1100' : 'transparent'}; cursor: ${isSeatBooked ? 'not-allowed' : 'pointer'}">${row}-${col}</div>
                        </c:forEach>
                        <br/>
                    </c:forEach>
                </div>
            </div>
        </div>



        
        
        <form id="seatForm" action="../UpdateBooking" method="post">
        <div class="form-container">
        <div class ="f"><label for="from">From:</label>
        <input type="text" id="origin" class="search-input"  value ="<%=origin %>" readonly> </div>
        
        <div class ="t"><label for="to">To:</label>
        <input type="text" id="destination" class="search-input"  value ="<%=destination %>"readonly></div>
        
       
        <div class ="d"><label for="date">Date:</label> 
        <input type="date" class="datepicker" id="date"  value ="<%=date %>"> </div>
			 <div class ="f"><label for="to">Bus Number:</label>
        <input type="text" id="busNumber" class="search-input"  value ="<%=busNumber %>"readonly></div>
       	 		<div class="t">
					<label for="time">Time:</label>
				    <input type="time" id="time"  value ="<%=time %>"></div>
				
				 	<div class ="d"><label for="to">Price of One seat</label>
        <input type="text" id="date" class="search-input"  value ="<%=price %>"readonly></div>
         <div class ="book"><input type="submit" value="Book"></div>


    <!-- Selected Seats Summary -->
    <div class ="m" id="selected-seats">
        <h3>Selected Seats:</h3>
        <ul id="selected-seats-list"></ul>
    </div>
    
        
       
           

   <div class ="n"id="selected-seat-count">Selected Seats Count:</div>
    
     
      <input type="text" name="selectedSeatCount" id="selectedSeatCount" value="" />
    <input type="hidden" id="id" class="search-input" name ="id" value ="<%=bid %>"> 
        <input type="text" name="selectedSeats" id="selectedSeats" value ="<%=seatNumbers %>" />
        <input type="hidden" name="cid"  value="<%=cid %>" />
        <input type="hidden" name="price" id="paymentStatus" value ="<%=price %>" />

       </div>
    </form>

<script>
		
		function handleSeatClick(seatInfo, isBooked) {
	        if (isBooked) {
	            selectSeat(seatInfo);
	        }
	    }
		    var selectedSeats = [];
		
		    function selectSeat(seatNumber) {
		        var seatIndex = selectedSeats.indexOf(seatNumber);
		
		        if (seatIndex === -1) {
		            selectedSeats.push(seatNumber);
		        } else {
		            selectedSeats.splice(seatIndex, 1);
		        }
		
		        updateSelectedSeatsList();
		        updateHiddenInput();
		    }
		
		    function updateSelectedSeatsList() {
		        var selectedSeatsList = document.getElementById('selected-seats-list');
		        selectedSeatsList.innerHTML = '';
		        
		
		        selectedSeats.forEach(function (seat) {
		            var li = document.createElement('li');
		            li.textContent = seat;
		            selectedSeatsList.appendChild(li);
		        });
		    }
		
		    function updateHiddenInput() {
		        document.getElementById('selectedSeats').value = selectedSeats.join(',');
		        document.getElementById('selectedSeatCount').value = selectedSeats.length;
		    }
		    document.addEventListener('click', function(event) {
		        var target = event.target;
		        
		        // Check if the clicked element has the 'seat' class and not the 'disabled' class
		        if (target.classList.contains('seat') && !target.classList.contains('disabled')) {
		            // Extract seat information and call the selectSeat function
		            var seatInfo = target.getAttribute('data-seat-info');
		            selectSeat(seatInfo);
		        }

		        // Prevent the click event for disabled seats
		        if (target.classList.contains('disabled')) {
		            event.preventDefault();
		            event.stopPropagation();
		        }
		    });
		    function updateSelectedSeatsList() {
		        var selectedSeatsList = document.getElementById('selected-seats-list');
		        selectedSeatsList.innerHTML = '';

		        selectedSeats.forEach(function (seat) {
		            var li = document.createElement('li');
		            li.textContent = seat;
		            selectedSeatsList.appendChild(li);
		        });
		     

		        // Update the selected seat count
		        var selectedSeatCount = selectedSeats.length;
		        document.getElementById('selected-seat-count').textContent = 'Selected Seats Count: ' + selectedSeatCount;
		    }

		</script>

</body>
</html>