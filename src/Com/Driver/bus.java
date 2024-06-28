package Com.Driver;

public class bus {
	
	private int busID;
	private String busNumber;
	private int Capacity;
	private String Manufacturer;
	private String Model;
	private String YearOfManufacture;
	
	public bus(int busID, String busNumber, int capacity, String manufacturer, String model,
			String yearOfManufacture) {
		
		this.busID = busID;
		this.busNumber = busNumber;
		this.Capacity = capacity;
		this.Manufacturer = manufacturer;
		this.Model = model;
		this.YearOfManufacture = yearOfManufacture;
	}

	public int getBusID() {
		return busID;
	}

	public String getBusNumber() {
		return busNumber;
	}

	public int getCapacity() {
		return Capacity;
	}

	public String getManufacturer() {
		return Manufacturer;
	}

	public String getModel() {
		return Model;
	}

	public String getYearOfManufacture() {
		return YearOfManufacture;
	}


	

}
