package Com.Booking;

public class Booking implements bookingCal {

		private int id;
		private String date;
		private String time;
		private String busNumber;
		private String origin;
		private String destination;
		private String seatNumbers;
		private String cid;
		private String paymentStatus;
		public int getId() {
			return id;
		}
		public String getDate() {
			return date;
		}
		public String getTime() {
			return time;
		}
		public Booking() {
			super();
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
		public String getSeatNumbers() {
			return seatNumbers;
		}
		
		public String getcid() {
			return cid;
		}
		
		
		public String getpaymentStatus() {
			return paymentStatus;
		}
		public Booking(int id, String date, String time, String busNumber, String origin, String destination,
				String seatNumbers, String cid, String paymentStatus) { 
			super();
			this.id = id;
			this.date = date;
			this.time = time;
			this.busNumber = busNumber;
			this.origin = origin;
			this.destination = destination;
			this.seatNumbers = seatNumbers;
			this.cid = cid;
			this.paymentStatus = paymentStatus;
		}
		public Booking(int id) {
			super();
			this.id = id;
		}
		@Override
		public double calPrice(int seatCount ,double price) {
			 
			        //  price calculation logic 
			      
			       
			        return seatCount * price;
			    }
		
		}

