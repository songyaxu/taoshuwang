package com.xujie.action.user;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.apache.struts2.ServletActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.xujie.entity.Cart;
import com.xujie.entity.User;
import com.xujie.service.UserService;
@SuppressWarnings("serial")
public class UserAction extends ActionSupport {
	private User user;
	private UserService userService;
	private String message;
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public UserService getUserService() {
		return userService;
	}
	public void setUserService(UserService userService) {
		this.userService = userService;
	}
	@Override
	public String execute() throws Exception {
		System.out.println("错误");
		return SUCCESS;
	}
	public String login() throws Exception {
		System.out.println("正确");
		User userLogin = userService.loginUser(user);
		if (userLogin != null) {
			HttpServletRequest request = ServletActionContext.getRequest();
			HttpSession session = request.getSession();
			session.setAttribute("user", userLogin);
			return SUCCESS;
		}
		return INPUT;
	}
	public String loginOut() throws Exception {
		HttpServletRequest request = ServletActionContext.getRequest();
		HttpSession session = request.getSession();
		session.removeAttribute("user");
		session.removeAttribute("cart");
		return "loginout";
	}
	public String userUpdateInfo() {
		HttpServletRequest request = ServletActionContext.getRequest();
		HttpSession session = request.getSession();
		User user = (User) session.getAttribute("user");
		this.user = this.userService.findById(user.getUserid());
		return "userUpdate";
	}
	public String updateUser() {
		this.userService.update(user);
		HttpServletRequest request = ServletActionContext.getRequest();
		HttpSession session = request.getSession();
		session.setAttribute("user", user);
		message = "修改信息成功。";
		return "updateSuc";
	}
	public String forgetpassword(){
		User fpuser=this.userService.findUserByUsername(user);
		if(fpuser!=null)
		{
			System.out.println("fq="+fpuser.getCheck()+" "+fpuser.getAnswer()+"cur="+user.getCheck()+" "+user.getAnswer());
			if(fpuser.getCheck().equals(user.getCheck())&&fpuser.getAnswer().equals(user.getAnswer()))
			{
				this.user=this.userService.findUserByUsername(fpuser);
				return "forgetsuccess";
			}
			else
			{
				message="密保问题或者密保答案不正确。";
				return "forgetfail";
			}
		}
		else
		{
			message="用户名输入不正确，请检查用户名。";
			return "forgetfail";
		}
	}
	public String modifyPassword(){
		User modifyPWUser=this.userService.findUserByUsername(user);
		if(modifyPWUser!=null)
		{
			modifyPWUser.setPassword(user.getPassword());
			this.userService.update(modifyPWUser);
			HttpServletRequest request = ServletActionContext.getRequest();
			HttpSession session = request.getSession();
			User nuser = (User) session.getAttribute("user");
			if(nuser!=null)
			{
				session.setAttribute("user",modifyPWUser);
			}
			return "modifySuc";
		}
		else
		{
			message="出现错误";
			return ERROR;
		}
	}
}