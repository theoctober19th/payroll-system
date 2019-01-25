package com.spring.payroll.daoimpl;

import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.namedparam.BeanPropertySqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.stereotype.Repository;

import com.spring.payroll.dao.UserDao;
import com.spring.payroll.entities.User;

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
		// TODO Auto-generated method stub
		return null;
		//new BeanPropertyRowMapper<User>(User.class) For select Query
	}


	@Override
	public List<User> getAll() {
		// TODO Auto-generated method stub
		return null;
	}


	@Override
	public int create(User user) {
		query =   "INSERT INTO user_info"
				+ "(firstName, middleName, lastName, sex, phoneNumber, email, dateOfBirth) VALUES"
				+ "(:firstName, :middleName, :lastName, :sex, :phoneNumber, :email, :dateOfBirth)";
		
		int i= template.update(query, new BeanPropertySqlParameterSource(user));
		return i;
	}


	@Override
	public boolean update(long id, User t) {
		// TODO Auto-generated method stub
		return true;
	}


	@Override
	public boolean delete(User t) {
		// TODO Auto-generated method stub
		return true;
	}

//	@Override
//	public boolean createUser() {
//		String query="";
//		return template.update(sql, paramMap);
//	}

}
