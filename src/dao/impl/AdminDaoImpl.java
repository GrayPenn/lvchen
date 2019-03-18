package dao.impl;

import java.sql.ResultSet;
import java.sql.SQLException;

import util.DBUtil;
import dao.AdminDao;
import entity.Admin;

public class AdminDaoImpl implements AdminDao{
	DBUtil db=new DBUtil();
	public Admin checkLogin(String aname, String apwd) { //查询数据库，判断管理员账号密码
		// TODO Auto-generated method stub
		Admin admin=null;
		ResultSet rs=db.query("select * from T_ADMIN where A_NAME =? and A_PWD =? ",aname,apwd);
		try {
			if(rs.next()){
				int id=rs.getInt("a_id");
				String adname=rs.getString("A_NAME");
				String adpwd=rs.getString("A_PWD");
				admin=new Admin(id,adname,adpwd);
				System.out.println(id);
				System.out.println(admin);
				System.out.println(adpwd);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			db.closeAll();
		}
		return admin;
	}
//	public static void main(String[] args) {
//		AdminDaoImpl a=new AdminDaoImpl();
//		a.checkLogin("admin", "admin");
//	}
}
