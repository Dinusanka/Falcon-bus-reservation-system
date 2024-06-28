package Com.Booking;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Com.Booking.BookingDBUtil;
import Com.Search.timetableDBUtil;
import Com.Booking.Booking;


@WebServlet("/SeatSelectionServlet")
public class SeatSelectionServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    	
    	
    	PrintWriter out=response.getWriter();
		response.setContentType("text/html");
    	String cusid = request.getParameter("cusid");
    	int intcusid = Integer.parseInt(request.getParameter("cusid"));
    	String origin = request.getParameter("origin");
    	String destination = request.getParameter("destination");
    	String date = request.getParameter("date");
    	String time = request.getParameter("time");
    	String busNumber=request.getParameter("busNumber");
    	String selectedSeats = request.getParameter("selectedSeats"); 
    	int seatCount = Integer.parseInt(request.getParameter("selectedSeatCount"));
    	
    	String priceParam = request.getParameter("price");
    	double price = Double.parseDouble(priceParam);
    	request.setAttribute("priceParam",priceParam);
    	Booking bookingCal = new Booking(intcusid);

        // Calculate the total price
        double totalPrice = bookingCal.calPrice(seatCount,price);

        // Set the total price as an attribute in the request
        request.setAttribute("totalPrice", totalPrice);
		
		try {
			List<Booking>bookingDetails = BookingDBUtil.display(cusid, busNumber,origin,destination,date,time,selectedSeats );
			
			request.setAttribute("bookingDetails", bookingDetails);
			List<String> bookedSeatsList = timetableDBUtil.getBookedSeats(busNumber,time,date);
			request.setAttribute("bookedSeatsList",bookedSeatsList);
		
			
		}
		catch(Exception e){
			e.printStackTrace();
			
			
		}
    	
    	
    	
    		boolean isTrue;
		
		isTrue = BookingDBUtil.insertbooking(selectedSeats,cusid,busNumber,origin,destination,date,time);
		
		if(isTrue == true) {
			RequestDispatcher dis = request.getRequestDispatcher("Booking/Mybookings.jsp");
			dis.forward(request, response);
		}
		else {
			out.println("<script type='text/javascript'>");
			out.println("alert('Booking Unsuccessful!');");
			out.println("location='Booking/Booking.jsp'");
			out.println("</script>");
			
			
		}
	}

}