package com.xujie.action.book;
import java.util.Map;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.xujie.service.BookService;
@SuppressWarnings("serial")
public class ListBookAction extends ActionSupport {
	private BookService bookService;	
	public BookService getBookService() {
		return bookService;
	}
	public void setBookService(BookService bookService) {
		this.bookService = bookService;
	}
	@SuppressWarnings({ "unchecked", "rawtypes" })
	@Override
	public String execute() throws Exception {
		Map request = (Map)ActionContext.getContext().get("request");	
		request.put("list", this.bookService.findAllBook());		
		return SUCCESS;
	}
}