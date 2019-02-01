package com.spring.payroll.service;

import java.util.List;

import com.spring.payroll.entities.Province;
import com.spring.payroll.entities.User;
import com.spring.payroll.entities.District;

public interface AddressService {
	public List<District> getAllDistricts();
	public List<Province> getAllProvinces();
}
