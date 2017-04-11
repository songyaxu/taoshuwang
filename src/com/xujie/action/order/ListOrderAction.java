package com.xujie.action.order;
import java.util.Map;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.xujie.service.OrderService;
@SuppressWarnings("serial")
public class ListOrderAction extends ActionSupport {
	private OrderService orderService;
	private String message;
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	public OrderService getOrderService() {
		return orderService;
	}
	public void setOrderService(OrderService orderService) {
		this.orderService = orderService;
	}
	@SuppressWarnings("unchecked")
	@Override
	public String execute() throws Exception {
		@SuppressWarnings("rawtypes")
		Map requestList = (Map) ActionContext.getContext().get("request");
		requestList.put("list", this.orderService.findAllOrder());
		System.out.println("OK");
		return SUCCESS;
	}
}