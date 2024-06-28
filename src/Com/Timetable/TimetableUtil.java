package Com.Timetable;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.Time;
import java.util.ArrayList;
import java.util.List;

import Com.Booking.DBConnect;



public class TimetableUtil {
	
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	public static List<TimetableEntry> getAllTimetable(){
		
		//object creation using array list
		ArrayList<TimetableEntry> timetableList = new ArrayList<>();
		
		//exception handling
		try {
    		con = DBConnect.getConnection();
			stmt = con.createStatement();
			Class.forName("com.mysql.jdbc.Driver");
			
			//sql query
			String sql = "SELECT * FROM time_table";
			
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
          	  int tid = rs.getInt(1);
          	  int tmid = rs.getInt(2);
          	  String busNum= rs.getString(3);
          	  String date= rs.getString(4);
          	  Time time= rs.getTime(5);
          	  String origin= rs.getString(6);
          	  String destination= rs.getString(7);
          	  double price= rs.getDouble(8);
          	  
          	 //object creation
     		 TimetableEntry t = new TimetableEntry(tid, tmid, busNum, date, time, origin, destination, price);
     		 
    		 timetableList.add(t);
			}
		}
		
		catch(Exception e){
			e.printStackTrace();
		}
		
		return timetableList;
}

	//add bus 
	public static boolean insertbus(int tmid, String tbusNumber, String date, Time time, String origin, String destination, double price) {
	    boolean isSuccess = false;
		
		try {
    		con = DBConnect.getConnection();
			stmt = con.createStatement();
			Class.forName("com.mysql.jdbc.Driver");
			String sql = "INSERT INTO time_table values(0, '"+tmid+"', '"+tbusNumber+"', '"+date+"', '"+time+"', '"+origin+"', '"+destination+"', '"+price+"')";
			int rs = stmt.executeUpdate(sql);
			
	        if (rs > 0) {
	            isSuccess = true;
	        } else {
	            isSuccess = false;
	        }
		
		}catch(Exception e) {
			e.printStackTrace();
		}
	    
	    return isSuccess;
	}
	
	//delete bus 
	public static boolean deleteBus(String tid) {
		
		int convtid = Integer.parseInt(tid);
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "delete from time_table where tid='"+convtid+"'";
			int rs = stmt.executeUpdate(sql);
			
			if (rs > 0) {
	            isSuccess = true;
	        } else {
	            isSuccess = false;
	        }
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
	}
	
	//update timetable
	public static boolean updateTimetable(String tid, String tmid, String tbusNumber, String date, String time, String origin, String destination, String price) {
		
		//exception handling
		try {
			//calling the database
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "update time_table set tbusNumber='"+tbusNumber+"', date='"+date+"', time='"+time+"', origin='"+origin+"', destination='"+destination+"', price='"+price+"'" + "where tid='"+tid+"'";
			int rs = stmt.executeUpdate(sql);
			
			if (rs > 0) {
	            isSuccess = true;
	        } else {
	            isSuccess = false;
	        }
			
		}
		
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
	
	}
	
}
        
