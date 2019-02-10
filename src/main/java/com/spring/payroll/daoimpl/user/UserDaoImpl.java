package com.spring.payroll.daoimpl.user;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.sql.DataSource;

import org.mindrot.jbcrypt.BCrypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.namedparam.BeanPropertySqlParameterSource;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.jdbc.core.namedparam.SqlParameterSource;
import org.springframework.stereotype.Repository;

import com.spring.payroll.dao.user.UserDao;
import com.spring.payroll.entities.User;
import com.spring.payroll.entities.UserLogin;
import com.spring.payroll.utils.mapper.UserMapper;

@Repository
public class UserDaoImpl implements UserDao {
	
	private NamedParameterJdbcTemplate template;

	String query;
	
	@Autowired
	public void setDataSource(DataSource dataSource) {
		this.template = new NamedParameterJdbcTemplate(dataSource);
	}
	


	@Override
	public User get(long id) {
		query = "SELECT user_info.id, firstName, middleName, lastName, sex, phoneNumber, email, dateOfBirth, createdDate, user_address_info.provinceID, nepal_provinces.provinceName, user_address_info.districtID, nepal_districts.districtName, user_address_info.villageMunicipality, user_address_info.wardNumber, user_address_info.streetAddress, user_login_info.username, user_company.name, user_accounts.passwordChangeFreq, user_accounts.roleID, user_accounts.expiryDate, user_accounts.activationDate, user_address_info.id as addressID, user_login_info.id as loginID\r\n" + 
				"FROM user_info\r\n" + 
				"INNER JOIN user_address_info ON user_info.addressID = user_address_info.id\r\n" + 
				"INNER JOIN user_login_info on user_info.id = user_login_info.userID\r\n" + 
				"INNER JOIN user_account_membership on user_account_membership.userID = user_info.id\r\n" + 
				"INNER JOIN user_company ON user_account_membership.companyID = user_company.id\r\n" + 
				"INNER JOIN user_accounts on user_company.accountID = user_accounts.id\r\n" + 
				"INNER JOIN nepal_provinces on user_address_info.provinceID = nepal_provinces.id\r\n" + 
				"INNER JOIN nepal_districts on user_address_info.districtID = nepal_districts.id\r\n" + 
				"where user_info.id = :id;";
		SqlParameterSource params = new MapSqlParameterSource("id", id);
		User user = (User) template.queryForObject(query, params, new UserMapper());
		return user;
	}


	@Override
	public List<User> getAll() {
		query = "SELECT user_info.id, firstName, middleName, lastName, sex, phoneNumber, email, dateOfBirth, createdDate, user_address_info.provinceID, nepal_provinces.provinceName, user_address_info.districtID, nepal_districts.districtName, user_address_info.villageMunicipality, user_address_info.wardNumber, user_address_info.streetAddress, user_login_info.username, user_company.name, user_accounts.passwordChangeFreq, user_accounts.roleID, user_accounts.expiryDate, user_accounts.activationDate, user_address_info.id as addressID, user_login_info.id as loginID\r\n" + 
				"FROM user_info\r\n" + 
				"INNER JOIN user_address_info ON user_info.addressID = user_address_info.id\r\n" + 
				"INNER JOIN user_login_info on user_info.id = user_login_info.userID\r\n" + 
				"INNER JOIN user_account_membership on user_account_membership.userID = user_info.id\r\n" + 
				"INNER JOIN user_company ON user_account_membership.companyID = user_company.id\r\n" + 
				"INNER JOIN user_accounts on user_company.accountID = user_accounts.id\r\n" + 
				"INNER JOIN nepal_provinces on user_address_info.provinceID = nepal_provinces.id\r\n" + 
				"INNER JOIN nepal_districts on user_address_info.districtID = nepal_districts.id;";
		List users = (List) template.query(query, new UserMapper());
		return users;
	}


