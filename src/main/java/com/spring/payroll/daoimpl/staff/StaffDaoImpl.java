package com.spring.payroll.daoimpl.staff;

import java.util.List;
import java.util.Map;
import java.util.HashMap;

import javax.management.Query;
import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.namedparam.BeanPropertySqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.jdbc.core.namedparam.SqlParameterSource;
import org.springframework.stereotype.Repository;

import com.spring.payroll.entities.Staff;

import com.spring.payroll.dao.staff.StaffDao;


@Repository
public class StaffDaoImpl implements StaffDao {
	
	private NamedParameterJdbcTemplate template;
	private String sql;
	
	@Autowired
	public void setDataSource(DataSource dataSource) {
		this.template = new NamedParameterJdbcTemplate(dataSource);
	}

	public StaffDaoImpl() {
		// TODO Auto-generated constructor stub
	}

	@Override
	public Staff get(long id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Staff> getAll() {
		sql = "SELECT * FROM tblstaff;";
		List<Staff> staffList=template.query(sql, new BeanPropertyRowMapper(Staff.class));
		//List<Staff> staffList = template.query(sql, new BeanPropertyRowMapper<Staff>(Staff.class));
		System.out.println(sql);
		System.out.println(staffList);
		return staffList;
	}

	@Override
	public int create(Staff staff) {
		sql = "INSERT INTO tblstaff\r\n" + 
				"(staffCode,  staffName,  post,  staffRank,  sex,  maritalStatus,  appointedDate,  permanentDate,  retirementDate,  branchID,  divCode,  encashPolicyType,  staffType,  bankAccount,  panNumber,  citNumber,  pFac,  lifeInsurance,  basicSalary,  pfDeductionAmount,  programAllowance)\r\n" + 
				"VALUES\r\n" + 
				"(:staffCode, :staffName, :post, :staffRank, :sex, :maritalStatus, :appointedDate, :permanentDate, :retirementDate, :branchID, :divCode, :encashPolicyType, :staffType, :bankAccount, :panNumber, :citNumber, :pFac, :lifeInsurance, :basicSalary, :pfDeductionAmount, :programAllowance);";
		return template.update(sql, new BeanPropertySqlParameterSource(staff));
	}

	@Override
	public boolean update(long id, Staff t) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean delete(long id) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public int getCount() {
		sql = "SELECT COUNT(*) FROM tblstaff";
		int i = template.queryForInt(sql, new HashMap());
		return i;
	}

	@Override
	public Staff getStaffByCode(String code) {
		sql  = "SELECT * FROM tblstaff WHERE staffCode = :code";
		Map paramMap = new HashMap();
		paramMap.put("code", code);
		Staff staff = template.queryForObject(sql,paramMap, new BeanPropertyRowMapper(Staff.class));
		return staff;
	}

	@Override
	public boolean updateStaffByCode(String code, Staff staff) {
		sql = "UPDATE tblstaff SET "
				+ "staffName = :staffName, post = :post, staffRank = :staffRank, sex = :sex, maritalStatus = :maritalStatus, appointedDate = :appointedDate, permanentDate = :permanentDate, retirementDate = :retirementDate, branchID = :branchID, divCode = :divCode, encashPolicyType = :encashPolicyType, staffType = :staffType, bankAccount = :bankAccount, panNumber = :panNumber, citNumber = :citNumber, pFac = :pFac, lifeInsurance = :lifeInsurance, basicSalary = :basicSalary, pfDeductionAmount = :pfDeductionAmount, programAllowance = :programAllowance "
				+ "WHERE staffCode = :staffCode";
		template.update(sql, new BeanPropertySqlParameterSource(staff));
		return true;
	}

}

//staffCode,  staffName,  post,  staffRank,  sex,  maritalStatus
//:staffCode, :staffName, :post, :staffRank, :sex, :maritalStatus

//,  appointedDate,  permanentDate,  retirementDate,  branchID,  divCode,  encashPolicyType,  staffType,  bankAccount,  panNumber,  citNumber,  pFac,  lifeInsurance,  basicSalary,  pfDeductionAmount,  programAllowance

//, :appointedDate, :permanentDate, :retirementDate, :branchID, :divCode, :encashPolicyType, :staffType, :bankAccount, :panNumber, :citNumber, :pFac, :lifeInsurance, :basicSalary, :pfDeductionAmount, :programAllowance