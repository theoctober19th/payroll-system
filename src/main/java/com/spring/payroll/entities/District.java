package com.spring.payroll.entities;

public class District {
	
	private int id;
	private String districtName;
	private int provinceID;

	public District() {
		// TODO Auto-generated constructor stub
	}
	
	

	public int getProvinceID() {
		return provinceID;
	}



	public void setProvinceID(int provinceID) {
		this.provinceID = provinceID;
	}



	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getDistrictName() {
		return districtName;
	}

	public void setDistrictName(String districtName) {
		this.districtName = districtName;
	}
	
	
	

}