	@Override
	public int create(User user) {
		
		String passwordSalt = BCrypt.gensalt();
		String hashedPassword = BCrypt.hashpw(user.getLoginInfo().getPassword(), passwordSalt);
		
		query = "INSERT INTO user_address_info"
				+ "(provinceID, districtID, villageMunicipality, wardNumber, streetAddress) VALUES"
				+ "(:provinceID, :districtID, :villageMunicipality, :wardNumber, :streetAddress);";
		template.update(query, new BeanPropertySqlParameterSource(user.getAddressInfo()));
		
//		query =   "INSERT INTO user_info"
//		+ "(firstName, middleName, lastName, sex, phoneNumber, email, dateOfBirth) VALUES"
//		+ "(:firstName, :middleName, :lastName, :sex, :phoneNumber, :email, :dateOfBirth)";
		
		query = "INSERT INTO user_info"
				+ "(firstName, middleName, lastName, sex, phoneNumber, email, dateOfBirth, addressID) VALUES"
				+ "(:firstName, :middleName, :lastName, :sex, :phoneNumber, :email, :dateOfBirth, (SELECT MAX(id) FROM user_address_info));";
		template.update(query, new BeanPropertySqlParameterSource(user));
		
		query = "INSERT INTO user_login_info"
				+ "(username, passwordSalt, passwordHash, userID) VALUES"
				+ "(:username, \"" + passwordSalt  + "\", \"" + hashedPassword + "\", (SELECT MAX(id) FROM user_info));";
		template.update(query, new BeanPropertySqlParameterSource(user.getLoginInfo()));
		
		query = "INSERT INTO user_accounts"
				+ "(name, activationDate, expiryDate, passwordChangeFreq, roleID, activeStatus) VALUES"
				+ "( \"" + user.getLoginInfo().getUsername() + "\", :activationDate, :expiryDate, :passwordChangeFreq, :roleID, 1);";
		template.update(query, new BeanPropertySqlParameterSource(user.getAccountInfo()));
		
		query = "INSERT INTO user_company"
				+ "(name, accountID) VALUES"
				+ "(:username, (SELECT MAX(id) FROM user_accounts));";
		template.update(query, new BeanPropertySqlParameterSource(user.getLoginInfo()));
		
		query = "INSERT INTO user_account_membership"
				+ "(userID, companyID) VALUES "
				+ "((SELECT MAX(id) FROM user_info), (SELECT MAX(id) FROM user_company) )";
		template.update(query, new BeanPropertySqlParameterSource(user));
		return 0;
	}


	@Override
	public boolean update(long id, User user) {
		
		Map<String, Object> paramMap = UserMapper.getParamMap(user);
				
		query = "UPDATE `user_info` \r\n" + 
				"INNER JOIN user_address_info ON user_info.addressID = user_address_info.id\r\n" + 
				"INNER JOIN user_account_membership on user_account_membership.userID = user_info.id\r\n" + 
				"INNER JOIN user_company ON user_account_membership.companyID = user_company.id\r\n" + 
				"INNER JOIN user_accounts ON user_company.accountID = user_accounts.id\r\n" + 
				"SET\r\n" + 
				"user_info.`firstName` = :firstName,\r\n" + 
				"user_info.`middleName` = :middleName,\r\n" + 
				"user_info.`lastName` = :lastName,\r\n" + 
				"user_info.`sex` = :sex,\r\n" + 
				"user_info.`phoneNumber` = :phoneNumber,\r\n" + 
				"user_info.`email` = :email,\r\n" + 
				"user_info.`dateOfBirth` = :dateOfBirth,\r\n" + 
				"user_address_info.`provinceID` = :provinceID,\r\n" + 
				"user_address_info.`districtID` = :districtID,\r\n" + 
				"user_address_info.`villageMunicipality` = :villageMunicipality,\r\n" + 
				"user_address_info.`wardNumber` = :wardNumber,\r\n" + 
				"user_address_info.`streetAddress` = :streetAddress,\r\n" + 
				"user_accounts.`activationDate` = :activationDate,\r\n" + 
				"user_accounts.`expiryDate` = :expiryDate,\r\n" + 
				"user_accounts.`roleID` = :roleID,\r\n" + 
				"user_accounts.`passwordChangeFreq` = :passwordChangeFreq\r\n" + 
				"WHERE user_info.`id` = :userID;";
		
		paramMap.put("userID", id);
		
		template.update(query, paramMap);
		return true;
	}


	@Override
	public boolean delete(long id) {
		query = "DELETE user_info, user_address_info, user_account_membership, user_company, user_accounts, user_login_info " +
				"FROM `user_info` \r\n" + 
				"INNER JOIN user_address_info ON user_info.addressID = user_address_info.id\r\n" + 
				"INNER JOIN user_login_info ON user_info.id = user_login_info.userID\r\n" + 
				"INNER JOIN user_account_membership on user_account_membership.userID = user_info.id\r\n" + 
				"INNER JOIN user_company ON user_account_membership.companyID = user_company.id\r\n" + 
				"INNER JOIN user_accounts ON user_company.accountID = user_accounts.id\r\n" + 
				"WHERE user_info.id = :id";
		SqlParameterSource params = new MapSqlParameterSource("id", id);
		template.update(query, params);
		return true;
	}



	@Override
	public int getCount() {
		query = "SELECT COUNT(*) FROM user_info";
		return template.queryForInt(query, new HashMap());
	}

	@Override
	public UserLogin getUserLoginInfo(String username) {
		query = "SELECT * FROM user_login_info WHERE username = :username";
		SqlParameterSource params = new MapSqlParameterSource("username", username);
		return template.queryForObject(query,params, new BeanPropertyRowMapper(UserLogin.class));
	}


}
