package com.spring.payroll.service;

import java.util.List;

import com.spring.payroll.entities.Staff;
import com.spring.payroll.entities.User;

public interface StaffService {
	public boolean createStaff(Staff staff);
	public List<Staff> getAllStaffs();
	public int getStaffCount();
	public Staff getStaffByCode(String code);
	public boolean updateStaff(String code, Staff staff);
	
}
