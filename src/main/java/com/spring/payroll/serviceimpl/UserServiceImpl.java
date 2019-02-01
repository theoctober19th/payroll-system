package com.spring.payroll.serviceimpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.payroll.dao.user.UserDao;
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

	@Override
	public List<User> getAllUsers() {
		return userDao.getAll();
	}

	@Override
	public User getUserByID(int id) {
		return userDao.get(id);
	}

	@Override
	public boolean updateUser(int id, User user) {
		return userDao.update(id, user);
	}

	@Override
	public boolean deleteUser(int id) {
		return userDao.delete(id);
	}

}
