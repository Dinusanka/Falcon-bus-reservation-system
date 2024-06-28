package Com.Driver;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/ResetPasswordServlet")
public class ResetPasswordServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// Retrieve the token from the URL 
        String token = request.getParameter("token");
        
     // Validate the token 
        if (isValidToken(token)) {
          
        	RequestDispatcher dis2=request.getRequestDispatcher("resetPassword.jsp");
        	dis2.forward(request, response);
        } else {
           
            response.sendRedirect("tokenInvalid.jsp");
        }
    }
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// Retrieve the new password and confirm password from the form
        String newPassword = request.getParameter("newPassword");
        String confirmPassword = request.getParameter("confirmPassword");

    
        
        if (newPassword.equals(confirmPassword)) {
            
            // Redirect to a password reset success page
            response.sendRedirect("driverLogin.jsp");
            
        } else {
            // Passwords do not match, show an error message
            request.setAttribute("errorMessage", "Passwords do not match.");
        	RequestDispatcher dis2=request.getRequestDispatcher("resetPassword.jsp");
        	dis2.forward(request, response);

        }
    }

    private boolean isValidToken(String token) {
     
        return true; 
	}

}
