package Com.Search;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;






@WebServlet("/SearchServlet")
public class SearchServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public SearchServlet() {
        super();
        
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

		PrintWriter out=response.getWriter();
		response.setContentType("text/html");
		String origin = request.getParameter("origin");
		String destination = request.getParameter("destination");
		String date = request.getParameter("date");
		
		
		try {
			
			
			List<timetable>timetableDetails = timetableDBUtil.search(origin, destination,date);
			
			request.setAttribute("timetableDetails",timetableDetails);
			
			
		
			
		}
		catch(Exception e){
			e.printStackTrace();
			System.out.println("nullllllllll");
			
		}
		
		

		
	
		try {
			if(timetableDBUtil.search(origin, destination,date).isEmpty()) {
				out.println("<script type='text/javascript'>");
				out.println("alert('Result Not Found!');");
				out.println("location='home/home.jsp'");
				out.println("</script>");
			}
			else {
				RequestDispatcher dis = request.getRequestDispatcher("home/timetableshow.jsp");
				dis.forward(request, response);
				
			}
		} catch (ClassNotFoundException e) {
			
			e.printStackTrace();
		}
		

	     
	        
	    }
		
 
		
		
		
		
	}

	


