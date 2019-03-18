package biz.impl;

import dao.OrderDao;
import dao.impl.OrderDaoImpl;
import entity.Order;
import biz.OrderBiz;

public class OrderBizImpl implements OrderBiz{
	OrderDao dao=new OrderDaoImpl();
	@Override
	public boolean addOrder(Order order) {
		// TODO Auto-generated method stub
		return dao.addOrder(order);
	}

	@Override
	public int deleteOrder(int oid) {
		// TODO Auto-generated method stub
		return dao.deleteOrder(oid);
	}

}
