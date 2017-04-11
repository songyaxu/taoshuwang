package com.xujie.dao.impl;
import java.util.List;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.xujie.dao.UserDAO;
import com.xujie.entity.User;
public class UserDAOImpl extends HibernateDaoSupport implements UserDAO {
	public void saveUser(User user) {
		this.getHibernateTemplate().save(user);
	}
	@SuppressWarnings("unchecked")
	public List<User> findAllUsers() {
		String hql = "from User user order by user.userid desc";
		return (List<User>) this.getHibernateTemplate().find(hql);
	}
	public void removeUser(User user) {
		this.getHibernateTemplate().delete(user);
	}
	public void updateUser(User user) {
		this.getHibernateTemplate().update(user);
	}
	public User findUserById(Integer id) {
		User user = (User) this.getHibernateTemplate().get(User.class, id);
		return user;
	}
	@SuppressWarnings("unchecked")
	public User loginUser(User user) {
		String hql = "from User user where user.username='"
				+ user.getUsername() + "' and user.password='"
				+ user.getPassword() + "'";
		List<User> users = (List<User>) this.getHibernateTemplate().find(hql);
		if (users.size() > 0) {
			return users.get(0);
		}
		return null;
	}
	@SuppressWarnings("unchecked")
	public User findUserByUsername(User user){
		String hql = "from User user where user.username='"
				+ user.getUsername() + "'";
		List<User> users = (List<User>) this.getHibernateTemplate().find(hql);
		if (users.size() > 0) {
			return users.get(0);
		}
		return null;
	}
}
