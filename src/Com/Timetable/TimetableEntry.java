package Com.Timetable;

import java.sql.Time;

//class creation
public class TimetableEntry {
	
	private int tid;
	private int tmid;
	private String busNum;
	private String date;
	private Time time;
	private String origin;
	private String destination;
	private double price;
	
	//overloaded constructor
	public TimetableEntry(int tid, int tmid, String busNum, String date, Time time, String origin, String destination, double price) {
		super();
		this.tid = tid;
		this.tmid = tmid;
		this.busNum = busNum;
		this.date = date;
		this.time = time;
		this.origin = origin;
		this.destination = destination;
		this.price = price;
	}
	
	public int getTid() {
		return tid;
	}
	
	public int getTmid() {
		return tmid;
	}
	
	public String getBusNum() {
		return busNum;
	}
	
	public String getDate() {
		return date;
	}
	
	public Time getTime() {
		return time;
	}
	
	public String getOrigin() {
		return origin;
	}
	
	public String getDestination() {
		return destination;
	}
	
	public double getPrice() {
		return price;
	}
}

	
	

