package Com.Driver;


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


@WebServlet("/driverLoginServlet")
public class driverLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		PrintWriter out=response.getWriter();
		response.setContentType("text/html");
		
		String userName=request.getParameter("uid");
		String password=request.getParameter("psw");

		List<driver>drDetails=driverDBUtil.getdriver(userName);
		HttpSession session = request.getSession();
		
		request.setAttribute("drDetails", drDetails);
		 int retrievedId = drDetails.get(0).getId();
		    String retrievedName = drDetails.get(0).getName();
		    session.setAttribute("retrievedId", retrievedId);
		    session.setAttribute("retrievedName", retrievedName);
	boolean isTrue;
	
	isTrue=driverDBUtil.validate(userName, password);
	if(isTrue==true) {
		
		RequestDispatcher dis =request.getRequestDispatcher("Driver/driveruseraccount.jsp");
		dis.forward(request, response);
	}else {

		out.println("<script type='text/javascript'>");
		out.println("alert('Your username or password is incorrect');");
		out.println("location='login.jsp'");
		out.println("</script>");
	}
	}
}