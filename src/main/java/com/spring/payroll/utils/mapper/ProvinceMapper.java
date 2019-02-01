package com.spring.payroll.utils.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.http.converter.feed.RssChannelHttpMessageConverter;
import org.springframework.jdbc.core.RowMapper;

import com.spring.payroll.entities.District;
import com.spring.payroll.entities.Province;
import com.spring.payroll.entities.User;
import com.spring.payroll.entities.UserAddressInfo;
import com.spring.payroll.entities.UserLogin;

public class ProvinceMapper implements RowMapper<Province>{

	public ProvinceMapper() {
		// TODO Auto-generated constructor stub
	}

	@Override
	public Province mapRow(ResultSet rs, int rowNum) throws SQLException {
		Province province = new Province();
		
		province.setId(rs.getInt("id"));
		province.setProvinceName(rs.getString("provinceName"));
		
		return province;
	}

}
