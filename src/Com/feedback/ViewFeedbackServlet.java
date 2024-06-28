package Com.feedback;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ViewFeedbackServlet")
//inheritance
public class ViewFeedbackServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String mid1 = request.getParameter("mid");
		request.setAttribute("mid1", mid1);
		
		List<Feedback> feedbackList = FeedbackManager.getAllFeedback();
		
		request.setAttribute("feedbackList", feedbackList);
		request.getRequestDispatcher("Manager/All feedback.jsp").forward(request, response);
	}

}
