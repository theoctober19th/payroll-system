package com.spring.payroll.dao;

import java.util.List;

public interface Dao<T> {
	T get(long id);
	List<T> getAll();
	int create(T t);
	boolean update(long id, T t);
	boolean delete(long id);
}
