package Com.Driver;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/updateDriverServlet")
public class updateDriverServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id=request.getParameter("drid");
		String name=request.getParameter("name");
		String email=request.getParameter("email");
		String contactNumber=request.getParameter("phone");
		String busNumber=request.getParameter("busNumber");
		String licensesNumber=request.getParameter("licensesNumber");
		String Nic=request.getParameter("nic");
		String username=request.getParameter("uid");
		String password=request.getParameter("pass");
		
		boolean isTrue;
		
		isTrue=driverDBUtil.updateDriver(id, name, email, contactNumber, busNumber,licensesNumber, Nic, username, password);
		
		if (isTrue==true) {
			List <driver> drDetails =driverDBUtil.getdriverDetails(id);
			request.setAttribute("drDetails", drDetails);
			
			RequestDispatcher dis=request.getRequestDispatcher("Driver/driveruseraccount.jsp");
			dis.forward(request,response);
		}
		else {
			List <driver> drDetails =driverDBUtil.getdriverDetails(id);
			request.setAttribute("drDetails", drDetails);
			
			RequestDispatcher dis=request.getRequestDispatcher("Driver/driveruseraccount.jsp");
			dis.forward(request,response);
		}
	}

}
