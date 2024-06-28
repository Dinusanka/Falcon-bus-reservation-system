package Com.manager;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/Managerinsert")
//inheritance
public class Managerinsert extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String name= request.getParameter("mname");
		String email = request.getParameter("email");
		String username = request.getParameter("uid");
		String password = request.getParameter("psw");
		
		boolean isTrue;
		
		isTrue = ManagerDBUtil.insertmanager(name, email, password, username);
		
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
