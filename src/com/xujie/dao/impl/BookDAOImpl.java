package com.xujie.dao.impl;
import java.util.List;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.xujie.dao.BookDAO;
import com.xujie.entity.Book;
public class BookDAOImpl extends HibernateDaoSupport implements BookDAO {
	@SuppressWarnings("unchecked")
	public List<Book> findAllBook() {
		String hql = "from Book book order by book.bookid desc";
		return (List<Book>) this.getHibernateTemplate().find(hql);
	}
	public Book findBookById(Integer id) {
		return (Book) this.getHibernateTemplate().get(Book.class, id);
	}
	public void removeBook(Book book) {
		this.getHibernateTemplate().delete(book);
	}
	public void saveBook(Book book) {
		this.getHibernateTemplate().save(book);
	}
	public void updateBook(Book book) {
		this.getHibernateTemplate().update(book);
	}
	@SuppressWarnings("unchecked")
	public List<Book> findBookByKeyword(String keyword){
		String hql="from Book book where book.name like '%"+keyword+"%'";
		return (List<Book>) this.getHibernateTemplate().find(hql);
	}
	@SuppressWarnings("unchecked")
	public List<Book> findBookByType(String booktype){
		String hql="from Book book where book.type2 like '%"+booktype+"%'";
		System.out.println("boodaoimpl"+booktype);
		return (List<Book>) this.getHibernateTemplate().find(hql);
	}
	@SuppressWarnings("unchecked")
	public List<Book> findbookByType2(String bookstyle){
		String hql="from Book book where book.type like '%"+bookstyle+"%'";
		return (List<Book>) this.getHibernateTemplate().find(hql);
	}
	@SuppressWarnings("unchecked")
	public List<Book> findBookBySales(){
		String hql="from Book book order by book.sellsum desc";
		return (List<Book>) this.getHibernateTemplate().find(hql);
	}
	@SuppressWarnings("unchecked")
	public List<Book> findBookByTime(){
		String hql="from Book book order by book.pubdate desc";
		return (List<Book>) this.getHibernateTemplate().find(hql);
	}
}
