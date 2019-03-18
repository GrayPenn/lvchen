package biz.impl;

import java.util.List;

import dao.UserDao;
import dao.impl.UserDaoImpl;
import entity.Comment;
import entity.User;
import biz.UserBiz;

public class UserBizImpl implements UserBiz {
	
	UserDao dao = new UserDaoImpl();
	
	//ÓÃ»§×¢²á
	@Override
	public User checkReg(String uname, String upwd, String uphone) {
		// TODO Auto-generated method stub
		return dao.checkReg(uname, upwd, uphone);
	}

	@Override
	public User checkLogin(String uname, String upwd) {
		// TODO Auto-generated method stub
		return dao.checkLogin(uname, upwd);
	}

	@Override
	public User personalDate(String uname) {
		// TODO Auto-generated method stub
		return dao.personalDate(uname);
	}

	@Override
	public Boolean ModifyIcon(String uname, String file) {
		// TODO Auto-generated method stub
		return dao.ModifyIcon(uname, file);
	}

	@Override
	public Boolean Modifybase(String uname, String usex, String uage,
			String uphone, String uemail, String ucity, String uaddr,
			String uaccount) {
		// TODO Auto-generated method stub
		return dao.Modifybase(uname, usex, uage, uphone, uemail, ucity, uaddr, uaccount);
	}

	@Override
	public List<User> getuser() {
		// TODO Auto-generated method stub
		return dao.getuser();
	}


	@Override
	public Boolean MofifyPwd(String uname, String upwd) {
		// TODO Auto-generated method stub
		return dao.MofifyPwd(uname, upwd);
	}


	@Override
	public User getname(int uid) {
		// TODO Auto-generated method stub
		return dao.getname(uid);
	}

	@Override
	public Boolean CheckName(String uname) {
		// TODO Auto-generated method stub
		return dao.CheckName(uname);
	}

	@Override
	public User getMasterInfo(int hid) {
		// TODO Auto-generated method stub
		return dao.getMasterInfo(hid);
	}

	@Override
	public Boolean CheckPwd(String uname, String pwd) {
		// TODO Auto-generated method stub
		return dao.CheckPwd(uname, pwd);
	}

	@Override
	public List<Comment> Message(String hid) {
		// TODO Auto-generated method stub
		return dao.Message(hid);
	}

	@Override
	public Boolean ModifyCertificate(String uname, String uidnum, String file) {
		// TODO Auto-generated method stub
		return dao.ModifyCertificate(uname, uidnum, file);
	}
	


}
