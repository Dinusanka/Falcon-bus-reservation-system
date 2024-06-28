package Com.Driver;

public class issue {
	    private int id;
	    private int sdid;
	    private String type;
	    private String description;
	    private String location;
	    private String date;
	 

	    public issue(int id, int sdid,String type, String description, String location, String date) {
	        this.id = id;
	        this.sdid = sdid;
	        this.type = type;
	        this.description = description;
	        this.location = location;
	        this.date = date;
	       
	    }

		public int getId() {
			return id;
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

		

}
