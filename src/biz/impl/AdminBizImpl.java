package biz.impl;

import dao.AdminDao;
import dao.impl.AdminDaoImpl;
import entity.Admin;
import biz.AdminBiz;

public class AdminBizImpl implements AdminBiz{

	public Admin checkLogin(String aname, String apwd) {
		// TODO Auto-generated method stub
		AdminDao adminDao=new AdminDaoImpl();
		Admin admin=adminDao.checkLogin(aname, apwd);
		return admin;
	}

}
