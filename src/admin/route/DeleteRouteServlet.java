package admin.route;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/DeleteRouteServlet")
public class DeleteRouteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String rid = request.getParameter("rid");
		
		boolean isTrue;
		
		isTrue = RouteDBUtil.deleteRoute(rid);
		
		if (isTrue == true) {
			
			List<Route> rteDetails = RouteDBUtil.getRouteDetails(rid);
			request.setAttribute("rteDetails", rteDetails);
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("Route/Route.jsp");
			dispatcher.forward(request, response);
		}
		else {
			
			List<Route> rteDetails = RouteDBUtil.getRouteDetails(rid);
			request.setAttribute("rteDetails", rteDetails);
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("Route/Route.jsp");
			dispatcher.forward(request, response);
		}
	}
}
