package com.spring.payroll.dao.office;

import com.spring.payroll.entities.Branch;
import com.spring.payroll.entities.Division;
import com.spring.payroll.entities.Office;

public interface OfficeDao {
	public int createOrUpdateOffice(Office office);
	public boolean addOrUpdateDivision(Division division);
	public boolean addOrUpdateBranch(Branch branch);
	public int getBranchCount();
}
