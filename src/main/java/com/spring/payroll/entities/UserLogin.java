package com.spring.payroll.entities;

public class UserLogin {

	private int id;
	private String username;
	private String password;
	private String passwordSalt;
	private String passwordHash;
	private int userID;
	
	
	public UserLogin() {
		// TODO Auto-generated constructor stub
	}


	public int getId() {
		return id;
	}

    
	
	
	public int getUserID() {
		return userID;
	}


	public void setUserID(int userID) {
		this.userID = userID;
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


	@Override
	public String toString() {
		return "UserLogin [id=" + id + ", username=" + username + ", password=" + password + ", passwordSalt="
				+ passwordSalt + ", passwordHash=" + passwordHash + "]";
	}


	public String getPassword() {
		return password;
	}


	public void setPassword(String password) {
		this.password = password;
	}
	
	

	
}
