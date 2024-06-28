package Com.Driver;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class driverDBUtil {
	
	private static boolean isSuccess;
	private static Connection con=null;
	private static Statement stmt=null;
	private static ResultSet rs=null;
	// login validation
	public static boolean validate(String uid, String pass) {
		try {
			con=DBConnect.getConnection();
			stmt=con.createStatement();
			String sql="select * from driver where username='"+uid+"' and password='"+pass+"'";
		    rs=stmt.executeQuery(sql);
			if(rs.next()) {
				isSuccess=true;
			}
			else {
				isSuccess=false;
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return isSuccess;
	}
	// get information for profile
	public static List<driver>getdriver(String userName){
		ArrayList<driver>driver=new ArrayList<>();
		
		try {
			con=DBConnect.getConnection();
			stmt=con.createStatement();
			String sql="select * from driver where username = '"+userName+"'";
			rs=stmt.executeQuery(sql);
			
			while(rs.next()) {
				int id=rs.getInt(1);
				String name=rs.getString(2);
				String email=rs.getString(3);
				String contactnumber=rs.getString(4);
				String busNumber=rs.getString(5);
				String licenseNumber=rs.getString(6);
				String Nic=rs.getString(7);
				String username=rs.getString(8);
				String password=rs.getString(9);
				
				driver dr= new driver(id,name,email,contactnumber,busNumber,licenseNumber,Nic,username,password);
				driver.add(dr);
			}
			
		}catch(Exception e) {
			
		}
		return driver;
	}
		// driver Registration
	public static boolean insertDriver(String name, String email,String contactnumber,String busNumber, String licenseNumber,String Nic,String username,String password) {
    
		
				
				try {
				
			       con=DBConnect.getConnection();
			       stmt=con.createStatement();
					String sql="Insert into driver values(0,'"+name+"','"+email+"','"+contactnumber+"',' ','"+licenseNumber+"','"+Nic+"','"+username+"','"+password+"')";
					int rs=stmt.executeUpdate(sql);
					
					if(rs>0) {
						isSuccess=true;
					}else {
					    isSuccess=false;	
					}
				}
				catch(Exception e) {
					e.printStackTrace();
				}
		
		return isSuccess;
}
	public static boolean updateDriver(String id, String name, String email,String contactNumber,String busNumber,String licensesNumber,String Nic,String username,String password){
		
		
		
		try {
			
			con=DBConnect.getConnection();
			stmt=con.createStatement();
			String sql="UPDATE driver set name='"+name+"',email='"+email+"',phone='"+contactNumber+"',busNumber='"+busNumber+"',licenNumber='"+licensesNumber+"',Nic='"+Nic+"',username='"+username+"',password='"+password+"'WHERE did='"+id+"'";
			int rs=stmt.executeUpdate(sql);
			
			if(rs>0) {
				isSuccess=true;
			}else {
				isSuccess=false;
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
	}
	
	public static List<driver> getdriverDetails(String Id){
		
		int convertedID=Integer.parseInt(Id); //converting string id above to an integer. as we initialised ID as an integer
		
		ArrayList<driver> dr=new ArrayList<>();
		
		try {
			con=DBConnect.getConnection();
			stmt=con.createStatement();
			String sql="select * from driver where did='"+convertedID+"'";
			rs=stmt.executeQuery(sql);
			
			while(rs.next()) {
				int id=rs.getInt(1);
				String name=rs.getString(2);
				String email=rs.getString(3);
				String contactnumber=rs.getString(4);
				String busNumber=rs.getString(5);
				String licenseNumber=rs.getString(6);
				String Nic=rs.getString(7);
				String username=rs.getString(8);
				String password=rs.getString(9);
				
				driver d=new driver(id,name,email,contactnumber,busNumber,licenseNumber,Nic,username,password);
				dr.add(d);
				
			}
			
			
		}catch(Exception e) {
			e.printStackTrace();;
		}
		
		return dr;
		
	}
	
	public static boolean deleteDriver(String id) {
		
		
		int convID=Integer.parseInt(id);
		 try {
			 con=DBConnect.getConnection();
			stmt=con.createStatement();
			String sql="delete from driver where did='"+convID+"'";
			int r=stmt.executeUpdate(sql);
			
			if(r>0) {
				isSuccess=true;
			}
			else {
				isSuccess=false;
			}
			
		 }catch(Exception e) {
			 e.printStackTrace();
		 }
	
		return isSuccess;
	}
	public static boolean insertIssues(String id,String type, String description, String location,String date) {
		
        
        try {
        	con=DBConnect.getConnection();
			stmt=con.createStatement();
			String sql = "Insert into issue values (0,'"+id+"','"+type+"','"+description+"','"+location+"','"+date+"',0,'')";
			int rs=stmt.executeUpdate(sql);
			if(rs>0) {
				isSuccess=true;
			}
			else {
				isSuccess=false;
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return isSuccess;
	}
public static boolean insertcontactUs (String name, String email,String phone,String message) {
		
        
        try {
        	con=DBConnect.getConnection();
			stmt=con.createStatement();
			String sql = "Insert into contactus values (0,'"+name+"','"+email+"','"+phone+"','"+message+"')";
			int rs=stmt.executeUpdate(sql);
			if(rs>0) {
				isSuccess=true;
			}
			else {
				isSuccess=false;
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return isSuccess;
	}
public static boolean insertdetails(String busID,String busNumber,String Capacity,String Manufacturer,String Model,String YearOfManufacture) {
	
    
    try {
    	con=DBConnect.getConnection();
		stmt=con.createStatement();
		String sql = "Insert into bus values (0,'"+busNumber+"','"+Capacity+"','"+Manufacturer+"','"+Model+"','"+YearOfManufacture+"')";
		int rs=stmt.executeUpdate(sql);
		if(rs>0) {
			isSuccess=true;
		}
		else {
			isSuccess=false;
		}
	}
	catch(Exception e) {
		e.printStackTrace();
	}
	return isSuccess;
}


}




