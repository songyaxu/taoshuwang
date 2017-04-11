package com.xujie.service.impl;
import java.util.List;

import com.xujie.dao.AdminDAO;
import com.xujie.entity.Admin;
import com.xujie.service.AdminService;
public class AdminServiceImpl implements AdminService {
	private AdminDAO adminDao;
	public AdminDAO getAdminDAO() {
		return adminDao;
	}
	public void setAdminDao(AdminDAO adminDao) {
		this.adminDao = adminDao;
	}
	public List<Admin> findAllAdmin() {
		return this.adminDao.findAllAdmin();
	}
	public Admin findUserById(Integer id) {
		return this.adminDao.findAdminById(id);
	}
	public void removeAdmin(Admin admin) {
		this.adminDao.removeAdmin(admin);	}
	public void saveAdmin(Admin admin) {
		this.adminDao.saveAdmin(admin);
	}
	public void updateAdmin(Admin admin) {
		this.adminDao.updateAdmin(admin);
	}
	public Admin loginAdmin(Admin admin) {
		return this.adminDao.loginAdmin(admin);
	}
}
