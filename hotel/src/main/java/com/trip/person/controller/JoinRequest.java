package com.trip.person.controller;

public class JoinRequest {
	private String userid, userpw, confirmpw, username, useremail, userphone;
	
	public boolean passwordSame() {
		return userpw.equals(confirmpw);
	}
	
	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	public String getUserpw() {
		return userpw;
	}

	public void setUserpw(String userpw) {
		this.userpw = userpw;
	}

	public String getConfirmpw() {
		return confirmpw;
	}

	public void setConfirmpw(String confirmpw) {
		this.confirmpw = confirmpw;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getUseremail() {
		return useremail;
	}

	public void setUseremail(String useremail) {
		this.useremail = useremail;
	}

	public String getUserphone() {
		return userphone;
	}

	public void setUserphone(String userphone) {
		this.userphone = userphone;
	}
	
}
