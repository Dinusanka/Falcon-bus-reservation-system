package Com.Payment;

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
import Com.Booking.Mybooking;



/**
 * Servlet implementation class PaymentServlet
 */
@WebServlet("/PaymentServlet")
public class PaymentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {



		String cardHolderName = request.getParameter("cardHoldername");
		String cardNumber = request.getParameter("cardNumber");
		String expiryDate = request.getParameter("expiryDate");
		String cvv = request.getParameter("cvv");
		String cusid1 = request.getParameter("cid");
		String prices = request.getParameter("price");
		String bid = request.getParameter("bid");
		
		
		
		boolean isTrue;
		
		isTrue = PaymentDBUtil.insertpayment(cusid1,bid, cardHolderName, cardNumber, expiryDate, cvv,prices);
		
		
		
		
		if(isTrue == true) {
			

			try {		
				
				
				List<Mybooking> cusDetails = PaymentDBUtil.dm(cusid1);
				request.setAttribute("cusDetails",  cusDetails);
				
				RequestDispatcher dis = request.getRequestDispatcher("Booking/AllBooking.jsp");
				dis.forward(request, response);
				}
				catch (ClassNotFoundException e) {
			        e.printStackTrace();
			    }
		
		}
		else {
			RequestDispatcher dis = request.getRequestDispatcher("unsuccess.jsp");
			dis.forward(request, response);
			
		}
	}

}
