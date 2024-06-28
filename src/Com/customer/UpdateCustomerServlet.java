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

/**
 * Servlet implementation class UpdateCustomerServlet
 */
@WebServlet("/UpdateCustomerServlet")
public class UpdateCustomerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public UpdateCustomerServlet() {
        super();
  
    }


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


		
		PrintWriter out=response.getWriter();
		response.setContentType("text/html");
		String id = request.getParameter("cusid");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String username = request.getParameter("uname");
		String password = request.getParameter("pass");
		
		 if (name.isEmpty() || email.isEmpty() || phone.isEmpty() || username.isEmpty() || password.isEmpty()) {
	            out.println("<script type='text/javascript'>");
	            out.println("alert('Please fill in all fields');");
	            out.println("location='customerinsert.jsp'");
	            out.println("</script>");
	            return; // Stop further processing if validation fails
	        }

	      
		
		boolean isUTrue;
		
		isUTrue = CustomerDBUtil.updatecustomer(id,name, email, phone, username, password);
		
		if(isUTrue == true) {
			
			
			List<Customer> cusDetails = CustomerDBUtil.getcustomerDetails(id);
			request.setAttribute("cusDetails", cusDetails);
			RequestDispatcher dis = request.getRequestDispatcher("useraccount.jsp");
			dis.forward(request, response);
		}
		else {
			
			out.println("<script type='text/javascript'>");
			out.println("alert('Account Update unsuccessful!');");
			out.println("location='useraccount.jsp'");
			out.println("</script>");
			
		}
		 
		
	}

	
}
