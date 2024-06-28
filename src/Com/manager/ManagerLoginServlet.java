package Com.manager;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Com.Timetable.TimetableEntry;
import Com.Timetable.TimetableUtil;
import Com.feedback.Feedback;
import Com.feedback.FeedbackManager;

/**
 * Servlet implementation class ManagerLoginServlet
 */
@WebServlet("/ManagerLoginServlet")
public class ManagerLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		
		
		PrintWriter out=response.getWriter();
		response.setContentType("text/html");
		String username = request.getParameter("uid");
		String password = request.getParameter("pass");
		
		try {
			List<Manager>manDetails = ManagerDBUtil.validate(username, password);
			request.setAttribute("manDetails", manDetails);
		if(manDetails != null && !manDetails.isEmpty()) {
			try {
				List<Feedback>feedbackList =FeedbackManager.getAllFeedback();
				request.setAttribute("feedbackList", feedbackList);
			} 
			catch(Exception e) {
				e.printStackTrace();
			}
		
			
			try {
				List<TimetableEntry>timetableList =TimetableUtil.getAllTimetable();
				request.setAttribute("timetableList", timetableList);
			}
			catch(Exception e) {
				e.printStackTrace();
			}
			
			RequestDispatcher dis1 = request.getRequestDispatcher("Manager/useraccount.jsp");
			dis1.forward(request, response);
			
			
		}
		else {
			
			out.println("<script type='text/javascript'>");
			out.println("alert('Your username or password is incorrect');");
			out.println("location='Manager/login.jsp'");
			out.println("</script>");
			
			
		}
		
		
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		
		
		
	}

}