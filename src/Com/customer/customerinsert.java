package Com.customer;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/customerinsert")
public class customerinsert extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public customerinsert() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		PrintWriter out=response.getWriter();
		response.setContentType("text/html");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String username = request.getParameter("uid");
		String password = request.getParameter("psw");
		 if (name.isEmpty() || email.isEmpty() || phone.isEmpty() || username.isEmpty() || password.isEmpty()) {
	            out.println("<script type='text/javascript'>");
	            out.println("alert('Please fill in all fields');");
	            out.println("location='customerinsert.jsp'");
	            out.println("</script>");
	            return; // Stop further processing if validation fails
	        }

	        // Password validation
	        if (!isPasswordValid(password)) {
	            out.println("<script type='text/javascript'>");
	            out.println("alert('Password must contain at least one uppercase letter, one lowercase letter, one digit, and one special character.');");
	            out.println("location='customerinsert.jsp'");
	            out.println("</script>");
	            return; // Stop further processing if password validation fails
	        }
		
		boolean isTrue;
		
		isTrue = CustomerDBUtil.insertcustomer(name, email, phone, username, password);
		
		if(isTrue == true) {
			RequestDispatcher dis = request.getRequestDispatcher("login.jsp");
			dis.forward(request, response);
		}
		else {
			out.println("<script type='text/javascript'>");
			out.println("alert('Registration Not Successful!');");
			out.println("location='customerinsert.jsp'");
			out.println("</script>");
			
		}
		
		
	}
	 private boolean isPasswordValid(String password) {
	        
	        String regex = "^(?=.*[a-z])(?=.*[A-Z])(?=.*\\d)(?=.*[@$!%*?&])[A-Za-z\\d@$!%*?&]+$";
	        return password.matches(regex);
	    }

}
