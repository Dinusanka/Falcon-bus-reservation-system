package admin.login;

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
 * Servlet implementation class AdminLoginServlet
 */
@WebServlet("/AdminLoginServlet")
public class AdminLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		PrintWriter out=response.getWriter();
		response.setContentType("text/html");
		
		
		String userName = request.getParameter("uid");
		String password = request.getParameter("pass");
		
		try {
			List <Admin> admDetails = AdminDBUtil.validate(userName, password);
			request.setAttribute("admDetails", admDetails);
			if(admDetails != null && !admDetails.isEmpty()) {
				
				
				
				RequestDispatcher dis1 = request.getRequestDispatcher("Admin/Profile.jsp");
				dis1.forward(request, response);
				
				
			}
			else {
				
				out.println("<script type='text/javascript'>");
				out.println("alert('Your username or password is incorrect');");
				out.println("location='Admin/Login.jsp'");
				out.println("</script>");
				
				
			}
			
		}
			
		catch(Exception e) {
			e.printStackTrace();
		}
		
	
	}
}
