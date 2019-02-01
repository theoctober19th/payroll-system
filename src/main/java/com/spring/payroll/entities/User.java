package com.spring.payroll.entities;

import java.util.Date;

public class User {

	private int id;
	private String firstName;
	private String middleName;
	private String lastName;
	private int addressID;
	private String sex;
	private String phoneNumber;
	private String dateOfBirth;
	private String createdDate;
	private String email;
	private UserAddressInfo addressInfo;
	private UserLogin loginInfo;
	private UserAccount accountInfo;
	
	public User() {
		// TODO Auto-generated constructor stub
	}
	
	
	
	
	public UserAccount getAccountInfo() {
		return accountInfo;
	}




	public void setAccountInfo(UserAccount accountInfo) {
		this.accountInfo = accountInfo;
	}




	public String getEmail() {
		return email;
	}



	public void setEmail(String email) {
		this.email = email;
	}



	public UserAddressInfo getAddressInfo() {
		return addressInfo;
	}



	public void setAddressInfo(UserAddressInfo addressInfo) {
		this.addressInfo = addressInfo;
	}



	public UserLogin getLoginInfo() {
		return loginInfo;
	}



	public void setLoginInfo(UserLogin loginInfo) {
		this.loginInfo = loginInfo;
	}



	public void setSex(String sex) {
		this.sex = sex;
	}



	public void setDateOfBirth(String dateOfBirth) {
		this.dateOfBirth = dateOfBirth;
	}



	public void setCreatedDate(String createdDate) {
		this.createdDate = createdDate;
	}



	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getMiddleName() {
		return middleName;
	}

	public void setMiddleName(String middleName) {
		this.middleName = middleName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public int getAddressID() {
		return addressID;
	}

	public void setAddressID(int addressID) {
		this.addressID = addressID;
	}



	public String getPhoneNumber() {
		return phoneNumber;
	}



	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}



	public String getSex() {
		return sex;
	}



	public String getDateOfBirth() {
		return dateOfBirth;
	}



	public String getCreatedDate() {
		return createdDate;
	}



	@Override
	public String toString() {
		return "User [id=" + id + ", firstName=" + firstName + ", middleName=" + middleName + ", lastName=" + lastName
				+ ", addressID=" + addressID + ", sex=" + sex + ", phoneNumber=" + phoneNumber + ", dateOfBirth="
				+ dateOfBirth + ", createdDate=" + createdDate + ", email=" + email + ", addressInfo=" + addressInfo
				+ ", loginInfo=" + loginInfo + "]";
	}

	
	
	
	

}
