package biz.impl;

import java.util.List;

import dao.HostDao;
import dao.impl.HostDaoImpl;
import util.DBUtil;
import biz.HostBiz;
import entity.User;

public class HostBizImpl implements HostBiz {
    HostDao hd=new HostDaoImpl();
	public List<User> HostList( int uid, int hid) {
		return hd.HostList(uid, hid);
	}//QUERY USER
	@Override
	public User HostInfo(int id) {
		// TODO Auto-generated method stub
		return hd.HostInfo(id);
	}
	@Override
	public List<User> getHostByPage(int page, int size) {
		int count=getHostCount();
		//2.��ȡ��ҳ��
		int pageCount=count%size==0?(count/size):(count/size+1);
		//3.�ݴ���
		page=page<1?1:page;  //��Сֻ���ǵ�һҳ
		
		page=page>pageCount?pageCount:page;//���ֻ������ҳ��
		//4.����Dao��ѯ���ݿ�
		
		return hd.getHostByPage(page, size);
	}
	@Override
	public int getHostCount() {
		// TODO Auto-generated method stub
		return hd.getHostCount();
	}
	
 
 

}
