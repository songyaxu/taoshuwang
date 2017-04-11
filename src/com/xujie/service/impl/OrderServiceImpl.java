package com.xujie.service.impl;
import java.util.List;

import com.xujie.dao.OrderDAO;
import com.xujie.entity.Order;
import com.xujie.entity.User;
import com.xujie.service.OrderService;
public class OrderServiceImpl implements OrderService {
	private OrderDAO orderDao;

	public OrderDAO getOrderDao() {
		return orderDao;
	}
	public void setOrderDao(OrderDAO orderDao) {
		this.orderDao = orderDao;
	}
	public List<Order> findAllOrder() {
		return this.orderDao.findAllOrder();
	}
	public Order findOrderById(Integer id) {
		return this.orderDao.findOrderById(id);
	}
	public void removeOrder(Order order) {
		this.orderDao.removeOrder(order);
	}
	public void saveOrder(Order order) {
		this.orderDao.saveOrder(order);
	}
	public void updateOrder(Order order) {
		this.orderDao.updateOrder(order);
	}
	public List<Order> getUserOrder(User user) {
		return this.orderDao.getUserOrder(user);
	}
	public List<Order> findOrderByState(int state){
		return this.orderDao.findOrderByState(state);
	}
	public Order findOrderByUseridAndBookid(int userid, int bookid) {
		return this.orderDao.findOrderByUseridAndBookid(userid, bookid);
	}
}
