package Com.Driver;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/busInsertServlet")
public class busInsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out=response.getWriter();
		response.setContentType("text/html");
		HttpSession session = request.getSession();
		String userNam = (String) session.getAttribute("retrievedName");
		String busID= request.getParameter("busID");
		String busNumber=request.getParameter("busNumber");
		String Capacity=request.getParameter("Capacity");
		String Manufacturer=request.getParameter("Manufacturer");
		String Model=request.getParameter("Model");
		String YearOfManufacture=request.getParameter("YearOfManufacture");
		
		boolean isTrue;
		isTrue=driverDBUtil.insertdetails(busID,busNumber,Capacity,Manufacturer,Model,YearOfManufacture);
		
		if(isTrue==true) {
			out.println("<script type='text/javascript'>");
			out.println("alert('Bus Registration Successful!');");
			out.println("location='Driver/busInsert.jsp'");
			out.println("</script>");
		}else {
			out.println("<script type='text/javascript'>");
			out.println("alert('Bus Registration Unsuccessful!');");
			out.println("location='Driver/busInsert.jsp'");
			out.println("</script>");
	}

}
}