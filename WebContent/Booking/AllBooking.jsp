<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
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

        form {
            display: inline-block;
            margin-right: 5px;
        }

        .button-link {
            display: inline-block;
            padding: 8px 12px;
            text-align: center;
            text-decoration: none;
            border-radius: 4px;
            cursor: pointer;
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
        input[type="button"] {
  background-color: #0059FF;
  color: white;
  padding: 4px 6px;
  border: none;
  border-radius: 4px;
  cursor: pointer;
  margin-right:200px;
  margin-bottom:20px;
}

        .disabled {
            background-color: #ddd; /* Grey background */
            border: 1px solid #ddd;
            cursor: not-allowed;
        }

        .icon {
            margin-right: 5px;
        }

        .action-links {
            text-decoration: none;
        }

        .action-links i {
            margin-right: 5px;
        }

        .action-container {
            display: flex;
            align-items: center;
        }

        .pay-container {
            justify-content: flex-start;
        }

        .update-container {
            justify-content: center;
        }

        .delete-container {
            justify-content: flex-end;
        }
    </style>

</head>
<body>

<h2>Booking Details</h2>

<table>
    <tr>
        <th>Booking Date</th>
        <th>Booking Time</th>
        <th>Bus Number</th>
        <th>Origin</th>
        <th>Destination</th>
        <th>Seat Numbers</th>
        <th>Payment Status</th>
        <th>Actions</th>
    </tr>

    <c:forEach var="cus" items="${cusDetails}">
        <tr>
            <td>${cus.date}</td>
            <td>${cus.time}</td>
            <td>${cus.busNumber}</td>
            <td>${cus.origin}</td>
            <td>${cus.destination}</td>
            <td>${cus.seatNumbers}</td>
            <td>${cus.paymentStatus}</td>
            <td class="action-container">
                <div class="pay-container">
                    <c:url value="Payment/payment.jsp" var="payment">
                        <c:param name="id" value="${cus.id}"/>
                        <c:param name="cid" value="${cus.cid}"/>
                        <c:param name="date" value="${cus.date}" />
                        <c:param name="time" value="${cus.time}"/>
                        <c:param name="busNumber" value="${cus.busNumber}"/>
                        <c:param name="origin" value="${cus.origin}"/>
                        <c:param name="destination" value="${cus.destination}"/>
                        <c:param name="seatNumbers" value="${cus.seatNumbers}"/>
                        <c:param name="paymentStatus" value="${cus.paymentStatus}"/>
                    </c:url>

                    <form action="${payment}" method="post">
                        <input type="hidden" name="cusid" value="${cus.cid}" />
                        <input type="hidden" name="price" value="35.0" />
                        <input type="hidden" name="bid" value="${cus.id}" />
                        <input type="submit"class="pay-button" value="Pay" ${cus.paymentStatus == 'Paid' ? 'disabled' : ''} />
                    </form>
                </div>

                <div class="update-container">
                    <c:url value="Booking/updateBooking.jsp" var="bookingupdate">
                        <c:param name="id" value="${cus.id}"/>
                        <c:param name="cid" value="${cus.cid}"/>
                        <c:param name="date" value="${cus.date}" />
                        <c:param name="time" value="${cus.time}"/>
                        <c:param name="busNumber" value="${cus.busNumber}"/>
                        <c:param name="origin" value="${cus.origin}"/>
                        <c:param name="destination" value="${cus.destination}"/>
                        <c:param name="seatNumbers" value="${cus.seatNumbers}"/>
                        <c:param name="paymentStatus" value="${cus.paymentStatus}"/>
                        <c:param name="price" value="35.0"/>
                    </c:url>

                  <a href="${bookingupdate}">
                        <input type="button"class="update-button" name="update" value="Update" ${cus.paymentStatus == 'Paid' ? 'disabled' : ''}>
                    </a><br>
                </div>

                <div class="delete-container">
                    <c:url value="Booking/deleteBooking.jsp" var="bookingdelete">
                        <c:param name="id" value="${cus.id}"/>
                        <c:param name="cid" value="${cus.cid}"/>
                        <c:param name="date" value="${cus.date}" />
                        <c:param name="time" value="${cus.time}"/>
                        <c:param name="busNumber" value="${cus.busNumber}"/>
                        <c:param name="origin" value="${cus.origin}"/>
                        <c:param name="destination" value="${cus.destination}"/>
                        <c:param name="seatNumbers" value="${cus.seatNumbers}"/>
                        <c:param name="paymentStatus" value="${cus.paymentStatus}"/>
                        <c:param name="price" value="35.0"/>
                    </c:url>

                    <a href="${bookingdelete}">
                        <input type="button" name="delete" class="delete-button" value="Delete"style="background-color: red; color: red;">
                    </a>
                </div>
            </td>
        </tr>
    </c:forEach>
</table>

</body>
</html>
