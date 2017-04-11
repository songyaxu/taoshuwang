package com.xujie.action.book;
import com.opensymphony.xwork2.ActionSupport;
import com.xujie.entity.Book;
import com.xujie.service.BookService;
@SuppressWarnings("serial")
public class SaveBookAction extends ActionSupport {
	private Book book;
	public BookService bookService;
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
	@Override
	public String execute() throws Exception {
		this.bookService.saveBook(book);
		return SUCCESS;
	}
}
