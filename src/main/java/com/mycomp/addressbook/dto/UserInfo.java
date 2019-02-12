package com.mycomp.addressbook.dto;

import java.util.Date;

public class UserInfo {

	private String fName;
	private String lName;
	private String gender;
	private Date dateOfBirth;
	/*List<Address> addresses;
	List<Phone> Phones;*/
	
	private String streetAddr;
	private String city;
	private String state;
	private int zipCode;
	
	private long homePhone;
	private long ofcPhone;
	private long cellPhone;
	private String email;
	

	public String getfName() {
		return fName;
	}
	public void setfName(String fName) {
		this.fName = fName;
	}
	public String getlName() {
		return lName;
	}
	public void setlName(String lName) {
		this.lName = lName;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public Date getDateOfBirth() {
		return dateOfBirth;
	}
	public void setDateOfBirth(Date dateOfBirth) {
		this.dateOfBirth = dateOfBirth;
	}
	public String getStreetAddr() {
		return streetAddr;
	}
	public void setStreetAddr(String streetAddr) {
		this.streetAddr = streetAddr;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public int getZipCode() {
		return zipCode;
	}
	public void setZipCode(int zipCode) {
		this.zipCode = zipCode;
	}
	public long getHomePhone() {
		return homePhone;
	}
	public void setHomePhone(long homePhone) {
		this.homePhone = homePhone;
	}
	public long getOfcPhone() {
		return ofcPhone;
	}
	public void setOfcPhone(long ofcPhone) {
		this.ofcPhone = ofcPhone;
	}
	public long getCellPhone() {
		return cellPhone;
	}
	public void setCellPhone(long cellPhone) {
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
		return "UserInfo [fName=" + fName + ", lName=" + lName + ", gender=" + gender
				+ ", dateOfBirth=" + dateOfBirth + ", streetAddr=" + streetAddr + ", city=" + city + ", state=" + state
				+ ", zipCode=" + zipCode + ", homePhone=" + homePhone + ", ofcPhone=" + ofcPhone + ", cellPhone="
				+ cellPhone + ", email=" + email + "]";
	}
	
	
	
}
