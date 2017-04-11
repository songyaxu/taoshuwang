package com.xujie.service;

import java.util.List;
import com.xujie.entity.Address;

public interface AddressService {
	public Address findAddressById(Integer id);
	public List<Address> findAddressByUserid(Integer userid);
	public void AddNewAddress(Address address);
	public void updateAddress(Address address);
}
