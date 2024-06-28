
package Com.Booking;

import java.util.Arrays;
import java.util.List;

public class BookedSeats {
	
	private List<String> bookedSeats;
	 public void setBookedSeats(String bookedSeatsString) {
	        // Split the booked seats string into individual seats
	        String[] seatsArray = bookedSeatsString.split(",");

	        // Convert the array to a List
	        bookedSeats = Arrays.asList(seatsArray);
	    }
	public List<String> getBookedSeats() {
		return bookedSeats;
	}
	


}
