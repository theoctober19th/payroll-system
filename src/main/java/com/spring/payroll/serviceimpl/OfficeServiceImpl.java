package com.spring.payroll.serviceimpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.payroll.dao.address.AddressDao;
import com.spring.payroll.dao.office.OfficeDao;
import com.spring.payroll.dao.user.UserDao;
import com.spring.payroll.entities.Branch;
import com.spring.payroll.entities.District;
import com.spring.payroll.entities.Division;
import com.spring.payroll.entities.Office;
import com.spring.payroll.entities.Province;
import com.spring.payroll.entities.User;
import com.spring.payroll.service.AddressService;
import com.spring.payroll.service.OfficeService;
import com.spring.payroll.service.UserService;

@Service
public class OfficeServiceImpl implements OfficeService {
	@Autowired
	OfficeDao officeDao;

	public OfficeServiceImpl() {
	}

	@Override
	public boolean addOrUpdateOffice(Office office) {
		officeDao.createOrUpdateOffice(office);
		return false;
	}

	@Override
	public boolean addOrUpdateBranch(Branch branch) {
		officeDao.addOrUpdateBranch(branch);
		return false;
	}

	@Override
	public boolean addOrUpdateDivision(Division division) {
		officeDao.addOrUpdateDivision(division);
		return false;
	}
	
}
