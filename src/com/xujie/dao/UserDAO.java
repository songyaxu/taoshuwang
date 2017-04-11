package com.xujie.dao;
import java.util.List;

import com.xujie.entity.User;
public interface UserDAO {
	public void saveUser(User user);
	public List<User> findAllUsers();
	public void removeUser(User user);
	public void updateUser(User user);
	public User findUserById(Integer id);
	public User loginUser(User user);
	public User findUserByUsername(User user);
}
