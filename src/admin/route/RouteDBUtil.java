package admin.route;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import admin.login.DBConnect;

public class RouteDBUtil {
	
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	/*adding route to the database*/
	
	public static boolean AddRoute(String raid, String origin, String destination, String price) {
		boolean isSuccess = false;
		
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "insert into rute values (0,'"+raid+"','"+origin+"','"+destination+"','"+price+"')";
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
	
	
	
	/*get route details*/
	
    public static List<Route> getRouteDetails(String id) {
        
    	int convertedID = Integer.parseInt(id);
    	
    	ArrayList<Route> rte = new ArrayList<>();
    	
    	try {
    		
    		con = DBConnect.getConnection();
    		stmt = con.createStatement();
    		String sql = "select * from rute";
    		rs = stmt.executeQuery(sql);
    		
    		while(rs.next()) {
    			int rid = rs.getInt(1);
    			int raid = rs.getInt(2);
    			String origin = rs.getString(3);
    			String destination = rs.getString(4);
    			String price = rs.getString(5);
    			
    			Route r = new Route(rid,raid,origin,destination,price);
    			rte.add(r);
    		}
    		
    	}
    	catch(Exception e) {
    		e.printStackTrace();
    	}	
    	return rte;	
    }
    
    
    /*delete route*/
    
    public static boolean deleteRoute(String id) {
    	
    	int convId = Integer.parseInt(id);
    	
    	try {
    		
    		con = DBConnect.getConnection();
    		stmt = con.createStatement();
    		String sql = "delete from rute where rid='"+convId+"'";
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
    
    
    
    /*update route details*/
    
    public static boolean updateRoute(String rid, String raid, String origin, String destination, String price) {
    	boolean isSuccess = false;
    	
    	try {
    		
    		con = DBConnect.getConnection();
    		stmt = con.createStatement();
    		String sql = "update rute set rid='"+rid+"',raid='"+raid+"',origin='"+origin+"',destination='"+destination+"',price='"+price+"'"
    				+ "where rid='"+rid+"'";
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
    

}
