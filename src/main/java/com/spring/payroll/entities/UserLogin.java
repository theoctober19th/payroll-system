package com.spring.payroll.entities;

public class UserLogin {

	private int id;
	private String username;
	private String passwordSalt;
	private String passwordHash;
	
	
	public UserLogin() {
		// TODO Auto-generated constructor stub
	}


	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	public String getUsername() {
		return username;
	}


	public void setUsername(String username) {
		this.username = username;
	}


	public String getPasswordSalt() {
		return passwordSalt;
	}


	public void setPasswordSalt(String passwordSalt) {
		this.passwordSalt = passwordSalt;
	}


	public String getPasswordHash() {
		return passwordHash;
	}


	public void setPasswordHash(String passwordHash) {
		this.passwordHash = passwordHash;
	}

	
}
