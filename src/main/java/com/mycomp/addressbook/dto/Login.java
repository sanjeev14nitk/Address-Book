package com.mycomp.addressbook.dto;

import java.sql.Timestamp;
import java.util.Date;

public class Login {
	private String userid;
	private String username;
	private String password;
	private Date lastlogin;
	//Timestamp timestamp = Timestamp.valueOf("2007-09-23 10:10:10.0");
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
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
	public Date getLastlogin() {
		return lastlogin;
	}
	public void setLastlogin(Date lastlogin) {
		this.lastlogin = lastlogin;
	}
	
	

}
