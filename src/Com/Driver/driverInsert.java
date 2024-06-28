package Com.Driver;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/driverInsert")
public class driverInsert extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out=response.getWriter();
		response.setContentType("text/html");
		
		String name=request.getParameter("name");
		String email=request.getParameter("email");
		String contactNumber=request.getParameter("phone");
		String busNumber=request.getParameter("busNumber");
		String LicensesNumber=request.getParameter("Licenses");
		String NIC=request.getParameter("nic");
		String Username=request.getParameter("uid");
		String password=request.getParameter("pswd");
		
		
		boolean isTrue;
		
		
		isTrue=driverDBUtil.insertDriver(name, email, contactNumber,busNumber, LicensesNumber, NIC, Username, password);
		 
		if(isTrue==true) {
			RequestDispatcher dis=request.getRequestDispatcher("login.jsp");
			dis.forward(request, response);
		}else {
			out.println("<script type='text/javascript'>");
			out.println("alert('Registration Unsuccessful!');");
			out.println("location='Driver/driverInsert.jsp'");
			out.println("</script>");
		}
		
	}

}
