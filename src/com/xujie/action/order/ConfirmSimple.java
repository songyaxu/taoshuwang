package com.xujie.action.order;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.xujie.entity.Book;
import com.xujie.entity.User;
import com.xujie.service.AddressService;
import com.xujie.service.BookService;

@SuppressWarnings("serial")
public class ConfirmSimple extends ActionSupport{
	private Book book;
	private BookService bookService;
	private AddressService addressService;
	private String message;
	public Book getBook() {
		return book;
	}

	public void setBook(Book book) {
		this.book = book;
	}
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
	public BookService getBookService() {
		return bookService;
	}

	public void setBookService(BookService bookService) {
		this.bookService = bookService;
	}
	@SuppressWarnings({ "rawtypes", "unchecked" })
	public String execute(){
		HttpServletRequest request = ServletActionContext.getRequest();
		HttpSession session = request.getSession();
		User user=(User) session.getAttribute("user");
		Map requestList = (Map) ActionContext.getContext().get("request");
		requestList.put("addresslist", this.addressService.findAddressByUserid(user.getUserid()));
		this.book=bookService.findBookById(book.getBookid());
		return SUCCESS;
	}

}
