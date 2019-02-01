package com.spring.payroll.serviceimpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.payroll.dao.address.AddressDao;
import com.spring.payroll.dao.user.UserDao;
import com.spring.payroll.entities.District;
import com.spring.payroll.entities.Province;
import com.spring.payroll.entities.User;
import com.spring.payroll.service.AddressService;
import com.spring.payroll.service.UserService;

@Service
public class AddressServiceImpl implements AddressService {
	@Autowired
	AddressDao addressDao;

	public AddressServiceImpl() {
	}

	@Override
	public List<District> getAllDistricts() {
		return addressDao.getAllDistricts();
	}

	@Override
	public List<Province> getAllProvinces() {
		return addressDao.getAllProvinces();
	}

}
