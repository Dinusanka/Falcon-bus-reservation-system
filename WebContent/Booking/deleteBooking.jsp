<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Insert title here</title>

    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }

        .form-container {
            max-width: 600px;
            margin: 20px auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        .search-container {
            display: flex;
            flex-wrap: wrap;
            justify-content: space-between;
        }

        .search-input,
        .datepicker,
        .timepicker {
            width: calc(50% - 10px);
            padding: 8px;
            margin-bottom: 10px;
            box-sizing: border-box;
        }

        .delete-button {
            background-color: #dc3545;
            color: #fff;
            padding: 10px 15px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        .delete-button:hover {
            background-color: #c82333;
        }
    </style>
</head>
<body>
    <% 
        String bid = request.getParameter("id");
        String cid = request.getParameter("cid");
        String date = request.getParameter("date");
        String time = request.getParameter("time");
        String busNumber = request.getParameter("busNumber");
        String origin = request.getParameter("origin");
        String destination = request.getParameter("destination");
        String seatNumbers = request.getParameter("seatNumbers");
        String price = request.getParameter("price");
    %>

    <form action="../BookingDeleted" method="POST" class="form-container">
        <div class="search-container">
            <div class="f">
                <label for="from">From:</label>
                <input type="text" id="origin" class="search-input" name="origin" value="<%=origin %>" readonly>
            </div>

            <div class="t">
                <label for="to">To:</label>
                <input type="text" id="destination" class="search-input" name="destination" value="<%=destination %>" readonly>
            </div>

            <div class="t">
                <label for="to">Bus Number:</label>
                <input type="text" id="busNumber" class="search-input" name="busNumber" value="<%=busNumber %>" readonly>
            </div>

            <div class="d">
                <label for="date">Date:</label>
                <input type="date" class="datepicker" id="date" name="date" value="<%=date %>" readonly>
            </div>

            <label for="time">Time:</label>
            <input type="time" id="time" name="time" value="<%=time %>" readonly><br><br>
        </div>

        <div class="d">
            <label for="seatNumbers">Seat Numbers:</label> 
            <input type="text" class="datepicker" id="seatNumbers" name="seatNumbers" value="<%=seatNumbers %>" readonly>
        </div>

        <input type="text" class="datepicker" id="seatNumbers" name="price" value="<%=price %>" readonly>
        <div>
            <input type="hidden" id="id" class="search-input" name="id" value="<%=bid %>">
        </div>
        <div>
            <input type="hidden" name="cusid" id="cusid" value="<%=cid %>" />
        </div>

        <input type="submit" name="submit" value="DeleteBooking" class="delete-button">
    </form>
</body>
</html>
