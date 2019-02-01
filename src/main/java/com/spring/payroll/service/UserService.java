package com.spring.payroll.service;

import java.util.List;

import com.spring.payroll.entities.User;

public interface UserService {
	public boolean createUser(User user);
	public List<User> getAllUsers();
	public User getUserByID(int id);
	public boolean updateUser(int id, User user);
	public boolean deleteUser(int id);
}
