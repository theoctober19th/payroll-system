package com.spring.payroll.utils.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.http.converter.feed.RssChannelHttpMessageConverter;
import org.springframework.jdbc.core.RowMapper;

import com.spring.payroll.entities.District;
import com.spring.payroll.entities.User;
import com.spring.payroll.entities.UserAddressInfo;
import com.spring.payroll.entities.UserLogin;

public class DistrictMapper implements RowMapper<District>{

	public DistrictMapper() {
		// TODO Auto-generated constructor stub
	}

	@Override
	public District mapRow(ResultSet rs, int rowNum) throws SQLException {
		District district = new District();
		
		district.setId(rs.getInt("id"));
		district.setDistrictName(rs.getString("districtName"));
		
		return district;
	}

}
