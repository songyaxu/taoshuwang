package com.xujie.action.order;
import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.apache.struts2.ServletActionContext;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.xujie.entity.Order;
import com.xujie.entity.User;
import com.xujie.service.OrderService;
@SuppressWarnings("serial")
public class OrderServiceAction extends ActionSupport {
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
	@SuppressWarnings({ "unchecked", "rawtypes" })
	public String execute() throws Exception {
		HttpServletRequest request = ServletActionContext.getRequest();
		HttpSession session = request.getSession();
		User user = (User) session.getAttribute("user");
		List<Order> orders = this.orderService.getUserOrder(user);
		Map requestList = (Map) ActionContext.getContext().get("request");
		requestList.put("listUserOrder", orders);
		return SUCCESS;
	}
}