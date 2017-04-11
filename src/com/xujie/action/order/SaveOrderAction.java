package com.xujie.action.order;
import java.sql.Date;
import java.util.Iterator;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.apache.struts2.ServletActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.xujie.entity.Order;
import com.xujie.entity.Book;
import com.xujie.entity.Cart;
import com.xujie.entity.User;
import com.xujie.service.BookService;
import com.xujie.service.OrderService;
@SuppressWarnings("serial")
public class SaveOrderAction extends ActionSupport {
	private Order order;
	private OrderService orderService;
	private BookService bookService;
	private String message;
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
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
	public BookService getBookService() {
		return bookService;
	}
	public void setBookService(BookService bookService) {
		this.bookService = bookService;
	}
	@SuppressWarnings({ "unchecked", "rawtypes" })
	@Override
	public String execute() throws Exception {
		HttpServletRequest request = ServletActionContext.getRequest();
		HttpSession session = request.getSession();
		List<Cart> cartlist=(List<Cart>)session.getAttribute("cart");
		User user=(User)session.getAttribute("user");
		if(cartlist==null)
		{
			message="没有可以下单商品！";
			return "addfail";
		}
		else
		{
			for(Iterator it = cartlist.iterator();it.hasNext(); ){
		        Cart curcart = (Cart)it.next();
		        Order neworder=new Order();
		        neworder.setAddressid(this.order.getAddressid());
		        neworder.setBookid(curcart.getBookid());
		        neworder.setBookname(curcart.getBookname());
		        neworder.setMessage(this.order.getMessage());
		        neworder.setNum(curcart.getSum());
		        neworder.setPrice(curcart.getPrice());
		        Date currentDate = new Date(System.currentTimeMillis());   
		        neworder.setStarttime(currentDate);
		        neworder.setState(0);
		        neworder.setUserid(user.getUserid());
		        neworder.setUsername(user.getUsername());
		        Book saleBook=this.bookService.findBookById(curcart.getBookid());
		        if(saleBook.getSum()>=curcart.getSum())
		        {
		        	saleBook.setSellsum(saleBook.getSellsum()+curcart.getSum());
		        	saleBook.setSum(saleBook.getSum()-curcart.getSum());
		        	this.bookService.updateBook(saleBook);
		        	orderService.saveOrder(neworder);
		        	message="下单成功！";
		        }
		        else
		        {
		        	message="没有足够的图书";
		        	return "addfail";
		        }
			}
			return SUCCESS;
		}
	}
	public String simple(){
		HttpServletRequest request = ServletActionContext.getRequest();
		HttpSession session = request.getSession();
		User user=(User)session.getAttribute("user");
		Order neworder=new Order();
		Book saleBook=this.bookService.findBookById(this.order.getBookid());
        neworder.setAddressid(this.order.getAddressid());
        neworder.setBookid(this.order.getBookid());
        neworder.setBookname(saleBook.getName());
        neworder.setMessage(this.order.getMessage());
        neworder.setNum(this.order.getNum());
        neworder.setPrice(saleBook.getPrice());
        Date currentDate = new Date(System.currentTimeMillis());   
        neworder.setStarttime(currentDate);
        neworder.setState(0);
        neworder.setUserid(user.getUserid());
        neworder.setUsername(user.getUsername());
        if(saleBook.getSum()>=this.order.getNum())
        {
        	saleBook.setSellsum(saleBook.getSellsum()+this.order.getNum());
        	saleBook.setSum(saleBook.getSum()-this.order.getNum());
        	this.bookService.updateBook(saleBook);
        	orderService.saveOrder(neworder);
        	message="下单成功!";
        }
        else
        {
        	message="没有足够的图书";
        	return "addfail";
        }
		return "simplesuc";
	}
}