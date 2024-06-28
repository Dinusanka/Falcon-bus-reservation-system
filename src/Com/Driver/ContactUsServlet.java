package Com.Driver;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/ContactUsServlet")
public class ContactUsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        
		// Get form data
        String name = request.getParameter("cname");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String message = request.getParameter("message");

boolean isTrue;
       
        isTrue=driverDBUtil.insertcontactUs(name, email, phone,message);
        
        if(isTrue==true) {
        	 out.println("<script type='text/javascript'>");
      		out.println("alert('Thank you.We will look forward to you!.Have a nice day.');");
      		out.println("location='home/home.jsp'");
      		out.println("</script>");

        	
        }
        else {
        	RequestDispatcher dis2=request.getRequestDispatcher("unsuccess.jsp");
        	dis2.forward(request, response);
        	
        }
	}
	}


