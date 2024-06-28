package Com.Timetable;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/TimetableServlet")
public class TimetableServlet extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String tmid1 = request.getParameter("tmid");
		request.setAttribute("tmid", tmid1);
		
		//exceptions handling
		try {
		List<TimetableEntry> timetableList = TimetableUtil.getAllTimetable();
		request.setAttribute("timetableList", timetableList);
		
		}catch(Exception e){
			e.printStackTrace();
		}
			
		RequestDispatcher dis = request.getRequestDispatcher("Manager/timetable.jsp");
		dis.forward(request, response);


	}
}
