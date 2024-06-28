package Com.Booking;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;



import Com.Payment.DBConnect;

import Com.Booking.Booking; 

public class BookingDBUtil {
	
	
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	

	//insert
	
	public static boolean insertbooking(String selectedSeats, String cid,String busNumber, String origin,String destination, String date, String time) {
		boolean isSuccess = false;
		

		try {
			
			con =DBConnect.getConnection();
			stmt = con.createStatement();
			
			String sql="INSERT INTO booking VALUES(0,'"+cid+"','"+date+"', '"+time+"','"+busNumber+"', '"+origin+"', '"+destination+"','"+selectedSeats+"','Not Paid')";
			
			int rs = stmt.executeUpdate(sql);
			if(rs>0) {
				isSuccess = true;
				
			}
			else {
				isSuccess = false;
				
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		 
		return isSuccess;
		
 	}
//display one booking belongs to one customer
	public static List<Booking> display(String cid,String busNumber1, String origin1,String destination1, String date1, String time1, String selectedSeats ) throws ClassNotFoundException{
		
		
		ArrayList<Booking> booking = new ArrayList<>() ;
		
		
	
		try {
			
			
			con =DBConnect.getConnection();
			stmt = con.createStatement();
			
			
			
			String sql = "SELECT * FROM booking WHERE cid = '"+cid+"' AND busNumber = '"+busNumber1+"'AND date = '"+date1+"' AND time ='"+time1+"'  ";
			

			
			rs = stmt.executeQuery(sql);
		
			
			//getting one row
			 
			if(rs.next()) {
				
				int id1 =rs.getInt(1);
				String date =rs.getString(3);
				String time=rs.getString(4);
				String busNumber=rs.getString(5);
				String origin = rs.getString(6);
				String destination = rs.getString(7);
				String seatNumbers = rs.getString(8);
				String cid1 =rs.getString(2);
				String paymentStatus =rs.getString(9);
				
				Booking b = new Booking(id1,date,time,busNumber,origin,destination,seatNumbers,cid1,paymentStatus);
				
				booking.add(b);
				return booking;
				
				
				
			}
			
			
		}
		catch(Exception e) {
			e.printStackTrace();// Number format ,Null,SQL 
		}
		return booking;
	}
	
	// Update
		static boolean updateBooking(String bid, String seatNumbers)
		{
			 boolean isSuccess = false;
			
			
			try {
				
				con =DBConnect.getConnection();
				stmt = con.createStatement();
				
				String sql="UPDATE booking SET seats='"+seatNumbers+"', paymentStatus='NotPaid' WHERE bid ='"+ bid+"'";
				
				int rs = stmt.executeUpdate(sql);
				if(rs>0)
				{
					isSuccess = true;
					
				}
				else
				{
					isSuccess = false;
					
				}
			}
			catch(Exception e)
			{
				e.printStackTrace();
			}
			
			 
			return isSuccess;
			
	 	}
		
		
		
		
		
		
		public static List<Booking> getupdatedBooking(String bid){
			ArrayList<Booking>  booking =new ArrayList<>();
			
			
			try {
				
				con =DBConnect.getConnection();
				stmt = con.createStatement();
				
				String sql = "SELECT * FROM booking WHERE bid = '"+bid+"'";
				rs = stmt.executeQuery(sql);
				//retriving all rows
				while(rs.next()) {
					int id1 =rs.getInt(1);
					String date =rs.getString(3);
					String time=rs.getString(4);
					String busNumber=rs.getString(5);
					String origin = rs.getString(6);
					String destination = rs.getString(7);
					String seatNumbers = rs.getString(8);
					String cid1 =rs.getString(2);
					String paymentStatus =rs.getString(9);
					Booking b = new Booking(id1,date,time,busNumber,origin,destination,seatNumbers,cid1,paymentStatus);
					
					booking.add(b);
					
				}
				
			}
			catch(Exception e){
				e.printStackTrace();
				
				
			}
			
			return booking;
			
			}
		
		//delete
		public static boolean deleteBooking(String id)
		{
			 boolean isSuccess = false;
			 int convtedID = Integer.parseInt(id);
			
			
			try {
				
				con =DBConnect.getConnection();
				stmt = con.createStatement();
				
				String sql="DELETE FROM booking WHERE bid ='"+convtedID+"'";
				
				int rs = stmt.executeUpdate(sql);
				if(rs>0) {
					isSuccess = true;
					
				}
				else {
					isSuccess = false;
					
				}
			}
			catch(Exception e) {
				e.printStackTrace();
			}
			
			 
			return isSuccess;
			
	 	}
		
//
		public static List<Booking> displayM(String cid ) throws ClassNotFoundException{
			
			
			ArrayList<Booking> booking = new ArrayList<>() ;
			
			
		
			
			
			try {
				
				con = DBConnect.getConnection();
				stmt = con.createStatement();
				String sql = "SELECT * FROM booking";
				rs = stmt.executeQuery(sql);
				
				if (rs.next()) {
					int id1 =rs.getInt(1);
					String cid1 =rs.getString(2);
					String date =rs.getString(3);
					String time=rs.getString(4);
					String busNumber=rs.getString(5);
					String origin = rs.getString(6);
					String destination = rs.getString(7);
					String seatNumbers = rs.getString(8);
					
					String paymentStatus =rs.getString(9);
					
					Booking l = new Booking(id1,date,time,busNumber,origin,destination,seatNumbers,cid1,paymentStatus);
					booking.add(l);
				}
				
			} catch (Exception e) {
				e.printStackTrace();
				
			}
			
			return booking;	
		}
 		
}

		




