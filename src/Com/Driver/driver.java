package Com.Driver;

public class driver extends User{
  private int id;
  private String name;
  private String email;
  private String contactNumber;
  private String busNumber;
  private String licensesNumber;
  private String Nic;
  private String username;
  private String password;
  

  
public driver(int id, String name, String email, String contactNumber, String busNumber,String licensesNumber, String nic,
		 String username, String password) {
	super(id, name, username);
	this.id = id;
	this.name = name;
	this.email = email;
	this.contactNumber = contactNumber;
	this.busNumber=busNumber;
	this.licensesNumber = licensesNumber;
	this.Nic = nic;
	this.username = username;
	this.password = password;
}



public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}

public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
}
public String getContactNumber() {
	return contactNumber;
}

public void setContactNumber(String contactNumber) {
	this.contactNumber = contactNumber;
}

public String getBusNumber() {
	return busNumber;
}

public void setBusNumber(String busNumber) {
	this.busNumber = busNumber;
}

public String getLicensesNumber() {
	return licensesNumber;
}

public void setLicensesNumber(String licensesNumber) {
	this.licensesNumber = licensesNumber;
}

public String getNic() {
	return Nic;
}

public void setNic(String nic) {
	Nic = nic;
}

public String getUsername() {
	return username;
}

public void setUsername(String username) {
	this.username = username;
}

public String getPassword() {
	return password;
}

public void setPassword(String password) {
	this.password = password;
}
@Override
public void displayUserProfile() {
   
    System.out.println("Email: " + email);
    System.out.println("Contact Number: " + contactNumber);
    System.out.println("Bus Number: " + busNumber);
    System.out.println("Licenses Number: " + licensesNumber);
    System.out.println("NIC: " + Nic);
  
}


}

  
  

