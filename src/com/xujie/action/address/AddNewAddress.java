package com.xujie.action.address;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;
import com.xujie.entity.Address;
import com.xujie.entity.User;
import com.xujie.service.AddressService;

@SuppressWarnings("serial")
public class AddNewAddress extends ActionSupport{
	private Address address;
	private AddressService addressService;
	public Address getAddress() {
		return address;
	}
	public void setAddress(Address address) {
		this.address = address;
	}
	public AddressService getAddressService() {
		return addressService;
	}
	public void setAddressService(AddressService addressService) {
		this.addressService = addressService;
	}
	public String execute(){
		HttpServletRequest request = ServletActionContext.getRequest();
		HttpSession session = request.getSession();
		User user = (User) session.getAttribute("user");
		address.setUserid(user.getUserid());
		this.addressService.AddNewAddress(address);
		return SUCCESS;
	}
}
