package dao;

import java.util.List;

import entity.User;

public interface HostDao {

	public List<User> HostList(int uid,int hid);//��ѯ���з�����Ϣ���û�ID�ͷ���id
	
	 public	User HostInfo(int uid);//��ѯ������Ϣ
	 
	 public int getHostCount();//��ȡ�ܵ��û���
	 
	 public List<User> getHostByPage(int page,int size);//��ҳ����ʵ��



	 
}
