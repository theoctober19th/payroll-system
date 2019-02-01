package com.spring.payroll.entities;

public class UserAccount {
	
	private int id;
	private int name;
	private String activationDate;
	private String expiryDate;
	private int passwordChangeFreq;
	private int roleID;
	private String role;
	private boolean activeStatus;
	
	public UserAccount() {
		// TODO Auto-generated constructor stub
	}
	
	

	
	
	public boolean isActiveStatus() {
		return activeStatus;
	}





	public void setActiveStatus(boolean activeStatus) {
		this.activeStatus = activeStatus;
	}





	public int getRoleID() {
		return roleID;
	}



	public void setRoleID(int roleID) {
		this.roleID = roleID;
	}



	public String getRole() {
		return role;
	}



	public void setRole(String role) {
		this.role = role;
	}



	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getName() {
		return name;
	}

	public void setName(int name) {
		this.name = name;
	}

	

	public String getActivationDate() {
		return activationDate;
	}

	public void setActivationDate(String activationDate) {
		this.activationDate = activationDate;
	}

	public String getExpiryDate() {
		return expiryDate;
	}

	public void setExpiryDate(String expiryDate) {
		this.expiryDate = expiryDate;
	}

	public int getPasswordChangeFreq() {
		return passwordChangeFreq;
	}

	public void setPasswordChangeFreq(int passwordChangeFreq) {
		this.passwordChangeFreq = passwordChangeFreq;
	}
	
	

}
