package Com.customer;

import java.sql.Connection;

import java.sql.ResultSet;

import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;




public class CustomerDBUtil {
	
	
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	
	
	
	
	public static List<Customer> validate(String username,String password) throws ClassNotFoundException{
		
		
		ArrayList<Customer> cus = new ArrayList<>() ;
		
		
		//db con
		/*String url = "jdbc:mysql://localhost:3306/falcon_bus";
		String user = "root";
		String passw = "Nero@2016";*/
		
		
		
		
		//validate 
		try {
			
			
			con =DBConnect.getConnection();
			stmt = con.createStatement();
			
			//Class.forName("com.mysql.jdbc.Driver");
			//Connection con =DriverManager.getConnection(url, user, passw);
			//Statement stmt = con.createStatement();
			
			String sql = "SELECT * FROM customer WHERE userName = '"+username+"' AND password ='"+password+"' ";
			
			//ResultSet rs = stmt.executeQuery(sql);
			
			rs = stmt.executeQuery(sql);
		
			
			
			 
			if(rs.next()) {
				
				int id =rs.getInt(1);
				String name =rs.getString(2);
				String email=rs.getString(3);
				String phone=rs.getString(4);
				String userU = rs.getString(5);
				String passwU = rs.getString(6);
				
				Customer c = new Customer(id,name,email,phone,userU,passwU);
				
				cus.add(c);
				
				
				
			}
			
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return cus;
		
 		
	}
	
	public static boolean insertcustomer(String name, String email,String phone, String username, String password ) {
		boolean isSuccess = false;
		
		//dbcon
		
		/*String url = "jdbc:mysql://localhost:3306/falcon_bus";
		String user = "root";
		String passw = "Nero@2016";*/
		try {
			/*Class.forName("com.mysql.jdbc.Driver");
			Connection con =DriverManager.getConnection(url, user, passw);
			Statement stmt = con.createStatement();*/
			con =DBConnect.getConnection();
			stmt = con.createStatement();
			
			String sql="INSERT INTO customer VALUES(0,'"+name+"','"+email+"','"+phone+"','"+username+"','"+password+"')";
			
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

	
	public static boolean updatecustomer(String id,String name, String email,String phone, String username, String password)
	{
		 boolean isSuccess = false;
		
		
		try {
			
			con =DBConnect.getConnection();
			stmt = con.createStatement();
			
			String sql="UPDATE customer SET name='"+name+"',email='"+email+"',phonenumber='"+phone+"',userName='"+username+"' WHERE cid ='"+id+"'";
			
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
	public static List<Customer> getcustomerDetails(String Id){
		ArrayList<Customer>  cus =new ArrayList<>();
		int convertedID = Integer.parseInt(Id);
		
		try {
			
			con =DBConnect.getConnection();
			stmt = con.createStatement();
			
			String sql = "SELECT * FROM customer WHERE cid = '"+convertedID+"'";
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				int id = rs.getInt(1);
				String name =rs.getString(2);
				String email=rs.getString(3);
				String phone=rs.getString(4);
				String username = rs.getString(5);
				String password = rs.getString(6);
				Customer c = new Customer(id,name,email,phone,username,password);
				cus.add(c);
			}
			
		}
		catch(Exception e){
			e.printStackTrace();
			
			
		}
		
		return cus;
		
		}
	public static boolean deletecustomer(String id)
	{
		 boolean isSuccess = false;
		 int convtedID = Integer.parseInt(id);
		
		
		try {
			
			con =DBConnect.getConnection();
			stmt = con.createStatement();
			
			String sql="DELETE FROM customer WHERE cid ='"+convtedID+"'";
			
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
	
	
	
	

}
