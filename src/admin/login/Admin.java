package admin.login;

public class Admin {
	private int aid;
	private String name;
	private String contact;
	private String email;
	private String userName;
	private String password;
	
	public Admin(int aid, String name, String contact, String email, String userName, String password) {
		this.aid = aid;
		this.name = name;
		this.contact = contact;
		this.email = email;
		this.userName = userName;
		this.password = password;
	}

	public int getAid() {
		return aid;
	}

	public String getName() {
		return name;
	}

	public String getContact() {
		return contact;
	}

	public String getEmail() {
		return email;
	}

	public String getUserName() {
		return userName;
	}

	public String getPassword() {
		return password;
	}
}
