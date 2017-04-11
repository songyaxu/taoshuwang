package com.xujie.action.address;

import com.opensymphony.xwork2.ActionSupport;
import com.xujie.entity.Address;
import com.xujie.service.AddressService;

@SuppressWarnings("serial")
public class upddatePAddress extends ActionSupport{
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
		this.addressService.updateAddress(address);
		return SUCCESS;
	}
}
