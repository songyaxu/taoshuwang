package com.xujie.action.product;

import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.xujie.entity.Book;
import com.xujie.service.BookService;

@SuppressWarnings("serial")
public class LoadProduct extends ActionSupport{
	private Book book;
	private BookService bookService;
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
	@SuppressWarnings({ "unchecked", "rawtypes"})
	public String execute(){
		Map request = (Map)ActionContext.getContext().get("request");	
		request.put("hotBook", this.bookService.findBookBySales());
		request.put("newBook", this.bookService.findBookByTime());
		return SUCCESS;
	}
}
