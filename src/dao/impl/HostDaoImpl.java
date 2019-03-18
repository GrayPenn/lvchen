package dao.impl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import util.DBUtil;

import dao.HostDao;

import entity.User;

public class HostDaoImpl implements HostDao {
	DBUtil db=new DBUtil();
	public List<User> HostList(int  id,int hid) {

		String sql="select * from T_USER where 1=1";
		if (id != -1) {
			sql += " and U_ID=" + id;
		}
		if (hid != -1) {
			sql += " and H_ID=" + hid;
		}
		
		ResultSet rs =db.query(sql);
		
		
		List<User> list =new ArrayList<User>();
		
		try {
			while(rs.next()){
				int uid=rs.getInt("u_id");
				String uname=rs.getString("u_name");	


				String uicon=rs.getString("u_icon");
				//		    int uphone=rs.getInt("u_phone");
				//		    String uemail=rs.getString("u_email");
				//			String ucity=rs.getString("u_city");
				//		    String uaddr=rs.getString("u_addr");
				int  ustatu=rs.getInt("u_statu");
				//			String uidnum=rs.getString("u_idnum");
						String uidimg=rs.getString("u_idimg");
				int hid1=rs.getInt("h_id");
				//			float uaccount=rs.getInt("u_account");

				list.add(new User(uid,uname,uicon,ustatu,uidimg,hid1));			

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
	
	public User HostInfo(int id) {//查询具体用户信息

		String sql="select * from T_USER where u_id="+id;
		ResultSet rs =db.query(sql);
		User user =null;

		try {
			if (rs.next()){
				int uid=rs.getInt("u_id");
				String uname=rs.getString("u_name");	


				String uicon=rs.getString("u_icon");
				//		    int uphone=rs.getInt("u_phone");
				//		    String uemail=rs.getString("u_email");
				//			String ucity=rs.getString("u_city");
				//		    String uaddr=rs.getString("u_addr");
				int  ustatu=rs.getInt("u_statu");
				//			String uidnum=rs.getString("u_idnum");
				String uidimg=rs.getString("u_idimg");
				int hid=rs.getInt("h_id");
				//			float uaccount=rs.getInt("u_account");

				user =new User(uid,uname,uicon,ustatu,uidimg,hid);			

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
		return user;
	}

	@Override
	public List<User> getHostByPage(int page,int size) {
		// TODO Auto-generated method stub
		List<User> list =new ArrayList<User>();
		String sql="select * from (select t.*,rownum as snum from " +
		"(select * from t_user)t where rownum<=" +
		+(page*size)+")" + " s where s.snum> "+((page - 1) * size);
		ResultSet rs=db.query(sql);
		User user;
		try {
			while (rs.next()){
				 int u_id = rs.getInt("u_id");
				 String u_name = rs.getString("u_name"); 
				 String u_pwd = rs.getString("u_pwd");
				 String u_sex = rs.getString("u_sex"); 
				 String u_age = rs.getString("u_age"); 
				 String u_icon = rs.getString("u_icon"); 
				 String u_phone= rs.getString("u_phone");
				 String u_email = rs.getString("u_email"); 
				 String u_city = rs.getString("u_city"); 
				 String u_addr = rs.getString("u_addr");
				 int u_statu= rs.getInt("u_statu");
				 String u_idnum = rs.getString("u_idnum"); 
				 String u_idimg = rs.getString("u_idimg");
				 int h_id= rs.getInt("h_id");
				 float u_account = rs.getFloat("u_account");
				 user = new User(u_id,u_name,u_pwd,u_sex,u_age,u_icon,u_phone,u_email,u_city,u_addr,u_statu,u_idnum,u_idimg,h_id,u_account);
				  list.add(user);
			}
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
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

	@Override
	public int getHostCount() {
	
		int num =0;
		ResultSet rs=db.query("select count(*) num from t_user");
		try {
			if (rs.next()){
				num =rs.getInt("num");
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return num;
}


}


