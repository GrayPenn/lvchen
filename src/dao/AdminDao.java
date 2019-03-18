package dao;

import entity.Admin;

public interface AdminDao {
	public Admin checkLogin(String aname,String apwd);
}
