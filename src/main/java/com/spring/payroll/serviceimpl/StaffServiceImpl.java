package com.spring.payroll.serviceimpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.payroll.dao.staff.StaffDao;
import com.spring.payroll.entities.Staff;
import com.spring.payroll.service.StaffService;

@Service
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

	@Override
	public List<Staff> getAllStaffs() {
		return staffDao.getAll();
	}

	@Override
	public int getStaffCount() {
		return staffDao.getCount();
	}

	@Override
	public Staff getStaffByCode(String code) {
		return staffDao.getStaffByCode(code);
	}

	@Override
	public boolean updateStaff(String code, Staff staff) {
		return staffDao.updateStaffByCode(code, staff);
	}

}
