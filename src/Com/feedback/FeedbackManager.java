package Com.feedback;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class FeedbackManager {
	private static final String url = "jdbc:mysql://localhost:3306/falconbus";
	private static final String username = "root";
	private static final String password = "Nero@2016";
	
	
	public static void submitFeedback(int mid , String cont) {
		try(Connection conn = DriverManager.getConnection(url, username, password);
				PreparedStatement stmt = conn.prepareStatement("insert into feedback values ('"+mid+"', '"+cont+"',1)")){
			
				/**stmt.setInt(1, feedback.getUserId());
				stmt.setString(2, feedback.getContent());
				stmt.setBoolean(3, feedback.isReplied());
				
				stmt.executeUpdate();*/
			
			
		} 
		catch (SQLException e) {
			e.printStackTrace();
		}
		
	}
	public static List<Feedback> getAllFeedback(){
		
		//object creation using array list
		List<Feedback> feedbackList = new ArrayList<>();
        try (Connection conn = DriverManager.getConnection(url, username, password);
                PreparedStatement stmt = conn.prepareStatement("SELECT * FROM issue");
                ResultSet resultSet = stmt.executeQuery()) {

               while (resultSet.next()) {
            	   	 int sid = resultSet.getInt(1);
            	  	 int sdid= resultSet.getInt(2);
            	  	 String type= resultSet.getString(3);
            		 String description= resultSet.getString(4);
            		 String location= resultSet.getString(5);
            		 String date= resultSet.getString(6);
            		 int mid= resultSet.getInt(7);
            		 String reply= resultSet.getString(8);
            		 
            		 
            		 //object creation
            		 Feedback s = new Feedback (sid, sdid,  type,  description,  location,  date,  mid,  reply);
            		 feedbackList.add(s);
            		 
            		 
               }
           } catch (SQLException e) {
               e.printStackTrace();
           }

           return feedbackList;
       }

       public static boolean insertfb(int sid, int mid, String content) {
    	   
    	   boolean isSuccess = false;
    	   
    	   
           try (Connection conn = DriverManager.getConnection(url, username, password);
                PreparedStatement stmt = conn.prepareStatement("UPDATE issue SET smid ='"+mid+"', reply = '"+content+"' WHERE sid = '"+sid+"'")) {

               stmt.executeUpdate();

              int resultSet = stmt.executeUpdate();
              
              if(resultSet>0) {
            	  
            	  
            	  
            	  isSuccess = true;
              }
              
              
              else {
            	  isSuccess = false;
              }
              
              
              
              
              
           }
           catch (SQLException e) {
               e.printStackTrace();
           }
		return isSuccess;
	}
}
