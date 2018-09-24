package Bean;

public class UserBean {
	public String username;//user's name
	public String password;//user's password
	public String phonenumber;//user's phone
	public String email;//user's email
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
	public String getPhonenumber() {
		return phonenumber;
	}
	public void setPhonenumber(String phonenumber) {
		this.phonenumber = phonenumber;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public UserBean(String username, String password, String phonenumber,
			String email) {
		super();
		this.username = username;
		this.password = password;
		this.phonenumber = phonenumber;
		this.email = email;
	}
	public UserBean() {
		super();
		// TODO Auto-generated constructor stub
	}
	
}
