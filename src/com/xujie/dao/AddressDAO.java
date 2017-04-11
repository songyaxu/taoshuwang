package com.xujie.dao;

import java.util.List;
import com.xujie.entity.Address;
public interface AddressDAO {
	public Address findAddressById(Integer id);
	public List<Address> findAddressByUserid(Integer userid);
	public void AddNewAddress(Address address);
	public void updateAddress(Address address);
}
