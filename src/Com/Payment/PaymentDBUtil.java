package Com.Payment;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

import Com.Booking.Mybooking;
import Com.Payment.DBConnect;
import Com.customer.Customer; 

public class PaymentDBUtil {
	
	
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;

	
	
	public static boolean insertpayment(String cid, String bid,String cardHolderName,String cardNumber,String expiryDate,String cvv,String price) {
		boolean isSuccess = false;
		

		try {
			
			con =DBConnect.getConnection();
			stmt = con.createStatement();
			
			String sql="INSERT INTO payment VALUES(0,'"+cid+"','"+bid+"','"+cardHolderName+"','"+cardNumber+"','"+expiryDate+"','"+cvv+"','"+price+"','Paid')";
			
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


	public static List<Mybooking> dm(String cid) throws ClassNotFoundException{
		
		
		ArrayList<Mybooking> cus = new ArrayList<>() ;
		
		
		int convertedID = Integer.parseInt(cid);
		
		
		
		try {
			
			
			con =DBConnect.getConnection();
			stmt = con.createStatement();
			
			
			
			String sql = "SELECT * FROM booking WHERE cid = '"+convertedID+"'";
			
			
			
			rs = stmt.executeQuery(sql);
		
			
			
			 
			while (rs.next()) {
				int id1 =rs.getInt(1);
				String cid1 =rs.getString(2);
				String date =rs.getString(3);
				String time=rs.getString(4);
				String busNumber=rs.getString(5);
				String origin = rs.getString(6);
				String destination = rs.getString(7);
				String seatNumbers = rs.getString(8);
				
				String paymentStatus =rs.getString(9);
				
			 Mybooking c = new Mybooking(id1,date,time,busNumber,origin,destination,seatNumbers,cid1,paymentStatus);
				
				cus.add(c);
				
				
				
			}
			
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return cus;
		
 		
	}

}


