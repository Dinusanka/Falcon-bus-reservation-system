package Com.manager;

//class creation
public class Manager {
	private int mid;
	private String mname;
	private String email;
	private String password;
	private String username;
	
	
	//overloaded constructor
	public Manager(int mid, String mname, String email, String password, String username) {
		this.mid = mid;
		this.mname = mname;
		this.email = email;
		this.password = password;
		this.username = username;
	}

	public int getMid() {
		return mid;
	}

	public String getMname() {
		return mname;
	}

	public String getEmail() {
		return email;
	}

	public String getPassword() {
		return password;
	}

	public String getUsername() {
		return username;
	}

	
	

}
