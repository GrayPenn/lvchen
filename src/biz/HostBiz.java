package biz;

import java.util.List;

import entity.User;

public interface HostBiz {

	public List<User> HostList(int uid,int hid);//QUERY USER��ͨ��ID
	
	public	User HostInfo(int id);//��ѯ������Ϣ

	
	 public int getHostCount();//��ȡ�ܵ��û���
	 
	 public List<User> getHostByPage(int page,int size);//��ҳ����ʵ��

}

