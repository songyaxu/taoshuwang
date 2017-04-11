package com.xujie.action.order;

import com.opensymphony.xwork2.ActionSupport;
import com.xujie.entity.Address;
import com.xujie.entity.Order;
import com.xujie.service.AddressService;
import com.xujie.service.OrderService;

@SuppressWarnings("serial")
public class UpdatePOrder extends ActionSupport{
	private Order order;
	private OrderService orderService;
	private Address address;
	private AddressService addressService;
	public Order getOrder() {
		return order;
	}
	public void setOrder(Order order) {
		this.order = order;
	}
	public OrderService getOrderService() {
		return orderService;
	}
	public void setOrderService(OrderService orderService) {
		this.orderService = orderService;
	}
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
		this.order = orderService.findOrderById(order.getOrderid());
		this.address=addressService.findAddressById(this.order.getAddressid());
		return SUCCESS;
	}
}
