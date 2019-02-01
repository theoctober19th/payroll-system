package com.spring.payroll.entities;

public class UserAddressInfo {

	private int id;
	private int provinceID;
	private String provinceName;
	private int districtID;
	private String districtName;
	private int villageMunicipalityID;
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

	

	public String getProvinceName() {
		return provinceName;
	}

	public void setProvinceName(String provinceName) {
		this.provinceName = provinceName;
	}

	public String getDistrictName() {
		return districtName;
	}

	public void setDistrictName(String districtName) {
		this.districtName = districtName;
	}

	public int getProvinceID() {
		return provinceID;
	}

	public void setProvinceID(int provinceID) {
		this.provinceID = provinceID;
	}

	public int getDistrictID() {
		return districtID;
	}

	public void setDistrictID(int districtID) {
		this.districtID = districtID;
	}

	public int getVillageMunicipalityID() {
		return villageMunicipalityID;
	}

	public void setVillageMunicipalityID(int villageMunicipalityID) {
		this.villageMunicipalityID = villageMunicipalityID;
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

	@Override
	public String toString() {
		return "UserAddressInfo [id=" + id + ", provinceID=" + provinceID + ", provinceName=" + provinceName
				+ ", districtID=" + districtID + ", districtName=" + districtName + ", villageMunicipalityID="
				+ villageMunicipalityID + ", villageMunicipality=" + villageMunicipality + ", localBodyType="
				+ localBodyType + ", wardNumber=" + wardNumber + ", streetAddress=" + streetAddress + "]";
	}

//	@Override
//	public String toString() {		
//		return villageMunicipality + "-" + wardNumber + ", " + districtName + ", " + provinceName;
//	}
	
	
	
	

}
