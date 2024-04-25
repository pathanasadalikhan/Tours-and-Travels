package Model;

public class User {
	    String id;
	    String fname;
	    String phonenumber;
	    String email;
	    String date;
	    String lname;
	    public String getId() {
	        return id;
	    }
	    public String getfName() {
	        return fname;
	    }
	    public String getlName() {
	        return lname;
	    }
	    public String getphone() {
	        return phonenumber;
	    }
	    public String getemail() {
	        return email;
	    }
	     public String getdate() {
	        return date;
	    }
	    public void setId(String id) {
	        this.id = id;
	    }
	    public void setfName(String fname) {
	        this.fname = fname;
	    }
	    public void setlName(String lname) {
	        this.lname = lname;
	    }
	    public void setphone(String phonenumber) {
	        this.phonenumber = phonenumber;
	    }
	    public void setemail(String email) {
	        this.email = email;
	    }
	     public void setdate(String date) {
	        this.date = date;
	    }
}
