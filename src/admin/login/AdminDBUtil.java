package admin.login;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;


public class AdminDBUtil {
	
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	/*validate password and username*/
	
	public static List<Admin> validate(String userName, String password){
		ArrayList<Admin> adm = new ArrayList<>();
		
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from admin where userName = '"+userName+"' and password = '"+password+"'";
			rs = stmt.executeQuery(sql);
			
			if(rs.next()) {
				int aid = rs.getInt(1);
				String name = rs.getString(2);
				String contact= rs.getString(3);
				String email = rs.getString(4);
				String userU = rs.getString(5);
				String passU = rs.getString(6);
				
				Admin a = new Admin(aid, name, contact, email, userU, passU);
				adm.add(a);
			}
			
		} catch(Exception e) {
			e.printStackTrace();
		}
				
		return adm;
	}
	
	
	/*update admin profile*/
	
    public static boolean updateProfile(String aid, String name, String contact, String email, String username, String password) {
    	boolean isSuccess = false;
    	
    	try {
    		
    		con = DBConnect.getConnection();
    		stmt = con.createStatement();
    		String sql = "update admin set name='"+name+"',contact='"+contact+"',email='"+email+"',username='"+username+"',password='"+password+"'"
    				+ "where aid='"+aid+"'";
    		int rs = stmt.executeUpdate(sql);
    		
    		if(rs > 0) {
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
    
    
    /*get admin details*/
    
    public static List<Admin> getAdminDetails(String Id) {
    
    	int convertedID = Integer.parseInt(Id);
    	
    	ArrayList<Admin> adm = new ArrayList<>();
    	
    	try {
    		
    		con = DBConnect.getConnection();
    		stmt = con.createStatement();
    		String sql = "select * from admin where aid='"+convertedID+"'";
    		rs = stmt.executeQuery(sql);
    		
    		while(rs.next()) {
    			int id = rs.getInt(1);
    			String name = rs.getString(2);
    			String contact = rs.getString(3);
    			String email = rs.getString(4);
    			String username = rs.getString(5);
    			String password = rs.getString(6);
    			
    			Admin a = new Admin(id,name,contact,email,username,password);
    			adm.add(a);
    		}
    		
    	}
    	catch(Exception e) {
    		e.printStackTrace();
    	}	
    	return adm;	
    }
    
    
    
    /*delete admin account*/
    
    
    public static boolean deleteAdmin(String id) {
    	
    	int convId = Integer.parseInt(id);
    	
    	try {
    		
    		con = DBConnect.getConnection();
    		stmt = con.createStatement();
    		String sql = "delete from admin where aid='"+convId+"'";
    		int r = stmt.executeUpdate(sql);
    		
    		if (r > 0) {
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
	
    
    /*create admin account*/
    
	public static boolean InsertAdmin(String name, String contact, String email, String username, String password) {
		boolean isSuccess = false;
		
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "insert into admin values (0,'"+name+"','"+contact+"','"+email+"','"+username+"','"+password+"')";
			int rs = stmt.executeUpdate(sql);
			
			if(rs > 0) {
				isSuccess = true;
			} else {
				isSuccess = false;
			}
			
		} catch(Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
	}
    
	
}
