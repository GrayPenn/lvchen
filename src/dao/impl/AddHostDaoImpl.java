package dao.impl;

import java.sql.ResultSet;

import util.DBUtil;
import dao.AddHostDao;
import entity.House;

public class AddHostDaoImpl implements AddHostDao {
	DBUtil db=new DBUtil();
	@Override
	public boolean apply(int uid, String hlocation, String hcei, String haddr,
			 int htype, int hstatu) {
		House h =null;
		int i =db.update("insert into t_house(h_location,h_addr,h_type,h_cei,h_statu,u_id) "
				+ "values(?,?,?,?,?,?)", hlocation,haddr,htype,hcei,hstatu,uid);
		
		
		return i>0;
	}

}
