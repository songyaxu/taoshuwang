package com.xujie.service.impl;
import java.util.List;

import com.xujie.dao.BookDAO;
import com.xujie.entity.Book;
import com.xujie.service.BookService;
public class BookServiceImpl implements BookService {
	private BookDAO bookDao;
	public BookDAO getBookDao() {
		return bookDao;
	}
	public void setBookDao(BookDAO bookDao) {
		this.bookDao = bookDao;
	}
	public List<Book> findAllBook() {
		return this.bookDao.findAllBook();
	}
	public Book findBookById(Integer id) {
		return this.bookDao.findBookById(id);
	}
	public void removeBook(Book book) {
		this.bookDao.removeBook(book);
	}
	public void saveBook(Book book) {
		this.bookDao.saveBook(book);
	}
	public void updateBook(Book book) {
		this.bookDao.updateBook(book);
	}
	public List<Book> findBookByKeyword(String keyword){
		return this.bookDao.findBookByKeyword(keyword);
	}
	public List<Book> findBookByType(String booktype){
		return this.bookDao.findBookByType(booktype);
	}
	public List<Book> findbookByType2(String bookstyle){
		return this.bookDao.findbookByType2(bookstyle);
	}
	public List<Book> findBookBySales(){
		return this.bookDao.findBookBySales();
	}
	public List<Book> findBookByTime(){
		return this.bookDao.findBookByTime();
	}
}
