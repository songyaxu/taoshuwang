package com.xujie.action.order;

import java.sql.Date;

import com.opensymphony.xwork2.ActionSupport;
import com.xujie.entity.Order;
import com.xujie.service.OrderService;

@SuppressWarnings("serial")
public class PayOrder extends ActionSupport{
	private OrderService orderService;
	private Order order;
	private String message;
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
	public String getMessage(){
		return message;
	}
	public void setMessage(String message){
		this.message=message;
	}
	public String execute(){
		Order morder=this.orderService.findOrderById(this.order.getOrderid());
		Date paytime = new Date(System.currentTimeMillis());
		morder.setPaytime(paytime);
		morder.setState(1);
		this.orderService.updateOrder(morder);
		message="支付成功!";
		return SUCCESS;
	}
	public String close(){
		Order morder=this.orderService.findOrderById(this.order.getOrderid());
		if(morder.getState()==0)
		{
			Date endtime = new Date(System.currentTimeMillis());
			morder.setState(4);
			morder.setEndtime(endtime);
			this.orderService.updateOrder(morder);
			message="关闭订单!";
			return  "closesuc";
		}
		else{
			morder.setState(5);
			this.orderService.updateOrder(morder);
			message="正在申请取消订单并退款，请耐心等待管理员处理。谢谢配合";
			return "closesucc";
		}
	}
	public String recevice(){
		Order morder=this.orderService.findOrderById(this.order.getOrderid());
		Date endtime = new Date(System.currentTimeMillis());
		morder.setEndtime(endtime);
		morder.setState(3);
		this.orderService.updateOrder(morder);
		message="收货成功!";
		return "recesuc";
	}
}
