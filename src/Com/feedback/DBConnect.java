package Com.feedback;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnect {

	private static String url = "jdbc:mysql://localhost:3306/falconbus"; //database url
	private static String username = "root"; //data name
	private static String password = "26Asanga$"; //database password
	
	public static Connection con;
	
	public static Connection getConnection() {
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			
			con = DriverManager.getConnection(url, username, password);
		}
		catch (Exception e){
			System.out.println("Database connection is not success!");
		}
		
		return con;
		
	}
}
