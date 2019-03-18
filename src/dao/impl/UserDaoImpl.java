package dao.impl;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import util.DBUtil;
import dao.UserDao;
import entity.Comment;
import entity.User;

public class UserDaoImpl implements UserDao {
	DBUtil db = new DBUtil();
	
	//用户注册
	@Override
	public User checkReg(String uname, String upwd, String uphone) {
		// TODO Auto-generated method stub
		
		db.update("insert into t_user(u_name,u_pwd,u_phone) values(?,?,?)", uname,upwd,uphone);
		
		
		return null;
	}
	//用户登录
	@Override
	public User checkLogin(String uname, String upwd) {
		// TODO Auto-generated method stub
		
		ResultSet rs = db.query(
				"SELECT * FROM t_user where u_name=? and u_pwd=?", uname.trim(),
				upwd.trim());
		
		User user = null;
		try {

			if (rs.next()) {
				//String u_id = rs.getString("u_id");
				String u_name = rs.getString("u_name");
				String u_pwd = rs.getString("u_pwd");
				String u_icon = rs.getString("u_icon");
				user = new User(u_name, u_pwd,u_icon);

			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				db.closeAll();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}

		return user;
	}
	@Override
	public User personalDate(String uname) {
		// TODO Auto-generated method stub
		ResultSet rs = db.query("SELECT * FROM t_user where u_name=? ", uname);
		User user = null;
		
		try {
			if(rs.next()){
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
				 
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			try {
				db.closeAll();
			} catch (Exception e2) {
				// TODO: handle exception
				e2.printStackTrace();
			}
		}
		
		return user;
	}
	@Override
	public Boolean ModifyIcon(String uname,String file) {
		// TODO Auto-generated method stub
		db.update("update t_user set u_icon=? where u_name=?", file,uname);
		
		
		return true;
	}
	@Override
	public Boolean Modifybase(String uname,String usex,String uage,String uphone,String uemail,String ucity,String uaddr,String uaccount) {
		// TODO Auto-generated method stub
		db.update("update t_user set  u_sex=?, u_age=?, u_phone=?, u_email=?, u_city=?, u_addr=?, u_account=? where u_name=?",  usex, uage, uphone, uemail, ucity, uaddr, uaccount,uname);
		 
		
		return true;
	}
	@Override
	public List<User> getuser() {
		List<User>list=new ArrayList<User>();
		String sql="select * from t_user";
		ResultSet rs=db.query(sql);
		try {
			while(rs.next()){
				User u=new User(rs.getInt("u_id"),rs.getString("u_name"));
				list.add(u);
			}
			
		} catch (Exception e) {
			e.printStackTrace();}
		
		finally{
			try {
				db.closeAll();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return list;
	}

	@Override
	public Boolean MofifyPwd(String uname, String upwd) {
		// TODO Auto-generated method stub
		db.update("update t_user set u_pwd=? where u_name=?", upwd,uname);
		
		return true;
	}

	@Override
	public User getname(int uid) {
		ResultSet rs=db.query("select * from t_user where u_id=?",uid);
		User u=null;
		try {
			if(rs.next()){
				 int uids = rs.getInt("u_id");
				 String unames = rs.getString("u_name");
				 u=new User(uids, unames);
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
		return u;
	}
	@Override
	public Boolean CheckName(String uname) {
		ResultSet rs = db.query("select * from t_user where u_name=?", uname);
		try {
			if (!rs.next()) {
				return true;
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				db.closeAll();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return false;
	}
	@Override
	public User getMasterInfo(int hid) {
		String sql="select * from T_USER where h_id=(select h_id from t_room where r_id=?)";
		ResultSet rs=db.query(sql, hid);
		User masterinfo=null;
		try {
			
			if(rs.next()){
				masterinfo=new User(rs.getInt("u_id"),rs.getString("u_name"),rs.getString("u_pwd"),
						rs.getString("u_sex"),rs.getString("u_age"),rs.getString("u_icon"),rs.getString("u_phone"),
						rs.getString("u_email"),rs.getString("u_city"),rs.getString("u_addr"),rs.getInt("u_statu"),
						rs.getString("u_idnum"),rs.getString("u_idimg"),rs.getInt("h_id"),rs.getFloat("u_account"));
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
		
		return masterinfo;
	}
	@Override
	public Boolean CheckPwd(String uname, String pwd) {
		// TODO Auto-generated method stub
		ResultSet rs = db.query("select * from t_user where u_name=? and u_pwd=?", uname,pwd);
		try {
			if (rs.next()) {
				return true;
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				db.closeAll();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return false;
	}
	@Override
	public List<Comment> Message(String hid) {
		// TODO Auto-generated method stub
		ResultSet rs = db.query("select * from T_COMMENT where h_id=?", hid);
		List<Comment> list = new ArrayList<Comment>();
		Comment com = null;
		try {
			while (rs.next()) {
				com = new Comment(rs.getInt("c_id"),rs.getString("u_name"),rs.getInt("h_id"),rs.getInt("ex_id"),rs.getString("c_context"),rs.getString("c_time"));
				list.add(com);
			}
			

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				db.closeAll();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return list;
	}
	@Override
	public Boolean ModifyCertificate(String uname, String uidnum, String file) {
		// TODO Auto-generated method stub
		db.update("update t_user set u_idnum=? , u_idimg=? where u_name=?", uidnum,file,uname);
		return true;
	}

	
	

	
	
}
