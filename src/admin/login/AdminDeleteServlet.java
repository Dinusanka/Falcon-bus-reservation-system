package admin.login;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/AdminDeleteServlet")
public class AdminDeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("aid");
		
		boolean isTrue;
		
		isTrue = AdminDBUtil.deleteAdmin(id);
		
		if (isTrue == true) {
			RequestDispatcher dispatcher = request.getRequestDispatcher("Admin/Login.jsp");
			dispatcher.forward(request, response);
		}
		else {
			
			List<Admin> admDetails = AdminDBUtil.getAdminDetails(id);
			request.setAttribute("admDetails", admDetails);
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("Admin/Profile.jsp");
			dispatcher.forward(request, response);
		}
	}

}
