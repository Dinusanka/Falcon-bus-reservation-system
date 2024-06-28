package Com.Timetable;

import java.io.IOException;

import java.sql.Time;


import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/AddBusServlet")
//inheritance
public class AddBusServlet extends HttpServlet {
	

	private static final long serialVersionUID = 1L;
	
	

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		int tmid = Integer.parseInt(request.getParameter("tmid"));
		String tbusNumber = request.getParameter("tbusNumber");
		String date = request.getParameter("date");
		Time time = Time.valueOf(request.getParameter("time"));
		String origin = request.getParameter("origin");
		String destination = request.getParameter("destination");
		double price = Double.parseDouble(request.getParameter("price"));
		

		boolean isTrue;
		isTrue = TimetableUtil.insertbus(tmid, tbusNumber, date, time, origin, destination, price);
		if(isTrue==true) {
			RequestDispatcher dis = request.getRequestDispatcher("success.jsp");
			dis.forward(request, response);
		}
		
		else {
			RequestDispatcher dis2 = request.getRequestDispatcher("unsuccess.jsp");
			dis2.forward(request, response);

		}
	}
	
}

