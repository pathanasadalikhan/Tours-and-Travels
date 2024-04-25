package Model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Properties;

import jakarta.mail.Authenticator;
import jakarta.mail.Message;
import jakarta.mail.PasswordAuthentication;
import jakarta.mail.Session;
import jakarta.mail.Transport;
import jakarta.mail.internet.InternetAddress;
import jakarta.mail.internet.MimeMessage;
import jakarta.servlet.http.HttpSession;

public class Registration {
	private Connection con;
	static HttpSession se;

	public Registration(HttpSession session) {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306?user=root&&password=Asad@007");
			se = session;
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public String Registration(String fname, String lname, String phone, String email, String state, String pw,
			String gender) {
		PreparedStatement ps;
		String status = "";
		String sql = "select * from MakeMyTrip.Customer where phone='" + phone + "' or email='" + email + "';";
		try {
			Statement st = null;
			ResultSet rs = null;
			st = con.createStatement();
			rs = st.executeQuery(sql);
			boolean b = rs.next();
			if (b) {
				status = "existed";
			} else {
				ps = (PreparedStatement) con.prepareStatement(
						"insert into MakeMyTrip.Customer(fname,lname,phone,email,state,pw,gender) values(?,?,?,?,?,?,?)");// "insert
																															// into
																															// sookshma.Banking
																															// values('"+id,email,name,amt,0,bal+"')"
				ps.setString(1, fname);
				ps.setString(2, lname);
				ps.setString(3, phone);
				ps.setString(4, email);
				ps.setString(5, state);
				ps.setString(6, pw);
				ps.setString(7, gender);
				int a = ps.executeUpdate();
				if (a > 0) {
					status = "success";
				} else {
					status = "failure";
				}
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return status;
	}

	public String SuggestionBox(String guestemail, String suggestion) {
		String status = "";
		PreparedStatement ps;
		String sql = "select * from MakeMyTrip.Suggestion where email='" + guestemail + "';";
		try {
			Statement st = null;
			ResultSet rs = null;
			st = con.createStatement();
			rs = st.executeQuery(sql);
			boolean b = rs.next();
			if (b) {
				status = "existed";
			} else {
				ps = (PreparedStatement) con
						.prepareStatement("insert into MakeMyTrip.Suggestion (email,SuggestionBox) values(?,?)");// "insert
																													// into
																													// sookshma.Banking
																													// values('"+id,email,name,amt,0,bal+"')"
				ps.setString(1, guestemail);
				ps.setString(2, suggestion);
				int a = ps.executeUpdate();
				if (a > 0) {
					status = "success";
				} else {
					status = "failure";
				}
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return status;

	}

	public String login(String email, String pass) {
		String status1 = "";
		int id;
		String fname = "", emails = "", lname = "";

		try {
			PreparedStatement pstm = null;
			ResultSet rs = null;
			String sql = "select* from MakeMyTrip.Customer where email=? and pw=?";
			pstm = con.prepareStatement(sql);
			pstm.setString(1, email);
			pstm.setString(2, pass);
			rs = pstm.executeQuery();
			boolean b = rs.next();
			if (b == true) {
				id = rs.getInt("slno");
				fname = rs.getString("fname");
				lname = rs.getString("lname");
				emails = rs.getString("email");
				se.setAttribute("fname", fname);
				se.setAttribute("email", emails);
				se.setAttribute("lname", lname);
				se.setAttribute("id", id);
				status1 = "success";
			} else {
				status1 = "failure";
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		return status1;
	}

	// getUserBookings
	public ArrayList<BookingDetails> getUserBookings() {
		Statement st = null;
		ResultSet rs = null;
		ArrayList<BookingDetails> al = new ArrayList<BookingDetails>();
		try {
			st = con.createStatement();
			String emails = (String) se.getAttribute("email");
			String qry = "select * from MakeMyTrip.bookNow where email='" + emails + "';";
			System.out.println(qry);
			rs = st.executeQuery(qry);
			while (rs.next()) {
				int slno = rs.getInt("slno");
				String name = rs.getString("name");
				String phone = rs.getString("phone");
				String email = rs.getString("email");
				String eventname = rs.getString("eventname");
				long cost = rs.getLong("cost");
				String image = rs.getString("image");
				String curentdate = rs.getString("curentdate");
				String bookeddate = rs.getString("bookingdate");
				String bookdetails = rs.getString("Bookdetails");
				int userid = rs.getInt("userid");
				BookingDetails p = new BookingDetails(slno, name, phone, email, eventname, cost, image, curentdate,
						bookeddate, bookdetails, userid);
				al.add(p);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return al;
	}

	public ArrayList<Suggestion> getUserDetails() {
		Statement st = null;
		ResultSet rs = null;
		ArrayList<Suggestion> al = new ArrayList<Suggestion>();
		try {
			st = con.createStatement();
			String qry = "select * from MakeMyTrip.Suggestion where slno not in(1);";
			rs = st.executeQuery(qry);
			while (rs.next()) {
				Suggestion p = new Suggestion();
				p.setSlno(rs.getString("slno"));
				p.setEmail(rs.getString("email"));
				p.setSuggest(rs.getString("SuggestionBox"));
				al.add(p);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return al;
	}

	public ArrayList<Review> getUserReview() {
		Statement st = null;
		ResultSet rs = null;
		ArrayList<Review> al = new ArrayList<Review>();
		try {
			st = con.createStatement();
			String qry = "select * from MakeMyTrip.Review;";
			rs = st.executeQuery(qry);
			while (rs.next()) {
				Review p = new Review();
				p.setslno(rs.getInt("slno"));
				p.setUname(rs.getString("name"));
				p.setUreview(rs.getString("reviews"));
				p.setLikes(rs.getInt("likes"));
				al.add(p);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return al;
	}

	public String delete(int id) {
		Statement ps = null;
		int a;
		String status = "";
		try {
			ps = con.createStatement();
			String sql = "DELETE FROM MakeMyTrip.Suggestion WHERE slno='" + id + "';";
			a = ps.executeUpdate(sql);
			if (a > 0) {
				status = "success";
			} else {
				status = "failure";
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return status;
	}

//	public String updating(int id) {
//		String status = "";
//        Statement st = null;
//        try {
//            st = con.createStatement();
//            st.executeUpdate("update MakeMyTrip.bookNow set bookNow='Cancled' where slno= " + id + ";");
//            status = "success";
//        } catch (Exception e) {
//            status = "failure";
//            e.printStackTrace();
//        }
//
//        return status;
//	}
	public String updating(int id) {
		System.out.println("your updating id is :"+id);
		String status = "";
		Statement st = null;
		try {
			st = con.createStatement();
			st.executeUpdate("update MakeMyTrip.bookNow set Bookdetails='Cancled' where slno= " + id + ";");
			status = "success";
		} catch (Exception e) {
			status = "failure";
			e.printStackTrace();
		}
		System.out.println("your status is :"+status);
		return status;
	}

	public String book(String event) {
		String status = "";
		if (event.equalsIgnoreCase("Trekking")) {
			se.setAttribute("event", event);
			se.setAttribute("cost", 80000);
			se.setAttribute("image", "Images/Hollyday1.jpg");
		} else if (event.equalsIgnoreCase("summer")) {
			se.setAttribute("event", event);
			se.setAttribute("cost", 120000);
			se.setAttribute("image", "Images/Hollyday.jpg");
		} else if (event.equalsIgnoreCase("International")) {
			se.setAttribute("event", event);
			se.setAttribute("cost", 260000);
			se.setAttribute("image", "Images/Hollyday2.jpg");
		} else if (event.equalsIgnoreCase("honeymoon")) {
			se.setAttribute("event", event);
			se.setAttribute("cost", 200000);
			se.setAttribute("image", "Images/Hollyday3.jpg");
		} else if (event.equalsIgnoreCase("UnderWater")) {
			se.setAttribute("event", event);
			se.setAttribute("cost", 180000);
			se.setAttribute("image", "Images/Hollyday4.jpg");
		}
		return "success";
	}

	public ArrayList<EventPackage> booking(String event) {
		Statement st = null;
		ResultSet rs = null;
		ArrayList<EventPackage> al = new ArrayList<EventPackage>();
		try {
			st = con.createStatement();
			String qry = "select * from MakeMyTrip." + event + ";";
			rs = st.executeQuery(qry);
			while (rs.next()) {
				EventPackage e = new EventPackage();
				e.setSlno(rs.getInt("slno"));
				e.sethimage(rs.getString("images"));
				e.setcontent(rs.getString("content"));
				e.settrname(rs.getString("trname"));
				al.add(e);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return al;
	}

	public String insertReview(String names, String emails, String review) {
		PreparedStatement ps;
		String status = "";
		String sql = "select * from MakeMyTrip.Review where slno=9999;";
		try {
			String name = (String) se.getAttribute("fname");
			String email = (String) se.getAttribute("email");
			Statement st = null;
			ResultSet rs = null;
			st = con.createStatement();
			rs = st.executeQuery(sql);
			boolean b = rs.next();
			if (b) {
				status = "existed";
			} else {
				ps = (PreparedStatement) con.prepareStatement(
						"insert into MakeMyTrip.Review(slno,name,reviews,likes,email) values(0,?,?,0,?)");// "insert
																											// into
																											// sookshma.Banking
																											// values('"+id,email,name,amt,0,bal+"')"
				ps.setString(1, name);
				ps.setString(2, review);
				ps.setString(3, email);
				int a = ps.executeUpdate();
				if (a > 0) {
					status = "success";
				} else {
					status = "failure";
				}
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return status;
	}

	public String bookNow(String name, String phone, String date) {
		PreparedStatement ps;
		String status = "";
		try {
			String event = (String) se.getAttribute("event");
			int cost = (Integer) se.getAttribute("cost");
			String email = (String) se.getAttribute("email");
			String image = (String) se.getAttribute("image");
			int id = (Integer) se.getAttribute("id");
			ps = (PreparedStatement) con.prepareStatement("insert into MakeMyTrip.bookNow"
					+ "(slno,name,phone,email,eventname,cost,image,bookingdate,userid) values(0,?,?,?,?,?,?,?,?)");// "insert
																													// into
																													// sookshma.Banking
																													// values('"+id,email,name,amt,0,bal+"')"
			ps.setString(1, name);
			ps.setString(2, phone);
			ps.setString(3, email);
			ps.setString(4, event);
			ps.setInt(5, cost);
			ps.setString(6, image);
			ps.setString(7, date);
			ps.setInt(8, id);
			int a = ps.executeUpdate();
			if (sendEmail()) {
				if (a > 0) {
					status = "success";
				} else {
					status = "failure";
				}
			} else {
				status = "failure";
			}

			return status;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return status;
	}

	public ArrayList<User> getUserDetail() {
		Statement st = null;
		ResultSet rs = null;
		ArrayList<User> al = new ArrayList<User>();
		try {
			st = con.createStatement();
			String qry = "select * from MakeMyTrip.Customer where slno not in(1);";
			rs = st.executeQuery(qry);
			while (rs.next()) {
				User p = new User();
				p.setId(rs.getString("slno"));
				p.setfName(rs.getString("fname"));
				p.setlName(rs.getString("lname"));
				p.setemail(rs.getString("email"));
				p.setphone(rs.getString("phone"));
				al.add(p);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return al;
	}

	public String deletes(int id) {
		Statement ps = null;
		int a;
		String status = "";
		try {
			ps = con.createStatement();
			String sql = "DELETE FROM MakeMyTrip.Customer WHERE slno='" + id + "';";
			a = ps.executeUpdate(sql);
			if (a > 0) {
				status = "sucess";
			} else {
				status = "failure";
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return status;
	}

	public static boolean sendEmail() {
		System.out.println("inside the send email method");
		boolean check = false;
		String fromEmail = "pathanasadalikhan007@gmail.com";
		String pass = "gdtd hidu sssq ejnh";

		try {
			Properties prop = new Properties();
			prop.put("mail.smtp.host", "smtp.gmail.com");
			prop.put("mail.smtp.starttls.enable", "true");
			prop.put("mail.smtp.port", 587);
			prop.put("mail.smtp.auth", "true");
			System.out.println("inside the properties of object :");
			Session session = Session.getInstance(prop, new Authenticator() {
				@Override
				protected PasswordAuthentication getPasswordAuthentication() {
					// TODO Auto-generated method stub
					return new PasswordAuthentication(fromEmail, pass);
				}
			});

			Message m = new MimeMessage(session);
			String fullName = (String) se.getAttribute("fname") + " " + (String) se.getAttribute("lname");
			System.out.println("inside sendemail : fname is :" + fullName);
			String toemail = (String) se.getAttribute("email");
			System.out.println("inside sendemail : to email is :" + toemail);
			String event = (String) se.getAttribute("event");
			System.out.println("inside sendemail : event is :" + event);
			int cost = (Integer) se.getAttribute("cost");
			System.out.println("inside sendemail : cost is :" + cost);
			m.setRecipient(Message.RecipientType.TO, new InternetAddress(toemail));
			System.out.println("inside sendemail : to email recived :" + toemail);
			m.setFrom(new InternetAddress(fromEmail));
			System.out.println("inside sendemail : from email is :" + fromEmail);
			m.setSubject(event + " Booking Confirmation");
			System.out.println("inside sendemail : subject of email is : booking done successfuly");
			m.setText("Dear " + fullName + " you have done successfully booked your " + event
					+ "the confirmation mail send to respective email id" + toemail + "cost of the event is " + cost
					+ " Thank you");

			System.out.println("inside sendemail : body of the email is ready");
			Transport.send(m);
			System.out.println("Email sent");
			check = true;
			System.out.println("email sent successfull");
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("some error occured in sending email");
		}
		return check;
	}

	public User getInfo() {
		Statement st = null;
		ResultSet rs = null;
		User s = null;
		try {
			st = con.createStatement();
			rs = st.executeQuery("select * from MakeMyTrip.Customer where slno= " + se.getAttribute("id") + ";");
			boolean b = rs.next();
			if (b == true) {
				s = new User();
				s.setfName(rs.getString("fname"));
				s.setlName(rs.getString("lname"));
				s.setphone(rs.getString("phone"));
				s.setemail(rs.getString("email"));
			} else {
				s = null;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		return s;
	}

	public String update(String fname, String lname, String phone, String email) {
		String status = "";
		Statement st = null;
		try {
			st = con.createStatement();
			st.executeUpdate("update MakeMyTrip.Customer set fname='" + fname + "',lname='" + lname + "',phone='"
					+ phone + "',email='" + email + "' where slno= '" + se.getAttribute("id") + "' ");
			se.setAttribute("fname", fname);
			se.setAttribute("email", email);
			se.setAttribute("phone", phone);
			se.setAttribute("lname", lname);
			status = "success";
		} catch (Exception e) {
			status = "failure";
			e.printStackTrace();
		}

		return status;
	}

	public String likes(String emotion, String userid) {
		String status = "";
		Statement st = null;
		ResultSet rs = null;
		Statement sts = null;
		int totallikes = 0;
		try {
			st = con.createStatement();
			String qry = "select likes from MakeMyTrip.Review where slno=" + userid + ";";
			rs = st.executeQuery(qry);
			boolean b = rs.next();
			if (b == true) {
				totallikes = rs.getInt("likes");
				if (emotion.equals("dislike")) {
					totallikes = totallikes - 1;
				} else if (emotion.equals("like")) {
					totallikes = totallikes + 1;
				}
			}
			sts = con.createStatement();
			sts.executeUpdate("update MakeMyTrip.Review set likes=" + totallikes + " where slno= '" + userid + "' ");
			status = "success";

		} catch (Exception e) {
			status = "failure";
			e.printStackTrace();
		}
		return status;
	}
}
