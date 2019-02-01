package com.spring.payroll.serviceimpl;

import org.springframework.beans.factory.annotation.Autowired;

import com.spring.payroll.dao.staff.StaffDao;
import com.spring.payroll.entities.Staff;
import com.spring.payroll.service.StaffService;

public class StaffServiceImpl implements StaffService {

	@Autowired
	StaffDao staffDao;
	
	public StaffServiceImpl() {
		// TODO Auto-generated constructor stub
	}

	@Override
	public boolean createStaff(Staff staff) {
		staffDao.create(staff);
		return false;
	}

}
