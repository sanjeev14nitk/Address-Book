package com.mycomp.addressbook.dto;

public class Phone {

	private int homePhone;
	private int ofcPhone;
	private int cellPhone;
	private String email;
	public int getHomePhone() {
		return homePhone;
	}
	public void setHomePhone(int homePhone) {
		this.homePhone = homePhone;
	}
	public int getOfcPhone() {
		return ofcPhone;
	}
	public void setOfcPhone(int ofcPhone) {
		this.ofcPhone = ofcPhone;
	}
	public int getCellPhone() {
		return cellPhone;
	}
	public void setCellPhone(int cellPhone) {
		this.cellPhone = cellPhone;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
	@Override
	public String toString() {
		return "Phone [homePhone=" + homePhone + ", ofcPhone=" + ofcPhone + ", cellPhone=" + cellPhone + ", email="
				+ email + "]";
	}
	
	
}
