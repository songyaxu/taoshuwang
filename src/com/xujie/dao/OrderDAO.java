package com.xujie.dao;
import java.util.List;

import com.xujie.entity.Order;
import com.xujie.entity.User;
public interface OrderDAO {
	public void saveOrder(Order order);
	public List<Order> findAllOrder();
	public List<Order> findOrderByState(int state);
	public void removeOrder(Order order);
	public void updateOrder(Order order);
	public Order findOrderById(Integer id);
	public List<Order> getUserOrder(User user);
	public Order findOrderByUseridAndBookid(int userid, int bookid);
}
