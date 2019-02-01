package com.spring.payroll.daoimpl.office;

import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.namedparam.BeanPropertySqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.stereotype.Repository;

import com.spring.payroll.dao.address.AddressDao;
import com.spring.payroll.dao.office.OfficeDao;
import com.spring.payroll.entities.Branch;
import com.spring.payroll.entities.District;
import com.spring.payroll.entities.Division;
import com.spring.payroll.entities.Office;
import com.spring.payroll.entities.Province;
import com.spring.payroll.entities.UserAddressInfo;
import com.spring.payroll.utils.mapper.DistrictMapper;
import com.spring.payroll.utils.mapper.ProvinceMapper;

@Repository
public class OfficeDaoImpl implements OfficeDao {
	
	String sql = "";
	NamedParameterJdbcTemplate template;

	public OfficeDaoImpl() {
		// TODO Auto-generated constructor stub
	}
	
	@Autowired
	public void setDataSource(DataSource dataSource) {
		this.template = new NamedParameterJdbcTemplate(dataSource);
	}

	@Override
	public int createOrUpdateOffice(Office office) {
		sql = "INSERT INTO tbloffice (officeCode, officeName, officeAddress, regGovtDiscountAmt)\r\n" + 
				"VALUES (:officeCode, :officeName, :officeAddress, :regGovtDiscountAmt) \r\n" + 
				"ON DUPLICATE KEY UPDATE\r\n" + 
				"officeName = :officeName, officeAddress = :officeAddress, regGovtDiscountAmt = :regGovtDiscountAmt";
		return template.update(sql, new BeanPropertySqlParameterSource(office));
		
	}

	@Override
	public boolean addOrUpdateDivision(Division division) {
		sql = "INSERT INTO tbldivisions (divCode, divName)\r\n" + 
				"VALUES (:divCode, :divName) \r\n" + 
				"ON DUPLICATE KEY UPDATE\r\n" + 
				"divName = :divName";
		template.update(sql, new BeanPropertySqlParameterSource(division));
		return true;
	}
	
	@Override
	public boolean addOrUpdateBranch(Branch branch) {
		sql = "INSERT INTO tblbranch (regionID, branchID, branchName, officeID)\r\n" + 
				"VALUES (:regionID, :branchID, :branchName, :regionID) \r\n" + 
				"ON DUPLICATE KEY UPDATE\r\n" + 
				"regionID = :regionID, branchName = :branchName, officeID = :officeID";
		template.update(sql, new BeanPropertySqlParameterSource(branch));
		return true;
	}


}
