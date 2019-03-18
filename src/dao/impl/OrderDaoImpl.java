package dao.impl;

import util.DBUtil;
import dao.OrderDao;
import entity.Order;

public class OrderDaoImpl implements OrderDao {
	DBUtil db = new DBUtil();

	@Override
	public boolean addOrder(Order order){
		// TODO Auto-generated method stub
		
		return db
		.update("insert into T_ORDER (h_id,host_id,o_price,o_num,o_total,o_time,o_intime,o_endtime) values(?,?,?,?,?,?,?,?)",
				order.getHid(), order.getHostid(),
				order.getOprice(), order.getOnum(),
				order.getOtotal(), order.getOtime(),
				order.getOintime(), order.getOendtime())>0;
	}

	@Override
	public int deleteOrder(int oid) {
		// TODO Auto-generated method stub
		int n = db.update("delete T_ORDER where O_ID=?", oid);
		return n;
	}

}
