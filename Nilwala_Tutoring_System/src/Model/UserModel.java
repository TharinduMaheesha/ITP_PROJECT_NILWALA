package Model;

public class UserModel {

	String fname , lname, uname , email , phone , password , nic;

	public UserModel(String fname, String lname, String uname, String email, String phone, String password,
			String nic) {
		super();
		this.fname = fname;
		this.lname = lname;
		this.uname = uname;
		this.email = email;
		this.phone = phone;
		this.password = password;
		this.nic = nic;
	}

	public String getFname() {
		return fname;
	}

	public void setFname(String fname) {
		this.fname = fname;
	}

	public String getLname() {
		return lname;
	}

	public void setLname(String lname) {
		this.lname = lname;
	}

	public String getUname() {
		return uname;
	}

	public void setUname(String uname) {
		this.uname = uname;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getNic() {
		return nic;
	}

	public void setNic(String nic) {
		this.nic = nic;
	}
	
	
	
}
