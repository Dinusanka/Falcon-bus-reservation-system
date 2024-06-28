package Com.Search;

public class timetable {

	private String origin ;
	 private String destination;
	 private String date ;
	 private String busNumber;
	 private String time;

	private String price;
	
	
	
	 public String getPrice() {
			return price;
		}

	public String getTime() {
		return time;
	}
	
	public String getBusNumber() {
		return busNumber;
	}

	public String getOrigin() {
		return origin;
	}
	public String getDestination() {
		return destination;
	}
	public String getDate() {
		return date;
	}

	
	
	
	public timetable(String origin, String destination, String date, String busNumber, String time,String price) {
		super();
		this.origin = origin;
		this.destination = destination;
		this.date = date;
		this.busNumber = busNumber;
		this.time = time;
		this.price = price;
	}
}
