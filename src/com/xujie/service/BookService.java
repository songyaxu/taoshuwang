package com.xujie.service;
import java.util.List;

import com.xujie.entity.Book;
public interface BookService {
	public void saveBook(Book book);
	public List<Book> findAllBook();			
	public void removeBook(Book book);
	public void updateBook(Book book);	
	public Book findBookById(Integer id);	
	public List<Book> findBookByKeyword(String keyword);
	public List<Book> findBookByType(String booktype);
	public List<Book> findbookByType2(String bookstyle);
	public List<Book> findBookBySales();
	public List<Book> findBookByTime();
}
