package com.spring.payroll.dao.address;

import com.spring.payroll.dao.Dao;
import com.spring.payroll.entities.District;
import com.spring.payroll.entities.Province;
import com.spring.payroll.entities.UserAddressInfo;
import java.util.List;

public interface AddressDao{
	public List<District> getAllDistricts();
	public List<Province> getAllProvinces();
}
