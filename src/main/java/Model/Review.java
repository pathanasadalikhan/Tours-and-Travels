package Model;

public class Review {
	private String uname;
	private String ureview;
	private int likes;
	private int slno;
	public void setslno(int slno) {
		this.slno=slno;
	}
	public int getslno() {
		return slno;
	}
	public void setUname(String uname) {
		this.uname=uname;
	}
	public void setUreview(String ureview) {
		this.ureview=ureview;
	}
	public void setLikes(int likes) {
		this.likes=likes;
	}
	public String getUname() {
		return uname;
	}
	public String getUreview() {
		return ureview;
	}
	public int getLikes() {
		return likes;
	}
}
