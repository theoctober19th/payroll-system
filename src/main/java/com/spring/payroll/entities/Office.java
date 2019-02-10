package com.spring.payroll.entities;

import javax.validation.constraints.NotNull;

public class Office {

	@NotNull(message="is required")
	private int officeCode;
	
	@NotNull(message="is required")
	private String officeName;
	
	@NotNull(message="is required")
	private String officeAddress;
	
	@NotNull(message="is required")
	private double regGovtDiscountAmt;
	
	
	public Office() {
		// TODO Auto-generated constructor stub
	}


	public int getOfficeCode() {
		return officeCode;
	}


	public void setOfficeCode(int officeCode) {
		this.officeCode = officeCode;
	}


	public String getOfficeName() {
		return officeName;
	}


	public void setOfficeName(String officeName) {
		this.officeName = officeName;
	}


	public String getOfficeAddress() {
		return officeAddress;
	}


	public void setOfficeAddress(String officeAddress) {
		this.officeAddress = officeAddress;
	}


	public double getRegGovtDiscountAmt() {
		return regGovtDiscountAmt;
	}


	public void setRegGovtDiscountAmt(double regGovtDiscountAmt) {
		this.regGovtDiscountAmt = regGovtDiscountAmt;
	}
	
	

}
