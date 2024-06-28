package admin.login;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/AdminInsertServlet")
public class AdminInsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = request.getParameter("name");
		String contact = request.getParameter("contact");
		String email = request.getParameter("email");
		String username = request.getParameter("uid");
		String password = request.getParameter("psw");
		
		boolean isTrue;
		
		isTrue = AdminDBUtil.InsertAdmin(name, contact, email, username, password);
		
		if(isTrue == true) {
			RequestDispatcher dis = request.getRequestDispatcher("Manager/success.jsp");
			dis.forward(request, response);
			
		} else {
			RequestDispatcher dis2 = request.getRequestDispatcher("Manager/unsuccess.jsp");
			dis2.forward(request, response);
		}
	}

}
