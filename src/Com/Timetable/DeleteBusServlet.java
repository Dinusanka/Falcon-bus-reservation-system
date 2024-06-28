package Com.Timetable;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/DeleteBusServlet")
//inheritance
public class DeleteBusServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String tid = request.getParameter("ttid");
		boolean isTrue;
		
		isTrue = TimetableUtil.deleteBus(tid);
		
		if(isTrue == true) {
			RequestDispatcher dispatcher = request.getRequestDispatcher("Manager/success.jsp");
			dispatcher.forward(request, response);
		}
		else {
			List<TimetableEntry> timetableList = TimetableUtil.getAllTimetable(); 
			request.setAttribute("timetableList", timetableList);
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("Manager/timetable.jsp");
			dispatcher.forward(request, response);
		}
	
	}

}
