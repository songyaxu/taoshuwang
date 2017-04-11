package com.xujie.dao.impl;
import java.util.List;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;
import com.xujie.dao.OrderDAO;
import com.xujie.entity.Order;
import com.xujie.entity.User;
public class OrderDAOImpl extends HibernateDaoSupport implements OrderDAO {
	@SuppressWarnings("unchecked")
	public List<Order> findAllOrder() {
		String hql = "from Order order order by order.orderid desc";
		return (List<Order>) this.getHibernateTemplate().find(hql);
	}
	public Order findOrderById(Integer id) {
		return (Order) this.getHibernateTemplate().get(Order.class, id);
	}
	public void removeOrder(Order order) {
		this.getHibernateTemplate().delete(order);
	}
	public void saveOrder(Order order) {
		this.getHibernateTemplate().save(order);
	}
	public void updateOrder(Order order) {
		this.getHibernateTemplate().update(order);
	}
	@SuppressWarnings("unchecked")
	public List<Order> getUserOrder(User user) {
		String hql = "from Order ord where ord.userid='" + user.getUserid()
				+ "'";
		return (List<Order>) this.getHibernateTemplate().find(hql);
	}
	@SuppressWarnings("unchecked")
	public List<Order> findOrderByState(int state) {
		String hql = "from Order ord where ord.state='" + state+ "'";
		return (List<Order>) this.getHibernateTemplate().find(hql); 
	}
	@SuppressWarnings("unchecked")
	public Order findOrderByUseridAndBookid(int userid, int bookid) {
		String hql = "from Order ord where ord.userid=" + userid
				+ " and ord.bookid=" + bookid + "";
		List<Order> orders = (List<Order>) this.getHibernateTemplate()
				.find(hql);
		return orders == null ? null : orders.get(0);
	}
}
