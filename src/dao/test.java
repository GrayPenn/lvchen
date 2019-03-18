package dao;


import java.util.List;

import dao.impl.HostDaoImpl;
import dao.impl.HouseDaoImpl;
import entity.House;
import entity.User;


public class test {
	public static void main(String[] args) {


		//HouseDao hd= new HouseDaoImpl();
		//list<house> list=new ArrayList();
		//House house=	hd.queryHouse();
		// List<House> list = hd.checkHouse(22, 1);
		HostDao hd=new HostDaoImpl();
		User u   =hd.HostInfo(22);
		int n =hd.getHostCount();
		//System.out.println(n);
		//System.out.println(u.getUname());
		//List<User> list=hd.getHostByPage(2, 3);
		List<User> list=hd.HostList(-1,-1);
		for (User s:list){
			System.out.println(s.getUname());
			System.out.println(s.getUaddr());
			
		}
	}



}

