package dao.impl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;

import util.DBUtil;
import dao.xinxidao;
import entity.xinxi;


public class xinxidaoimpl implements xinxidao{
	DBUtil db=new DBUtil();
	
public xinxi getxinxi(int x_id) {
	xinxi x=null;
	ResultSet rs=db.query("select * from t_xinxi where x_id=?",x_id);
	try {
		if(rs.next()){
			x=new xinxi(rs.getInt("x_id"),rs.getInt("x_price"),rs.getString("x_name"),rs.getInt("x_sfz"),rs.getInt("x_phone"));
		}		
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	finally{
		try {
			db.closeAll();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	return x;
}

	public boolean save(xinxi x) {
		String sql = "insert into t_xinxi(x_name,x_sfz,x_price,x_phone)"
				+ " values(?,?,?,?)";
		return db.update(sql, x.getX_name(), x.getX_sfz(),x.getX_price(), x
				.getX_phone())> 0;

}

	public List<xinxi> getxinxi() {
		List<xinxi> list =new ArrayList<xinxi>();
		String sql="select x_name,x_sfz,x_price, x_phone from t_xinxi";
		ResultSet rs=db.query(sql);
		try {
			while(rs.next()){
				xinxi x=new xinxi();
				x.setX_name(rs.getString("x_name"));
				x.setX_sfz(rs.getInt("x_sfz"));
				x.setX_phone(rs.getInt("x_phone"));
				x.setX_sfz(rs.getInt("x_price"));
				list.add(x);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			try {
				db.closeAll();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return list;
	}
}
