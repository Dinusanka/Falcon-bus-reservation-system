package Com.Booking;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Com.Booking.Booking;
import Com.Booking.BookingDBUtil;


@WebServlet("/BookingUpdateServlet")
public class BookingUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public BookingUpdateServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String bid = request.getParameter("id");
		int cid = Integer.parseInt(request.getParameter("cid"));
		String seatNumbers = request.getParameter("selectedSeats");
		int seatCount = Integer.parseInt(request.getParameter("selectedSeatCount"));
		String priceParam = request.getParameter("price");
    	double price = Double.parseDouble(priceParam);
    	request.setAttribute("priceParam",priceParam);
    	Booking bookingCal = new Booking(cid);

        // Calculate the total price
        double totalPrice = bookingCal.calPrice(seatCount,price);

        // Set the total price as an attribute in the request
        request.setAttribute("totalPrice", totalPrice);
		
		boolean isUTrue;
		
		isUTrue = BookingDBUtil.updateBooking(bid, seatNumbers);
		
		
		if(isUTrue == true) {
			
			
			List<Booking> bookingDetails;
			try {
				bookingDetails = BookingDBUtil.getupdatedBooking(bid);
				request.setAttribute("bookingDetails", bookingDetails);
				RequestDispatcher dis = request.getRequestDispatcher("Booking/Mybookings.jsp");
				dis.forward(request, response);
			} catch (Exception e) {
				
				e.printStackTrace();
			}
			
		}
		else {
			
			
			RequestDispatcher dis = request.getRequestDispatcher("unsuccess.jsp");
			dis.forward(request, response);
			
		}
		 
		
	}

}

