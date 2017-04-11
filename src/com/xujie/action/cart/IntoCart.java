package com.xujie.action.cart;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.apache.struts2.ServletActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.xujie.entity.Book;
import com.xujie.entity.Cart;
import com.xujie.service.BookService;

@SuppressWarnings("serial")
public class IntoCart extends ActionSupport{
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
	@SuppressWarnings("unchecked")
	public String execute(){
		Cart cart=new Cart();
		System.out.println("加入购物车成功！");
		System.out.println(book.getBookid());
		Book newbook=this.bookService.findBookById(book.getBookid());
		cart.setAuthor(newbook.getAuthor());
		cart.setBookid(newbook.getBookid());
		cart.setBookname(newbook.getName());
		cart.setImage(newbook.getCover());
		cart.setPrice(newbook.getPrice());
		cart.setSum(1);
		HttpServletRequest request = ServletActionContext.getRequest();
		HttpSession session = request.getSession();
		List<Cart> cartlist=(List<Cart>)session.getAttribute("cart");
		if(cartlist==null)
		{
			cartlist= new ArrayList<Cart>();
			cartlist.add(cart);
		}
		else
			cartlist.add(cart);
		session.setAttribute("cart",cartlist);
		return SUCCESS;
	}

}
