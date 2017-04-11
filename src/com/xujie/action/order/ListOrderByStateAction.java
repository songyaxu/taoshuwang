package com.xujie.action.order;

import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.xujie.service.OrderService;

@SuppressWarnings("serial")
public class ListOrderByStateAction extends ActionSupport{
	private int state;
	private OrderService orderService;
	public int getState() {
		return state;
	}
	public void setState(int state) {
		this.state = state;
	}
	public OrderService getOrderService() {
		return orderService;
	}
	public void setOrderService(OrderService orderService) {
		this.orderService = orderService;
	}
	@SuppressWarnings("unchecked")
	public String execute() throws Exception {
		System.out.println("按订单装填查找！");
		@SuppressWarnings("rawtypes")
		Map requestList = (Map) ActionContext.getContext().get("request");
		requestList.put("list", this.orderService.findOrderByState(state));
		return SUCCESS;
	}
}
