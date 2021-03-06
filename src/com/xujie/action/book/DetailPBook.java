package com.xujie.action.book;
import com.opensymphony.xwork2.ActionSupport;
import com.xujie.entity.Book;
import com.xujie.service.BookService;
@SuppressWarnings("serial")
public class DetailPBook extends ActionSupport {
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
	@Override
	public String execute() throws Exception {
		this.book = bookService.findBookById(book.getBookid());
		return SUCCESS;
	}
	public String detail(){
		System.out.println(book.getBookid());
		this.book = bookService.findBookById(book.getBookid());
		return "detailSuc";
	}
}