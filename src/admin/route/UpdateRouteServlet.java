package admin.route;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/UpdateRouteServlet")
public class UpdateRouteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String rid = request.getParameter("rid");
		String raid = request.getParameter("raid");
		String origin = request.getParameter("origin");
		String destination = request.getParameter("destination");
		String price = request.getParameter("price");
		
boolean isTrue;
		
		isTrue = RouteDBUtil.updateRoute(rid, raid, origin, destination, price);
		
		if(isTrue == true) {
			
			List <Route> rteDetails = RouteDBUtil.getRouteDetails(rid);
			request.setAttribute("rteDetails", rteDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("Route/Route.jsp");
			dis.forward(request, response);
		}else {
			List <Route> rteDetails = RouteDBUtil.getRouteDetails(rid);
			request.setAttribute("rteDetails", rteDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("Route/Route.jsp");
			dis.forward(request, response);
		}
		
	}

}
