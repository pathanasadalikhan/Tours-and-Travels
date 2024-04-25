package Model;

public class Suggestion {
	private String slno;
	private String email;
	private String suggestion;
	public void setSlno(String slno) {
		this.slno=slno;
	}
	public void setEmail(String email) {
		this.email=email;
	}
	public void setSuggest(String suggest) {
		this.suggestion=suggest;
	}
	public String getSlno() {
		return slno;
	}
	public String getEmail() {
		return email;
	}
	public String getSuggest() {
		return suggestion;
	}
}
