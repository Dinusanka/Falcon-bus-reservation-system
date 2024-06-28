package Com.Driver;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/issueInsert")
public class issueInsert extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        // Get form data
        String id = request.getParameter("id");
        String type = request.getParameter("type");
        String description = request.getParameter("description");
        String location = request.getParameter("location");
        String date = request.getParameter("date");
       
        
        boolean isTrue;
        

        isTrue=driverDBUtil.insertIssues(id, type, description, location, date);
        
        if(isTrue==true) {
        	 out.println("<script type='text/javascript'>");
      		out.println("alert('Form is submitted successfully');");
      		out.println("location='Driver/driverReportIssues.jsp'");
      		out.println("</script>");

        	
        }
        else {
        	RequestDispatcher dis2=request.getRequestDispatcher("unsuccess.jsp");
        	dis2.forward(request, response);
        	
        }
	}

}
