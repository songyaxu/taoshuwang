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
		System.out.println("发货！"+order.getOrderid());
		System.out.println(order.getPassport());
		System.out.println(order.getState());
		if(order.getState()==1)
		{
			if(order.getPassport()!=null&&order.getPassport()!=""&&order.getPassportno()!=null&&order.getPassportno()!="")
			{
				order.setState(2);
				this.orderService.updateOrder(order);
				message="订单发货成功";
			}
			else
				message="请填写物流名称或物流单号!";	
		}
		else
			message="订单无需发货！";
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
			message = "关闭订单成功！";
			return "closeorder";
		}
		else{
			message="无法关闭订单！可能因为订单已付款或已完成！";
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
			message="退款成功！";
			return "refundok";
		}
		else
		{
			message="订单无需退款！";
			return ERROR;
		}
		
	}
}