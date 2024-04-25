package Model;

public class EventPackage {
	private int slno;
	private String himage;
	private String content;
	private String trname;
	public void settrname(String trname) {
		this.trname=trname;
	}
	public void setSlno(int slno) {
		this.slno=slno;
	}
	public void sethimage(String himage) {
		this.himage=himage;
	}
	public void setcontent(String content) {
		this.content=content;
	}
	public String gettrname() {
		return trname;
	}
	public String gethimage() {
		return himage;
	}
	public String getcontent() {
		return content;
	}
	public int getSlno() {
		return slno;
	}
}
