package Com.customer;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/deletecustomerServlet")
public class deletecustomerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public deletecustomerServlet() {
        super();
       
    }

	


	

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		
		PrintWriter out=response.getWriter();
		response.setContentType("text/html");
		String id = request.getParameter("cusid");
		boolean isTrue;

		isTrue = CustomerDBUtil.deletecustomer(id);

		if (isTrue) {
		    // Check if response is committed
		    if (!response.isCommitted()) {
		    	out.println("<script type='text/javascript'>");
				out.println("alert('Account successfully deleted!');");
				out.println("location='customerinsert.jsp'");
				out.println("</script>");
		        
		    } else {
		        // Log or handle the fact that response is already committed
		    }
		} else {
		    List<Customer> cusDetails = CustomerDBUtil.getcustomerDetails(id);
		    request.setAttribute("cusDetails", cusDetails);

		    // Check if response is committed
		    if (!response.isCommitted()) {
		        RequestDispatcher dispatcher = request.getRequestDispatcher("useraccount.jsp");
		        dispatcher.forward(request, response);
		    } else {
		        // Log or handle the fact that response is already committed
		    }
		}

		
	}

}
