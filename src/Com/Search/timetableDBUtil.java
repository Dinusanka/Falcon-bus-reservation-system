package Com.Search;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;




public class timetableDBUtil {
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
public static List<timetable> search(String origin,String destination, String date) throws ClassNotFoundException{
		
		
		ArrayList<timetable> time = new ArrayList<>() ;
		
		
	
		try {
			
			
			con =DBConnect.getConnection();
			stmt = con.createStatement();
			
		
			
			String sql = "SELECT * FROM time_table WHERE origin = '"+origin+"' AND destination ='"+destination+"' AND date ='"+date+"'";
			
			
			
			rs = stmt.executeQuery(sql);
		
			
			
			 
			while(rs.next()) {
				
			
				String busNumber =rs.getString(3);
				String date1=rs.getString(4);
				String time1=rs.getString(5);
				String origin1 = rs.getString(6);
				String destination1 = rs.getString(7);
				String price = rs.getString(8);
				timetable t = new timetable(busNumber,date1,time1, origin1, destination1, price);
				
				time.add(t);
				
				
				
			}
			
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return time;
		
 		
	}
	

	public static List<String> getBookedSeats(String bbusNumber, String btime, String bdate) throws SQLException {
    List<String> bookedSeatsList = new ArrayList<>();

  

        // Prepare and execute the SQL query
        String sql = "SELECT seats FROM booking WHERE busNumber ='"+bbusNumber+"'AND time='"+btime+"'AND date='"+bdate+"'"; // Adjust the table and column names
       
        rs = stmt.executeQuery(sql);

        // Retrieve booked seats from the result set
        while (rs.next()) {
            String bookedSeatsFromDB = rs.getString(1);
            // Split the booked seats string into individual seats
            String[] seatsArray = bookedSeatsFromDB.split(",");
            bookedSeatsList .addAll( Arrays.asList(seatsArray));
        }

   

    return bookedSeatsList;
}

}
