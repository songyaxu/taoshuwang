package com.xujie.action.user;
import com.opensymphony.xwork2.ActionSupport;
import com.xujie.entity.User;
import com.xujie.service.UserService;
@SuppressWarnings("serial")
public class UpdatePUser extends ActionSupport {
	private User user;
	private UserService service;
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public UserService getService() {
		return service;
	}
	public void setService(UserService service) {
		this.service = service;
	}
	@Override
	public String execute() throws Exception {
		this.user = this.service.findById(user.getUserid());
		return SUCCESS;
	}
}