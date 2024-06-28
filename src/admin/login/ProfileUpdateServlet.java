package admin.login;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/ProfileUpdateServlet")
public class ProfileUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("aid");
		String name = request.getParameter("name");
		String contact = request.getParameter("contact");
		String email = request.getParameter("email");
		String username = request.getParameter("uname");
		String password = request.getParameter("pass");
		
		boolean isTrue;
		
		isTrue = AdminDBUtil.updateProfile(id, name, contact, email, username, password);
		
		if(isTrue == true) {
			
			List <Admin> admDetails = AdminDBUtil.getAdminDetails(id);
			request.setAttribute("admDetails", admDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("Admin/Profile.jsp");
			dis.forward(request, response);
		}else {
			List <Admin> admDetails = AdminDBUtil.getAdminDetails(id);
			request.setAttribute("admDetails", admDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("Admin/Profile.jsp");
			dis.forward(request, response);
		}
	}

}



