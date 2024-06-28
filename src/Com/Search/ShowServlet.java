package Com.Search;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Com.customer.Customer;
import Com.customer.CustomerDBUtil;


@WebServlet("/ShowServlet")
public class ShowServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public ShowServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out=response.getWriter();
		response.setContentType("text/html");
		
		String bcid = request.getParameter("cusidb");
		String bdate = request.getParameter("dateb");
		String btime = request.getParameter("time");
		String bbusNumber = request.getParameter("busNumberb");
		String borigin= request.getParameter("originb");
		String bdestination = request.getParameter("destinationb");
		String price = request.getParameter("price");

		request.setAttribute("bcid", bcid);
		request.setAttribute("bdate", bdate);
		request.setAttribute("btime", btime);
		request.setAttribute("bbusNumber", bbusNumber);
		request.setAttribute("borigin", borigin);
		request.setAttribute("bdestination", bdestination);
		request.setAttribute("price", price);
		
		
		if(bcid==null) {
			out.println("<script type='text/javascript'>");
			out.println("alert('You have to Login First!');");
			out.println("location='login.jsp'");
			out.println("</script>");
			
			
			
		}
		try {
		
		List<String> bookedSeatsList = timetableDBUtil.getBookedSeats(bbusNumber,btime,bdate);
		request.setAttribute("bookedSeatsList",bookedSeatsList);
		
		request.setAttribute("bookedSeatsList", bookedSeatsList);
		
         
		}
		catch(Exception e){
			e.printStackTrace();
			System.out.println("nullllllllll");
			
		}
		
		
		RequestDispatcher dis = request.getRequestDispatcher("Booking/Booking.jsp");
		dis.forward(request, response);
		

	        // Retrieve booked seats from the database
	        
	    }
		
 
}
