package Com.feedback;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/FeedbackServlet")
//inheritance
public class FeedbackServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
				
		int sid = Integer.parseInt(request.getParameter("sid"));
		int mid = Integer.parseInt(request.getParameter("mid"));
		String reply = request.getParameter("reply");
	
		
		boolean isTrue;
		
		
		isTrue =FeedbackManager.insertfb(sid,mid,reply);
			
			
			if(isTrue==true) {
				
				List<Feedback> feedbackList = FeedbackManager.getAllFeedback();
				
				request.setAttribute("feedbackList", feedbackList);
				request.getRequestDispatcher("Manager/All feedback.jsp").forward(request, response);
				
			}
			else {
				
				request.getRequestDispatcher("unsuccess.jsp").forward(request, response);
				
			}
		
		
		
	}

}
