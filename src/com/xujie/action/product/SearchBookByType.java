package com.xujie.action.product;

import java.io.UnsupportedEncodingException;
import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.xujie.entity.Book;
import com.xujie.service.BookService;

@SuppressWarnings("serial")
public class SearchBookByType extends ActionSupport{
	private String booktype;
	private String style;
	private Book book;
	private BookService bookService;
	public String getBooktype(){
		return booktype;
	}
	public void setBooktype(String booktype) {
		this.booktype = booktype;
	}
	public String getStyle(){
		return style;
	}
	public void setStyle(String style) {
		this.style = style;
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
	public String execute() throws UnsupportedEncodingException{
		Map request = (Map)ActionContext.getContext().get("request");
		request.put("list", this.bookService.findBookByType(booktype));
		request.put("booktype2",booktype);
		return SUCCESS;
	}
	@SuppressWarnings({ "unchecked", "rawtypes" })
	public String findByStyle() throws UnsupportedEncodingException{
		Map request = (Map)ActionContext.getContext().get("request");
		request.put("list", this.bookService.findbookByType2(style));
		request.put("booktype2",style);
		return "findsuccess";
	}
}
