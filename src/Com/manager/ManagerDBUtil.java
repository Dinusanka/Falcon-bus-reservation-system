package Com.manager;

import java.sql.Connection;

import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import Com.Booking.DBConnect;



public class ManagerDBUtil {

	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	//login validate method
	public static List<Manager> validate(String username, String password){
		//return manager details list
		
		
		//object creation using array list
		ArrayList<Manager> man = new ArrayList<>();
		
		//exception handling
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			//sql query
			String sql = "select * from manager where  password='"+password+"' and username='"+username+"'";
		
			rs = stmt.executeQuery(sql);
			
			if(rs.next()) {
				
				int mid = rs.getInt(1);
				String mname = rs.getString(2);
				String email = rs.getString(3);
				String userU = rs.getString(4);
				String passU = rs.getString(5);
				
				//object creation
				Manager m = new Manager(mid, mname, email, passU, userU);
				man.add(m);
			}
		}
		catch(Exception e){
			e.printStackTrace();
		}
		
		return man;
	}
	
	//manager insertion
	public static boolean insertmanager(String mname, String email, String password, String username) {
		
		boolean isSuccess = false;
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "insert into manager values(1, '"+mname+"', '"+email+"', '"+password+"', '"+username+"')";
			int rs = stmt.executeUpdate(sql);
			
			if(rs > 0) {
				isSuccess = true;
			}
			else {
				isSuccess = false;
			}
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
		
	}
	
	//update manager details
	public static boolean updatemanager(String id, String mname, String email, String password, String username) {
	 
		
		boolean isSuccess = false;
		//exception handling
		try {
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			//sql query
			String sql = "update manager set name='"+mname+"', email='"+email+"', password='"+password+"', username='"+username+"'"
					+ "where mid='"+id+"'";
			
			int rs = stmt.executeUpdate(sql);
			
			if(rs>0) {
				isSuccess = true;
			}
			else { 
				isSuccess = false;
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return isSuccess;
	}
}
