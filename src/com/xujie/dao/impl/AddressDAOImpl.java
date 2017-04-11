package com.xujie.dao.impl;

import java.util.List;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;
import com.xujie.dao.AddressDAO;
import com.xujie.entity.Address;

public class AddressDAOImpl extends HibernateDaoSupport implements AddressDAO{

	public Address findAddressById(Integer id) {
		return (Address) this.getHibernateTemplate().get(Address.class, id);
	}
	@SuppressWarnings("unchecked")
	public List<Address> findAddressByUserid(Integer userid){
		String hql = "from Address address where address.userid='" + userid+ "'";
		return (List<Address>) this.getHibernateTemplate().find(hql); 
	}
	public void AddNewAddress(Address address){
		this.getHibernateTemplate().save(address);
	}
	public void updateAddress(Address address){
		this.getHibernateTemplate().update(address);
	}
}
