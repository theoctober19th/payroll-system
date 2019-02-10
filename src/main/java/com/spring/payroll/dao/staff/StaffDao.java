package com.spring.payroll.dao.staff;

import java.util.List;

import com.spring.payroll.dao.Dao;
import com.spring.payroll.entities.User;
import com.spring.payroll.entities.Staff;

public interface StaffDao extends Dao<Staff>{
	public Staff getStaffByCode(String code);
	public boolean updateStaffByCode(String code, Staff staff);
}
