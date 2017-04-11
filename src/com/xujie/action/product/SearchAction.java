package com.xujie.action.product;

import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.xujie.entity.Book;
import com.xujie.service.BookService;

@SuppressWarnings("serial")
public class SearchAction extends ActionSupport{
	private String keyword;
	private Book book;
	private BookService bookService;
	public String getKeyword() {
		return keyword;
	}
	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}
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
		Map request = (Map)ActionContext.getContext().get("request");	
		request.put("list", this.bookService.findBookByKeyword(keyword));	
		request.put("keyword", keyword);
		return SUCCESS;
	}
}
