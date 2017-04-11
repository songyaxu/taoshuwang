package com.xujie.service.impl;
import java.util.List;

import com.xujie.dao.UserDAO;
import com.xujie.entity.User;
import com.xujie.service.UserService;
public class UserServiceImpl implements UserService {
	private UserDAO userDao;
	public UserDAO getUserDao() {
		return userDao;
	}
	public void setUserDao(UserDAO userDao) {
		this.userDao = userDao;
	}
	public void save(User user) {
		this.userDao.saveUser(user); // 完成真正的业务逻辑
	}
	public List<User> findAll() {
		return this.userDao.findAllUsers();
	}
	public void delete(User user) {
		this.userDao.removeUser(user);
	}
	public void update(User user) {
		this.userDao.updateUser(user);
	}
	public User findById(Integer id) {
		return this.userDao.findUserById(id);
	}
	public User loginUser(User user) {
		return this.userDao.loginUser(user);
	}
	public User findUserByUsername(User user){
		return this.userDao.findUserByUsername(user);
	}
}