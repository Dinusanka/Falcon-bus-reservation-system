package Com.Driver;
public class ContactUs {
      
	private int ctid;
	private String Name;
	private String email;
	private String phone;
	private String message;
	public ContactUs(int ctid, String name, String email, String phone, String message) {
		
		this.ctid = ctid;
		this.Name = name;
		this.email = email;
		this.phone = phone;
		this.message = message;
	}
	public int getCtid() {
		return ctid;
	}
	public String getName() {
		return Name;
	}
	public String getEmail() {
		return email;
	}
	public String getPhone() {
		return phone;
	}
	public String getMessage() {
		return message;
	}
	
	
}
