package Com.manager;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/UpdateManagerServlet")
//inheritance
public class UpdateManagerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L; 

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String id = request.getParameter("mid");
		String mname = request.getParameter("mname"); 
		String email = request.getParameter("email");
		String username = request.getParameter("uname");
		String password = request.getParameter("pass");
		
		boolean isTrue;
		
		isTrue = ManagerDBUtil.updatemanager(id, mname, email, password, username);
		
		if(isTrue == true){
			RequestDispatcher dis = request.getRequestDispatcher("Manager/success.jsp");
			dis.forward(request, response);
		}
		else {
			RequestDispatcher dis = request.getRequestDispatcher("Manager/unsuccess.jsp");
			dis.forward(request, response);
		}
	}

}
