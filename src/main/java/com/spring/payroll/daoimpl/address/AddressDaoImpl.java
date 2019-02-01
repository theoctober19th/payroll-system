package com.spring.payroll.daoimpl.address;

import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.stereotype.Repository;

import com.spring.payroll.dao.address.AddressDao;
import com.spring.payroll.entities.District;
import com.spring.payroll.entities.Province;
import com.spring.payroll.entities.UserAddressInfo;
import com.spring.payroll.utils.mapper.DistrictMapper;
import com.spring.payroll.utils.mapper.ProvinceMapper;

@Repository
public class AddressDaoImpl implements AddressDao {
	
	String sql = "";
	NamedParameterJdbcTemplate template;

	public AddressDaoImpl() {
		// TODO Auto-generated constructor stub
	}
	
	@Autowired
	public void setDataSource(DataSource dataSource) {
		this.template = new NamedParameterJdbcTemplate(dataSource);
	}

	@Override
	public List<District> getAllDistricts() {
		sql = "SELECT * FROM\r\n" + 
				"nepal_districts;";
		List districts = (List) template.query(sql, new DistrictMapper());
		return districts;
	}

	@Override
	public List<Province> getAllProvinces() {
		sql = "SELECT * FROM\r\n" + 
				"nepal_provinces;";
		List provinces = (List) template.query(sql, new ProvinceMapper());
		return provinces;
	}


}
