package com.spring.payroll.utils.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.Map;

import org.springframework.http.converter.feed.RssChannelHttpMessageConverter;
import org.springframework.jdbc.core.RowMapper;

import com.spring.payroll.entities.User;
import com.spring.payroll.entities.UserAccount;
import com.spring.payroll.entities.UserAddressInfo;
import com.spring.payroll.entities.UserLogin;

public class UserMapper implements RowMapper<User>{

	public UserMapper() {
		// TODO Auto-generated constructor stub
	}

	@Override
	public User mapRow(ResultSet rs, int rowNum) throws SQLException {
		User user = new User();
		UserLogin userLogin = new UserLogin();
		UserAddressInfo userAddress = new UserAddressInfo();
		UserAccount userAccount = new UserAccount();
		
		user.setId(rs.getInt("id"));
		user.setFirstName(rs.getString("firstName"));
		user.setLastName(rs.getString("lastName"));
		user.setMiddleName(rs.getString("middleName"));
		user.setSex(rs.getString("sex"));
		user.setPhoneNumber(rs.getString("phoneNumber"));
		user.setEmail(rs.getString("email"));
		user.setDateOfBirth(rs.getString("dateOfBirth"));
		user.setAddressID(rs.getInt("addressID"));
		user.setCreatedDate(rs.getString("createdDate"));
		
		userAddress.setId(rs.getInt("addressID"));
		userAddress.setProvinceID(rs.getInt("provinceID"));
		userAddress.setProvinceName(rs.getString("provinceName"));
		userAddress.setDistrictID(rs.getInt("districtID"));
		userAddress.setDistrictName(rs.getString("districtName"));
		userAddress.setVillageMunicipality(rs.getString("villageMunicipality"));
		userAddress.setWardNumber(rs.getInt("wardNumber"));
		userAddress.setStreetAddress(rs.getString("streetAddress"));
		user.setAddressInfo(userAddress);
		
		userLogin.setUsername(rs.getString("username"));
		userLogin.setId(rs.getInt("loginID"));
		user.setLoginInfo(userLogin);
		
		userAccount.setActivationDate(rs.getString("activationDate"));
		userAccount.setExpiryDate(rs.getString("expiryDate"));
		userAccount.setPasswordChangeFreq(rs.getInt("passwordChangeFreq"));
		userAccount.setRoleID(rs.getInt("roleID"));
		user.setAccountInfo(userAccount);
		
		return user;
	}
	
	public static Map<String, Object> getParamMap(User user){
		Map<String, Object> paramMap = new HashMap<String, Object>();
		
		paramMap.put("firstName", user.getFirstName());
		paramMap.put("middleName", user.getMiddleName());
		paramMap.put("lastName", user.getLastName());
		paramMap.put("sex", user.getSex());
		paramMap.put("phoneNumber", user.getPhoneNumber());
		paramMap.put("email", user.getEmail());
		paramMap.put("dateOfBirth", user.getDateOfBirth());
		paramMap.put("provinceID", user.getAddressInfo().getProvinceID());
		paramMap.put("districtID", user.getAddressInfo().getDistrictID());
		paramMap.put("villageMunicipality", user.getAddressInfo().getVillageMunicipality());
		paramMap.put("wardNumber", user.getAddressInfo().getWardNumber());
		paramMap.put("streetAddress", user.getAddressInfo().getStreetAddress());
		paramMap.put("activationDate", user.getAccountInfo().getActivationDate());
		paramMap.put("expiryDate", user.getAccountInfo().getExpiryDate());
		paramMap.put("roleID", user.getAccountInfo().getRoleID());
		paramMap.put("passwordChangeFreq", user.getAccountInfo().getPasswordChangeFreq());
		
		return paramMap;
	}

}
