package Com.Nav;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Com.Booking.Mybooking;
import Com.Payment.PaymentDBUtil;
import Com.customer.Customer;
import Com.customer.CustomerDBUtil;


@WebServlet("/MybookingServlet")
public class MybookingServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
    public MybookingServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		try {		
		
		String cid = request.getParameter("cusid");
		List<Mybooking> cusDetails = PaymentDBUtil.dm(cid);
		request.setAttribute("cusDetails",  cusDetails);
		
		RequestDispatcher dis = request.getRequestDispatcher("Booking/AllBooking.jsp");
		dis.forward(request, response);
		}
		catch (ClassNotFoundException e) {
	        e.printStackTrace(); // Handle the exception appropriately, e.g., log it
	    }
	}

}
