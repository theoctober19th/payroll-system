package com.spring.payroll.service;

import java.util.List;

import com.spring.payroll.entities.Branch;
import com.spring.payroll.entities.Division;
import com.spring.payroll.entities.Office;
import com.spring.payroll.entities.User;

public interface OfficeService {
	public boolean addOrUpdateOffice(Office office);
	public boolean addOrUpdateBranch(Branch branch);
	public boolean addOrUpdateDivision(Division division);
}
