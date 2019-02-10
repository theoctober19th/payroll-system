package com.spring.payroll.serviceimpl;

import java.util.List;

import org.mindrot.jbcrypt.BCrypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.payroll.dao.user.UserDao;
import com.spring.payroll.entities.User;
import com.spring.payroll.entities.UserLogin;
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

	@Override
	public int getUsersCount() {
		return userDao.getCount();
	}

	@Override
	public boolean verifyUser(String username, String password) {
		UserLogin userLoginInfo = userDao.getUserLoginInfo(username);
		return BCrypt.checkpw(password, userLoginInfo.getPasswordHash());
	}

	@Override
	public User getUserByUsername(String username) {
		UserLogin userLoginInfo = userDao.getUserLoginInfo(username);
		int userID = userLoginInfo.getUserID();
		return this.getUserByID(userID);
	}

}
