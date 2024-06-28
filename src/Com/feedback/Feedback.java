package Com.feedback;


//class creation
public class Feedback {
	private int sid;
	private int sdid;
	private String type;
	private String description;
	private String location;
	private String date;
	private int mid;
	private String reply;
	
	//overloaded constructor
	public Feedback(int sid, int sdid, String type, String description, String location, String date, int mid, String reply) {
		super();
		this.sid = sid;
		this.sdid = sdid;
		this.type = type;
		this.description = description;
		this.location = location;
		this.date = date;
		this.mid = mid;
		this.reply = reply;
	}
	public int getSid() {
		return sid;
	}
	public int getSdid() {
		return sdid;
	}
	public String getType() {
		return type;
	}
	public String getDescription() {
		return description;
	}
	public String getLocation() {
		return location;
	}
	public String getDate() {
		return date;
	}
	public int getMid() {
		return mid;
	}
	public String getReply() {
		return reply;
	}

	
}



