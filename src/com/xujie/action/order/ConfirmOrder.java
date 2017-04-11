package com.xujie.action.order;

import java.util.Iterator;
import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.apache.struts2.ServletActionContext;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.xujie.entity.Cart;
import com.xujie.entity.User;
import com.xujie.service.AddressService;

@SuppressWarnings("serial")
public class ConfirmOrder extends ActionSupport{
	private AddressService addressService;
	private String message;
	public AddressService getAddressService() {
		return addressService;
	}

	public void setAddressService(AddressService addressService) {
		this.addressService = addressService;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}
	@SuppressWarnings({ "rawtypes", "unchecked" })
	public String execute(){
		HttpServletRequest request = ServletActionContext.getRequest();
		HttpSession session = request.getSession();
		List<Cart> cartlist=(List<Cart>)session.getAttribute("cart");
		User user=(User) session.getAttribute("user");
		Map requestList = (Map) ActionContext.getContext().get("request");
		requestList.put("addresslist", this.addressService.findAddressByUserid(user.getUserid()));
		if(cartlist==null)
		{
			message="购物车没有任何商品！";
			return ERROR;
		}
		else
		{
			for(Iterator it = cartlist.iterator();it.hasNext(); ){
		        Cart curcart = (Cart)it.next();
		        curcart.setSum(Integer.parseInt(request.getParameter("quantity"+curcart.getBookid())));
		        System.out.println(curcart.getBookname()+" "+curcart.getSum());
			}
			session.setAttribute("cart",cartlist);
			return SUCCESS;
		}
	}
}
