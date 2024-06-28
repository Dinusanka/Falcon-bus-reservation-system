package Com.Timetable;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/EditBusServlet")
//inheritance
public class EditBusServlet extends HttpServlet {
	
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String tid = request.getParameter("ttid");
		String tmid = request.getParameter("tmid");
		String tbusNumber = request.getParameter("tbusNumber"); 
		String date = request.getParameter("date");
		String time = request.getParameter("time");
		String origin = request.getParameter("origin");
		String destination = request.getParameter("destination");
		String price = request.getParameter("price");
		
		boolean isTrue;
		
		isTrue = TimetableUtil.updateTimetable(tid, tmid, tbusNumber, date, time, origin, destination, price);
		
		if(isTrue == true) {
			RequestDispatcher dis = request.getRequestDispatcher("Manager/success.jsp");
			dis.forward(request, response);
		}
		
		else {
			RequestDispatcher dis = request.getRequestDispatcher("Manager/unsuccess.jsp");
			dis.forward(request, response);
		}
	}

}
