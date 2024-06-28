package admin.route;

public class Route {
	private int rid;
	private int raid;
	private String origin;
	private String destination;
	private String price;
	public Route(int rid, int raid, String origin, String destination, String price) {
		super();
		this.rid = rid;
		this.raid = raid;
		this.origin = origin;
		this.destination = destination;
		this.price = price;
	}
	
	public int getRid() {
		return rid;
	}
	public int getRaid() {
		return raid;
	}
	public String getOrigin() {
		return origin;
	}
	public String getDestination() {
		return destination;
	}
	public String getPrice() {
		return price;
	}
	
}
