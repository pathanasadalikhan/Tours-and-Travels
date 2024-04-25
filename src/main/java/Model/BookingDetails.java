package Model;

public class BookingDetails {
	private int slno;
	private String name;
	private String phone;
	private String email;
	private String eventname;
	private long cost;
	private String image;
	private String curentdate;
	private String bookeddate;
	private String bookdetails;
	private int userid;
	public BookingDetails(int slno,String name,String phone,
			String email,String eventname,long cost,String image,String curentdate,
			String bookeddate,String bookdetails,int userid) {
		this.slno=slno;
		this.name=name;
		this.phone=phone;
		this.email=email;
		this.eventname=eventname;
		this.cost=cost;
		this.image=image;
		this.curentdate=curentdate;
		this.bookeddate=bookeddate;
		this.bookdetails=bookdetails;
		this.userid=userid;
	}
	public String getImage() {
		return image;
	}
	public int getslno() {
		return slno;
	}
	public String getName() {
		return name;
	}
	public String getphone() {
		return phone;
	}
	public String getEmail() {
		return email;
	}
	public String getPackage() {
		return eventname;
	}
	public long getCost() {
		return cost;
	}
	public String getDateOfBooking() {
		return curentdate;
	}
	public String getBookedDate() {
		return bookeddate;
	}
	public String getbookdetails() {
		return bookdetails;
	}
	public int getUserid() {
		return userid;
	}
	
}
