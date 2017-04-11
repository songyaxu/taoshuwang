package com.xujie.action.order;
import java.sql.Date;

import com.opensymphony.xwork2.ActionSupport;
import com.xujie.entity.Address;
import com.xujie.entity.Order;
import com.xujie.service.AddressService;
import com.xujie.service.OrderService;

@SuppressWarnings("serial")
public class OrderAdminServiceAction extends ActionSupport {
	private Address address;
	private AddressService addressService; 
	private Order order;
	private OrderService orderService;
	private String message;
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	public Order getOrder(){
		return order;
	}
	public void setOrder(Order order){
		this.order=order;
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
	public String sendPackage(){
		System.out.println("������"+order.getOrderid());
		System.out.println(order.getPassport());
		System.out.println(order.getState());
		if(order.getState()==1)
		{
			if(order.getPassport()!=null&&order.getPassport()!=""&&order.getPassportno()!=null&&order.getPassportno()!="")
			{
				order.setState(2);
				this.orderService.updateOrder(order);
				message="���������ɹ�";
			}
			else
				message="����д�������ƻ���������!";	
		}
		else
			message="�������跢����";
			return "sendsuccess";
	}
	public String close() {
		Order oldorder=orderService.findOrderById(order.getOrderid());
		if(oldorder.getState()==1)
		{
			oldorder.setState(4);
			Date time=new Date(System.currentTimeMillis());
			oldorder.setEndtime(time);
			this.orderService.updateOrder(oldorder);
			message = "�رն����ɹ���";
			return "closeorder";
		}
		else{
			message="�޷��رն�����������Ϊ�����Ѹ��������ɣ�";
			return ERROR;
		}
		
	}
	public String refund(){
		Order oldorder=orderService.findOrderById(order.getOrderid());
		if(oldorder.getState()==5)
		{
			Date time=new Date(System.currentTimeMillis());
			oldorder.setEndtime(time);
			oldorder.setState(4);
			this.orderService.updateOrder(oldorder);
			message="�˿�ɹ���";
			return "refundok";
		}
		else
		{
			message="���������˿";
			return ERROR;
		}
		
	}
}