package com.spring.payroll.entities;

public class UserAddressInfo {

	private int id;
	private String province;
	private String district;
	private String villageMunicipality;
	private String localBodyType;
	private int wardNumber;
	private String streetAddress;
	
	public UserAddressInfo() {
		// TODO Auto-generated constructor stub
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getProvince() {
		return province;
	}

	public void setProvince(String province) {
		this.province = province;
	}

	public String getDistrict() {
		return district;
	}

	public void setDistrict(String district) {
		this.district = district;
	}

	public String getVillageMunicipality() {
		return villageMunicipality;
	}

	public void setVillageMunicipality(String villageMunicipality) {
		this.villageMunicipality = villageMunicipality;
	}

	public String getLocalBodyType() {
		return localBodyType;
	}

	public void setLocalBodyType(String localBodyType) {
		this.localBodyType = localBodyType;
	}

	public int getWardNumber() {
		return wardNumber;
	}

	public void setWardNumber(int wardNumber) {
		this.wardNumber = wardNumber;
	}

	public String getStreetAddress() {
		return streetAddress;
	}

	public void setStreetAddress(String streetAddress) {
		this.streetAddress = streetAddress;
	}
	
	

}
