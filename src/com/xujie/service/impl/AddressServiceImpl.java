package com.xujie.service.impl;

import java.util.List;

import com.xujie.dao.AddressDAO;
import com.xujie.entity.Address;
import com.xujie.service.AddressService;

public class AddressServiceImpl implements AddressService{
	private AddressDAO addressDao;
	public AddressDAO getAddressDao() {
		return addressDao;
	}
	public void setAddressDao(AddressDAO addressDao) {
		this.addressDao = addressDao;
	}
	public Address findAddressById(Integer id) {
		return this.addressDao.findAddressById(id);
	}
	public List<Address> findAddressByUserid(Integer userid) {
		return (List<Address>) this.addressDao.findAddressByUserid(userid);
	}
	public void AddNewAddress(Address address){
		this.addressDao.AddNewAddress(address);
	}
	public void updateAddress(Address address){
		this.addressDao.updateAddress(address);
	}
}
