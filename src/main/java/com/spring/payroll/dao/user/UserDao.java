package com.spring.payroll.dao.user;

import java.util.List;

import com.spring.payroll.dao.Dao;
import com.spring.payroll.entities.User;
import com.spring.payroll.entities.UserLogin;

public interface UserDao extends Dao<User>{
	public UserLogin getUserLoginInfo(String username);
}
