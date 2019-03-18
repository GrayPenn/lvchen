package biz;

import java.util.List;

import entity.User;

public interface HostBiz {

	public List<User> HostList(int uid,int hid);//QUERY USER和通过ID
	
	public	User HostInfo(int id);//查询房东信息

	
	 public int getHostCount();//获取总的用户数
	 
	 public List<User> getHostByPage(int page,int size);//分页功能实现

}

