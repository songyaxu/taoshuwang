package com.xujie.action.cart;

import java.util.Iterator;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;
import com.xujie.entity.Book;
import com.xujie.entity.Cart;
import com.xujie.service.BookService;

@SuppressWarnings("serial")
public class RemoveFromCart extends ActionSupport{
	private Book book;
	private BookService bookService;
	private String message;
	public Book getBook() {
		return book;
	}
	public void setBook(Book book) {
		this.book = book;
	}
	public BookService getBookService() {
		return bookService;
	}
	public void setBookService(BookService bookService) {
		this.bookService = bookService;
	}
	@SuppressWarnings({ "rawtypes", "unchecked" })
	public String execute(){
		Cart removecart=new Cart();
		HttpServletRequest request = ServletActionContext.getRequest();
		HttpSession session = request.getSession();
		List<Cart> cartlist=(List<Cart>)session.getAttribute("cart");
		if(cartlist!=null)
		{
			for(Iterator it = cartlist.iterator();it.hasNext(); ){
		        Cart curcart = (Cart)it.next();
		        if(curcart.getBookid()==this.book.getBookid())
		        {
		        	removecart=curcart;
		        	cartlist.remove(removecart);
		        	break;
		        }
			}
			session.setAttribute("cart",cartlist);
			return SUCCESS;
		}
		else
		{
			message="删除失败出现问题！";
			return ERROR;
		}
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
}
