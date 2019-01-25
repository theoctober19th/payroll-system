package com.spring.payroll.serviceimpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.payroll.dao.UserDao;
import com.spring.payroll.entities.User;
import com.spring.payroll.service.UserService;

@Service
public class UserServiceImpl implements UserService {
	@Autowired
	UserDao userDao;

	public UserServiceImpl() {
	}

	@Override
	public boolean createUser(User user) {
		userDao.create(user);
		return true;
	}

}
