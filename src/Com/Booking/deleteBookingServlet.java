package Com.Booking;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Com.Payment.PaymentDBUtil;







@WebServlet("/deleteBookingServlet")
public class deleteBookingServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public deleteBookingServlet() {
        super();
      
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		

	
		 String cid = request.getParameter("cusid");
		   
		
		String id = request.getParameter("id");
		boolean isTrue;
		
		isTrue = BookingDBUtil.deleteBooking(id);
		
		if (isTrue == true) {
			
			
			try {		
				
				
				List<Mybooking> cusDetails = PaymentDBUtil.dm(cid);
				request.setAttribute("cusDetails",  cusDetails);
				
				RequestDispatcher dis = request.getRequestDispatcher("Booking/AllBooking.jsp");
				dis.forward(request, response);
				}
				catch (ClassNotFoundException e) {
			        e.printStackTrace(); 
			    }
		}
		else {
			
			
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("unsuccess.jsp");
			dispatcher.forward(request, response);
		}
		
	}

}
