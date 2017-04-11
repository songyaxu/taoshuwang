package com.xujie.action.address;

import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.xujie.entity.Address;
import com.xujie.service.AddressService;

@SuppressWarnings("serial")
public class ListUserAddress extends ActionSupport{
	private Address address;
	private AddressService  addressService;
	private int userid;
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
	public int getUserid() {
		return userid;
	}
	public void setUserid(int userid) {
		this.userid = userid;
	}
	 @SuppressWarnings({ "unchecked", "rawtypes" })
	public String execute(){
		 Map request = (Map)ActionContext.getContext().get("request");	
		 request.put("addresslist", this.addressService.findAddressByUserid(userid));
		 return SUCCESS;
	 }
}
