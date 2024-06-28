package Com.customer;

import java.io.IOException;
import java.util.List;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		PrintWriter out=response.getWriter();
		response.setContentType("text/html");
		
		String username1 = request.getParameter("uid");
		String password1 = request.getParameter("psw");
	
		try {
			List<Customer>cusDetails = CustomerDBUtil.validate(username1, password1);
			HttpSession session = request.getSession();
			request.setAttribute("cusDetails", cusDetails);
			 int retrievedId = cusDetails.get(0).getId();
             session.setAttribute("retrievedId", retrievedId);
			
			
		}
		catch(Exception e){
			e.printStackTrace();
			
			
		}
		try {
			if(CustomerDBUtil.validate(username1, password1).isEmpty()) {
				out.println("<script type='text/javascript'>");
				out.println("alert('Your username or password is incorrect');");
				out.println("location='login.jsp'");
				out.println("</script>");
				
				
				
			}
			else {
				
				RequestDispatcher dis = request.getRequestDispatcher("home/home.jsp");
				dis.forward(request, response);
				
			}
		} catch (ClassNotFoundException e) {
			
			e.printStackTrace();
		}
		
			
		
		
		
		
	}
}
		
		
		
		
		
		



